.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# instance fields
.field public final synthetic this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

.field public final track:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    aget-object p0, v1, p0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->isReady(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybeThrowError()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    aget-object p0, v1, p0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p0

    :cond_1
    :goto_0
    iget-object p0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadErrorHandlingPolicy:Lkotlin/UInt$Companion;

    iget v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->dataType:I

    invoke-virtual {p0, v1}, Lkotlin/UInt$Companion;->getMinimumLoadableRetryCount(I)I

    move-result p0

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loader:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v1, :cond_5

    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v0, :cond_4

    const/high16 v1, -0x80000000

    if-ne p0, v1, :cond_2

    iget p0, v0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v1, :cond_4

    iget v0, v0, Landroidx/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    if-gt v0, p0, :cond_3

    goto :goto_1

    :cond_3
    throw v1

    :cond_4
    :goto_1
    return-void

    :cond_5
    throw v1
.end method

.method public final readData(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v4

    const/4 v5, -0x3

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    iget-object v4, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v4, v4, v0

    iget-boolean v6, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v7, p3, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    iget-object v10, v4, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    monitor-enter v4

    :try_start_0
    iput-boolean v8, v2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    iget v11, v4, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v12, v4, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-eq v11, v12, :cond_2

    move v12, v9

    goto :goto_1

    :cond_2
    move v12, v8

    :goto_1
    const/4 v13, 0x4

    const/4 v14, -0x4

    if-nez v12, :cond_6

    if-nez v6, :cond_5

    iget-boolean v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz v6, :cond_8

    if-nez v7, :cond_4

    iget-object v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq v6, v7, :cond_8

    :cond_4
    invoke-virtual {v4, v6, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->onFormatResult(Landroidx/media3/common/Format;Lcom/airbnb/lottie/model/MutablePair;)V

    goto :goto_5

    :cond_5
    :goto_2
    iput v13, v2, Landroidx/media3/decoder/Buffer;->flags:I

    goto :goto_3

    :cond_6
    iget-object v12, v4, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    iget v15, v4, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v15, v11

    invoke-virtual {v12, v15}, Lcom/adobe/xmp/impl/ByteBuffer;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v11, v11, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    if-nez v7, :cond_d

    iget-object v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq v11, v7, :cond_7

    goto :goto_4

    :cond_7
    iget v1, v4, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result v7

    if-nez v7, :cond_9

    iput-boolean v9, v2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit v4

    move v1, v5

    goto :goto_6

    :cond_9
    :try_start_1
    iget-object v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v7, v7, v1

    iput v7, v2, Landroidx/media3/decoder/Buffer;->flags:I

    iget v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v11, v4, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v11, v9

    if-ne v7, v11, :cond_b

    if-nez v6, :cond_a

    iget-boolean v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v6, :cond_b

    :cond_a
    const/high16 v6, 0x20000000

    invoke-virtual {v2, v6}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    :cond_b
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v6, v6, v1

    iput-wide v6, v2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v11, v4, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    cmp-long v6, v6, v11

    if-gez v6, :cond_c

    const/high16 v6, -0x80000000

    invoke-virtual {v2, v6}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    :cond_c
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v6, v6, v1

    iput v6, v10, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v6, v6, v1

    iput-wide v6, v10, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    aget-object v1, v6, v1

    iput-object v1, v10, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v4

    move v1, v14

    goto :goto_6

    :cond_d
    :goto_4
    :try_start_2
    invoke-virtual {v4, v11, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->onFormatResult(Landroidx/media3/common/Format;Lcom/airbnb/lottie/model/MutablePair;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    monitor-exit v4

    const/4 v1, -0x5

    :goto_6
    if-ne v1, v14, :cond_11

    invoke-virtual {v2, v13}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v6

    if-nez v6, :cond_11

    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_e

    move v8, v9

    :cond_e
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_10

    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    iget-object v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    if-eqz v8, :cond_f

    iget-object v10, v6, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v6, v6, Lcom/google/zxing/Result;->rawBytes:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v10, v2, v7, v6}, Lcom/google/zxing/Result;->readSampleData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    goto :goto_7

    :cond_f
    iget-object v10, v6, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v11, v6, Lcom/google/zxing/Result;->rawBytes:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v10, v2, v7, v11}, Lcom/google/zxing/Result;->readSampleData(Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v2

    iput-object v2, v6, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    :cond_10
    :goto_7
    if-nez v8, :cond_11

    iget v2, v4, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v2, v9

    iput v2, v4, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    :cond_11
    if-ne v1, v5, :cond_12

    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_12
    move v5, v1

    :goto_8
    return v5

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final skipData(J)I
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->suppressRead()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeNotifyDownstreamFormat(I)V

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->sampleQueues:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v1, v1, p0

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->loadingFinished:Z

    monitor-enter v1

    :try_start_0
    iget v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v4

    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v9, 0x1

    if-eq v5, v6, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    if-eqz v7, :cond_4

    iget-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v7, v7, v4

    cmp-long v7, p1, v7

    if-gez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v7, p1, v7

    if-lez v7, :cond_3

    if-eqz v3, :cond_3

    sub-int/2addr v6, v5

    monitor-exit v1

    goto :goto_3

    :cond_3
    sub-int v5, v6, v5

    const/4 v8, 0x1

    move-object v3, v1

    move-wide v6, p1

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    const/4 p1, -0x1

    if-ne v6, p1, :cond_5

    goto :goto_2

    :cond_4
    :goto_1
    monitor-exit v1

    :goto_2
    move v6, v2

    :cond_5
    :goto_3
    monitor-enter v1

    if-ltz v6, :cond_6

    :try_start_2
    iget p1, v1, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p1, v6

    iget p2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-gt p1, p2, :cond_6

    move v2, v9

    :cond_6
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget p1, v1, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p1, v6

    iput p1, v1, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-nez v6, :cond_7

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeStartDeferredRetry(I)V

    :cond_7
    move v2, v6

    :goto_4
    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method
