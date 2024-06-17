.class public final synthetic Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    return-void
.end method


# virtual methods
.method public final onNetworkTypeChanged(I)V
    .locals 9

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->resetOnNetworkTypeChange:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->networkType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->getInitialBitrateEstimateForNetworkType(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Landroidx/media3/common/util/Clock;

    check-cast p1, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget p1, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    const/4 v8, 0x0

    if-lez p1, :cond_3

    iget-wide v0, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v0, v6, v0

    long-to-int p1, v0

    move v5, p1

    goto :goto_0

    :cond_3
    move v5, v8

    :goto_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(JJI)V

    iput-wide v6, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->currentSortOrder:I

    iput v8, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->nextSampleIndex:I

    iput v8, p1, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->totalWeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
