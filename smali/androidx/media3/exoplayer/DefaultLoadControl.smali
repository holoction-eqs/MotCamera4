.class public final Landroidx/media3/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/LoadControl;


# instance fields
.field public final allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field public final backBufferDurationUs:J

.field public final bufferForPlaybackAfterRebufferUs:J

.field public final bufferForPlaybackUs:J

.field public isLoading:Z

.field public final maxBufferUs:J

.field public final minBufferUs:J

.field public targetBufferBytes:I

.field public final targetBufferBytesOverwrite:I


# direct methods
.method public constructor <init>()V
    .locals 9

    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "bufferForPlaybackMs"

    const/16 v2, 0x9c4

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v5, "bufferForPlaybackAfterRebufferMs"

    const/16 v6, 0x1388

    invoke-static {v5, v6, v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v7, "minBufferMs"

    const v8, 0xc350

    invoke-static {v7, v8, v2, v1}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v7, v8, v6, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {v1, v8, v8, v7}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {v1, v3, v3, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    int-to-long v0, v8

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    int-to-long v0, v2

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long v0, v6

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/high16 v0, 0xc80000

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytes:I

    int-to-long v0, v3

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    return-void
.end method

.method public static assertGreaterOrEqual(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be less than "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final reset(Z)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0xc80000

    :cond_0
    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytes:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->isLoading:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz p1, :cond_3

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget p1, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->trim()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final shouldContinueLoading(FJ)Z
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->allocator:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    monitor-enter v0

    :try_start_0
    iget v1, v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->allocatedCount:I

    iget v2, v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/2addr v1, v2

    monitor-exit v0

    iget v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->targetBufferBytes:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    iget-wide v6, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    if-lez v1, :cond_2

    sget v8, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    long-to-double v6, v6

    float-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    :goto_1
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_2
    const-wide/32 v8, 0x7a120

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long p1, p2, v6

    if-gez p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->isLoading:Z

    if-nez v2, :cond_6

    cmp-long p1, p2, v8

    if-gez p1, :cond_6

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    cmp-long p1, p2, v4

    if-gez p1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    iput-boolean v3, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->isLoading:Z

    :cond_6
    :goto_3
    iget-boolean p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->isLoading:Z

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
