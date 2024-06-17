.class public abstract Landroidx/media3/datasource/BaseDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field public dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final isNetwork:Z

.field public listenerCount:I

.field public final listeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    :cond_0
    return-void
.end method

.method public final bytesTransferred(I)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/TransferListener;

    iget-boolean v4, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    check-cast v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter v3

    :try_start_0
    sget-object v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/RegularImmutableList;

    if-eqz v4, :cond_1

    iget v4, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    iget-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_3
    return-void
.end method

.method public final transferEnded()V
    .locals 14

    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/datasource/TransferListener;

    iget-boolean v4, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    check-cast v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter v3

    :try_start_0
    sget-object v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/RegularImmutableList;

    const/4 v11, 0x1

    if-eqz v4, :cond_1

    iget v4, v0, Landroidx/media3/datasource/DataSpec;->flags:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    move v4, v11

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-nez v4, :cond_1

    move v4, v11

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    iget v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-lez v4, :cond_3

    move v4, v11

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Landroidx/media3/common/util/Clock;

    check-cast v4, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    sub-long v4, v12, v4

    long-to-int v10, v4

    iget-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    int-to-long v6, v10

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    iget-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    if-lez v10, :cond_6

    long-to-float v4, v6

    const/high16 v5, 0x45fa0000    # 8000.0f

    mul-float/2addr v4, v5

    int-to-float v5, v10

    div-float/2addr v4, v5

    iget-object v5, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v4, v6}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->addSample(FI)V

    iget-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalElapsedTimeMs:J

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    iget-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->totalBytesTransferred:J

    const-wide/32 v6, 0x80000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    :cond_4
    iget-object v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->slidingPercentile:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->getPercentile()F

    move-result v4

    float-to-long v4, v4

    iput-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    :cond_5
    iget-wide v6, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->bitrateEstimate:J

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->maybeNotifyBandwidthSample(JJI)V

    iput-wide v12, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleBytesTransferred:J

    :cond_6
    iget v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    sub-int/2addr v4, v11

    iput v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    return-void
.end method

.method public final transferInitializing()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/TransferListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final transferStarted(Landroidx/media3/datasource/DataSpec;)V
    .locals 7

    iput-object p1, p0, Landroidx/media3/datasource/BaseDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/media3/datasource/BaseDataSource;->listenerCount:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Landroidx/media3/datasource/BaseDataSource;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/datasource/TransferListener;

    iget-boolean v3, p0, Landroidx/media3/datasource/BaseDataSource;->isNetwork:Z

    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter v2

    :try_start_0
    sget-object v4, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/RegularImmutableList;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget v3, p1, Landroidx/media3/datasource/DataSpec;->flags:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    if-nez v3, :cond_1

    move v3, v4

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    iget v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    if-nez v3, :cond_3

    iget-object v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->clock:Landroidx/media3/common/util/Clock;

    check-cast v3, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->sampleStartTimeMs:J

    :cond_3
    iget v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I

    add-int/2addr v3, v4

    iput v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->streamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_4
    return-void
.end method
