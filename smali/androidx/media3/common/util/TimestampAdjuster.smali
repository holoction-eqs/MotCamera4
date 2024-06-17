.class public final Landroidx/media3/common/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public firstSampleTimestampUs:J

.field public lastUnadjustedTimestampUs:J

.field public final nextSampleTimestampUs:Ljava/lang/ThreadLocal;

.field public timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized adjustSampleTimestamp(J)J
    .locals 4

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    monitor-exit p0

    if-nez v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    iget-object v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_2
    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr p1, v0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized adjustTsTimestamp(J)J
    .locals 12

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_0
    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v0, v2, v0

    const-wide/32 v4, 0x15f90

    const-wide/32 v6, 0xf4240

    if-eqz v0, :cond_2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    const-wide v0, 0x100000000L

    add-long/2addr v0, v2

    const-wide v8, 0x200000000L

    div-long/2addr v0, v8

    const-wide/16 v10, 0x1

    sub-long v10, v0, v10

    mul-long/2addr v10, v8

    add-long/2addr v10, p1

    mul-long/2addr v0, v8

    add-long/2addr v0, p1

    sub-long p1, v10, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    move-wide p1, v10

    goto :goto_0

    :cond_1
    move-wide p1, v0

    :cond_2
    :goto_0
    mul-long/2addr p1, v6

    div-long/2addr p1, v4

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getFirstSampleTimestampUs()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p1, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    iput-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
