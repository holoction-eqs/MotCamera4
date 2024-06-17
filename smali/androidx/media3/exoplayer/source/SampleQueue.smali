.class public final Landroidx/media3/exoplayer/source/SampleQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# instance fields
.field public absoluteFirstIndex:I

.field public capacity:I

.field public cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

.field public currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field public downstreamFormat:Landroidx/media3/common/Format;

.field public final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

.field public flags:[I

.field public isLastSampleQueued:Z

.field public largestDiscardedTimestampUs:J

.field public largestQueuedTimestampUs:J

.field public length:I

.field public loggedUnexpectedNonSyncSample:Z

.field public offsets:[J

.field public readPosition:I

.field public relativeFirstIndex:I

.field public final sampleDataQueue:Lcom/google/zxing/Result;

.field public final sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

.field public sizes:[I

.field public sourceIds:[J

.field public startTimeUs:J

.field public timesUs:[J

.field public upstreamAllSamplesAreSyncSamples:Z

.field public upstreamFormat:Landroidx/media3/common/Format;

.field public upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

.field public upstreamFormatRequired:Z

.field public upstreamKeyframeRequired:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance p2, Lcom/google/zxing/Result;

    invoke-direct {p2, p1}, Lcom/google/zxing/Result;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    new-instance p1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    const/16 p1, 0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    new-instance p1, Lcom/adobe/xmp/impl/ByteBuffer;

    new-instance p2, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p1, p2}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    return-void
.end method


# virtual methods
.method public final discardSamples(I)J
    .locals 5

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    const/4 p1, 0x0

    if-gez v1, :cond_1

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v2, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_3

    iget-object v2, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-object v2, v1, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/util/Consumer;

    iget-object v4, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    iget p1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    if-nez p1, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    :cond_4
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final discardToEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/Result;->discardDownstreamTo(J)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final findSampleBefore(IIJZ)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v3, v3, p1

    cmp-long v5, v3, p3

    if-gtz v5, :cond_4

    if-eqz p5, :cond_0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v5, v5, p1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_0
    cmp-long v0, v3, p3

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, v3, :cond_3

    move p1, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public final format(Landroidx/media3/common/Format;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-static {p1, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v1, v1, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ByteBuffer;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/ByteBuffer;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, p1}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move v0, v2

    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    check-cast p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->handler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->maybeFinishPrepareRunnable:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getLargestTimestamp(I)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final getRelativeIndex(I)I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method public final declared-synchronized isReady(Z)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    monitor-exit p0

    return v2

    :cond_3
    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/adobe/xmp/impl/ByteBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v2

    :cond_4
    :try_start_2
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final mayReadSample(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->playClearSamplesWithoutKeys()Z

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

.method public final onFormatResult(Landroidx/media3/common/Format;Lcom/airbnb/lottie/model/MutablePair;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Landroidx/media3/common/Format;)I

    move-result v4

    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput v4, v5, Landroidx/media3/common/Format$Builder;->cryptoType:I

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p1

    :goto_2
    iput-object v4, p2, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v4, p2, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v3, v1, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object p1, p2, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_5
    return-void
.end method

.method public final reset(Z)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    iget-object v1, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v2, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/upstream/Allocation;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v2

    move-object v5, v1

    :goto_0
    if-eqz v5, :cond_3

    :try_start_0
    iget-object v6, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableAllocations:[Landroidx/media3/exoplayer/upstream/Allocation;

    iget v7, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->availableCount:I

    iget-object v8, v5, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v8, Landroidx/media3/exoplayer/upstream/Allocation;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v8, v6, v7

    iget v6, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    add-int/2addr v6, v3

    iput v6, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget-object v5, v5, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/exoplayer/upstream/Allocation;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    check-cast v5, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    goto :goto_0

    :cond_2
    :goto_1
    move-object v5, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iput-object v4, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    :goto_2
    iget-object v1, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget v2, v0, Lcom/google/zxing/Result;->numBits:I

    iget-object v5, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v5, Landroidx/media3/exoplayer/upstream/Allocation;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    int-to-long v10, v2

    add-long/2addr v10, v8

    iput-wide v10, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    iget-object v1, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iput-object v1, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iput-wide v8, v0, Lcom/google/zxing/Result;->timestamp:J

    iget-object v0, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trim()V

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    :goto_4
    iget-object v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_5

    iget-object v1, v0, Lcom/adobe/xmp/impl/ByteBuffer;->encoding:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/util/Consumer;

    iget-object v2, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    iput v3, v0, Lcom/adobe/xmp/impl/ByteBuffer;->length:I

    iget-object v0, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_6

    iput-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZ)I
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    invoke-virtual {p0, p2}, Lcom/google/zxing/Result;->preAppend(I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v2, v2, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-wide v3, p0, Lcom/google/zxing/Result;->timestamp:J

    .line 3
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    check-cast v1, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v1, v1, Landroidx/media3/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v0, v1

    .line 4
    invoke-interface {p1, v2, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 5
    :cond_1
    iget-wide p2, p0, Lcom/google/zxing/Result;->timestamp:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/zxing/Result;->timestamp:J

    iget-object v0, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-wide v1, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_2

    iget-object p2, v0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast p2, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iput-object p2, p0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    :cond_2
    :goto_0
    return p1
.end method

.method public final sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    if-lez p1, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/zxing/Result;->preAppend(I)I

    move-result v1

    .line 8
    iget-object v2, v0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-object v3, v2, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v4, v4, Landroidx/media3/exoplayer/upstream/Allocation;->data:[B

    iget-wide v5, v0, Lcom/google/zxing/Result;->timestamp:J

    .line 9
    iget-wide v7, v2, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    sub-long/2addr v5, v7

    long-to-int v2, v5

    check-cast v3, Landroidx/media3/exoplayer/upstream/Allocation;

    iget v3, v3, Landroidx/media3/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v2, v3

    .line 10
    invoke-virtual {p2, v2, v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    sub-int/2addr p1, v1

    .line 11
    iget-wide v2, v0, Lcom/google/zxing/Result;->timestamp:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/zxing/Result;->timestamp:J

    iget-object v1, v0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iget-wide v4, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v1, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iput-object v1, v0, Lcom/google/zxing/Result;->resultMetadata:Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p4

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget-boolean v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v6, :cond_2

    if-nez v5, :cond_1

    return-void

    :cond_1
    iput-boolean v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    :cond_2
    const-wide/16 v5, 0x0

    add-long v7, p1, v5

    iget-boolean v9, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    if-eqz v9, :cond_5

    iget-wide v9, v1, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_3

    return-void

    :cond_3
    if-nez v2, :cond_5

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v2, :cond_4

    const-string v2, "SampleQueue"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v1, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    :cond_4
    or-int/lit8 v2, p3, 0x1

    goto :goto_1

    :cond_5
    move/from16 v2, p3

    :goto_1
    iget-object v9, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    iget-wide v9, v9, Lcom/google/zxing/Result;->timestamp:J

    int-to-long v11, v0

    sub-long/2addr v9, v11

    move/from16 v11, p5

    int-to-long v11, v11

    sub-long/2addr v9, v11

    monitor-enter p0

    :try_start_0
    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-lez v11, :cond_7

    sub-int/2addr v11, v3

    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v11

    iget-object v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aget-wide v12, v12, v11

    iget-object v14, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v11, v14, v11

    int-to-long v14, v11

    add-long/2addr v12, v14

    cmp-long v11, v12, v9

    if-gtz v11, :cond_6

    move v11, v3

    goto :goto_2

    :cond_6
    move v11, v4

    :goto_2
    invoke-static {v11}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    :cond_7
    const/high16 v11, 0x20000000

    and-int/2addr v11, v2

    if-eqz v11, :cond_8

    move v11, v3

    goto :goto_3

    :cond_8
    move v11, v4

    :goto_3
    iput-boolean v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v11

    iget-object v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aput-wide v7, v12, v11

    iget-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    aput-wide v9, v7, v11

    iget-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aput v0, v7, v11

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aput v2, v0, v11

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    aput-object p6, v0, v11

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    aput-wide v5, v0, v11

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v0, v0, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_4
    if-nez v0, :cond_a

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/ByteBuffer;->getEndValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v0, :cond_b

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-interface {v0, v2, v5}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->preacquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    move-result-object v0

    goto :goto_5

    :cond_b
    sget-object v0, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    :goto_5
    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Lcom/adobe/xmp/impl/ByteBuffer;

    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v5, v6

    new-instance v6, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7, v0}, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V

    invoke-virtual {v2, v5, v6}, Lcom/adobe/xmp/impl/ByteBuffer;->appendSpan(ILandroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;)V

    :cond_c
    iget v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v0, v3

    iput v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne v0, v2, :cond_d

    add-int/lit16 v0, v2, 0x3e8

    new-array v3, v0, [J

    new-array v5, v0, [J

    new-array v6, v0, [J

    new-array v7, v0, [I

    new-array v8, v0, [I

    new-array v9, v0, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr v2, v10

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    invoke-static {v11, v10, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v10, v11, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v10, v11, v7, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v10, v11, v8, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v10, v11, v9, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    invoke-static {v10, v11, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    invoke-static {v11, v4, v5, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    invoke-static {v11, v4, v6, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    invoke-static {v11, v4, v7, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    invoke-static {v11, v4, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-static {v11, v4, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    invoke-static {v11, v4, v3, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iput-object v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iput-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    iput-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    iput-object v9, v1, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object v3, v1, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iput v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iput v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Lcom/google/zxing/Result;

    iget-object v2, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    iput-object v2, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v4

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v9, 0x1

    if-eq v1, v2, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v5, v3, v4

    cmp-long v3, p1, v5

    if-ltz v3, :cond_3

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v3, p1, v5

    if-lez v3, :cond_1

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    sub-int v5, v2, v1

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v6, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v9

    :cond_3
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method
