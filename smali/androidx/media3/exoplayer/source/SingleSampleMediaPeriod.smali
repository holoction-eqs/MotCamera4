.class public final Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;


# instance fields
.field public final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final durationUs:J

.field public final eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

.field public final format:Landroidx/media3/common/Format;

.field public final loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

.field public final loader:Landroidx/media3/exoplayer/upstream/Loader;

.field public loadingFinished:Z

.field public sampleData:[B

.field public sampleSize:I

.field public final sampleStreams:Ljava/util/ArrayList;

.field public final tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public final transferListener:Landroidx/media3/datasource/TransferListener;

.field public final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/common/Format;JLkotlin/UInt$Companion;Lcom/adobe/xmp/impl/ByteBuffer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->transferListener:Landroidx/media3/datasource/TransferListener;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->format:Landroidx/media3/common/Format;

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->durationUs:J

    iput-object p7, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iput-object p8, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iput-boolean p9, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    new-instance p1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-instance p2, Landroidx/media3/common/TrackGroup;

    filled-new-array {p4}, [Landroidx/media3/common/Format;

    move-result-object p3

    const-string p4, ""

    invoke-direct {p2, p4, p3}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    filled-new-array {p2}, [Landroidx/media3/common/TrackGroup;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    return-void
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 13

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadingFinished:Z

    const/4 p2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {p2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz v0, :cond_2

    invoke-interface {p2, v0}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v0, p2, v2}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    invoke-virtual {p2, v1}, Lkotlin/UInt$Companion;->getMinimumLoadableRetryCount(I)I

    move-result p2

    invoke-virtual {p1, v0, p0, p2}, Landroidx/media3/exoplayer/upstream/Loader;->startLoading(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)J

    new-instance p1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(Landroidx/media3/datasource/DataSpec;)V

    iget-object v6, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->format:Landroidx/media3/common/Format;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Landroidx/media3/exoplayer/source/MediaLoadData;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->durationUs:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {p2, p1, v0}, Lcom/adobe/xmp/impl/ByteBuffer;->loadStarted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return v1

    :cond_3
    :goto_1
    return p2
.end method

.method public final discardBuffer(J)V
    .locals 0

    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public final getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->tracks:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 0

    return-void
.end method

.method public final onLoadCanceled(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v1, v1, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-direct {v2}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>()V

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v13, Landroidx/media3/exoplayer/source/MediaLoadData;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->durationUs:J

    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {v1, v2, v13}, Lcom/adobe/xmp/impl/ByteBuffer;->loadCanceled(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public final onLoadCompleted(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 10

    check-cast p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object p2, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-wide p2, p2, Landroidx/media3/datasource/StatsDataSource;->bytesRead:J

    long-to-int p2, p2

    iput p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleSize:I

    iget-object p2, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleData:[B

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadingFinished:Z

    new-instance p2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object p1, p1, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-direct {p2}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>()V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->format:Landroidx/media3/common/Format;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p3, Landroidx/media3/exoplayer/source/MediaLoadData;

    const-wide/16 p4, 0x0

    invoke-static {p4, p5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    iget-wide p4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->durationUs:J

    invoke-static {p4, p5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    move-object v0, p3

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    invoke-virtual {p1, p2, p3}, Lcom/adobe/xmp/impl/ByteBuffer;->loadCompleted(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public final onLoadError(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 12

    move-object v0, p0

    move-object/from16 v7, p6

    move/from16 v1, p7

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, v2, Landroidx/media3/datasource/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    invoke-direct {v3}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>()V

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->durationUs:J

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    iget-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v7, Landroidx/media3/common/ParserException;

    const/4 v5, 0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v4, :cond_3

    instance-of v4, v7, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_3

    instance-of v4, v7, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v4, :cond_3

    instance-of v4, v7, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    if-nez v4, :cond_3

    sget v4, Landroidx/media3/datasource/DataSourceException;->$r8$clinit:I

    move-object v4, v7

    :goto_0
    if-eqz v4, :cond_1

    instance-of v10, v4, Landroidx/media3/datasource/DataSourceException;

    if-eqz v10, :cond_0

    move-object v10, v4

    check-cast v10, Landroidx/media3/datasource/DataSourceException;

    iget v10, v10, Landroidx/media3/datasource/DataSourceException;->reason:I

    const/16 v11, 0x7d8

    if-ne v10, v11, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v1, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v10, 0x1388

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v10, v4

    goto :goto_3

    :cond_3
    :goto_2
    move-wide v10, v8

    :goto_3
    cmp-long v4, v10, v8

    if-eqz v4, :cond_5

    invoke-virtual {v2, v5}, Lkotlin/UInt$Companion;->getMinimumLoadableRetryCount(I)I

    move-result v2

    if-lt v1, v2, :cond_4

    goto :goto_4

    :cond_4
    move v1, v6

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v5

    :goto_5
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    const-string v1, "SingleSampleMediaPeriod"

    const-string v2, "Loading failed, treating as end-of-stream."

    invoke-static {v1, v2, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v5, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->loadingFinished:Z

    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_6

    :cond_6
    if-eqz v4, :cond_7

    new-instance v1, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v1, v6, v10, v11}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    goto :goto_6

    :cond_7
    sget-object v1, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    :goto_6
    move-object v9, v1

    iget v1, v9, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    if-eqz v1, :cond_8

    if-ne v1, v5, :cond_9

    :cond_8
    move v6, v5

    :cond_9
    xor-int/lit8 v8, v6, 0x1

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->eventDispatcher:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->format:Landroidx/media3/common/Format;

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->durationUs:J

    const-wide/16 v10, 0x0

    move-object v0, v1

    move-object v1, v3

    move-wide v3, v10

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/adobe/xmp/impl/ByteBuffer;->loadError(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/common/Format;JJLjava/io/IOException;Z)V

    return-object v9
.end method

.method public final prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public final seekToUs(J)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;

    iget v2, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;->streamState:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public final selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p3, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    aput-object v1, p3, v0

    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-wide p5
.end method
