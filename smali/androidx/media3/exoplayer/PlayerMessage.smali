.class public final Landroidx/media3/exoplayer/PlayerMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clock:Landroidx/media3/common/util/Clock;

.field public deleteAfterDelivery:Z

.field public isCanceled:Z

.field public isDelivered:Z

.field public isProcessed:Z

.field public isSent:Z

.field public looper:Landroid/os/Looper;

.field public final mediaItemIndex:I

.field public payload:Ljava/lang/Object;

.field public positionMs:J

.field public final sender:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final target:Landroidx/media3/exoplayer/PlayerMessage$Target;

.field public final timeline:Landroidx/media3/common/Timeline;

.field public type:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->sender:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput-object p2, p0, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    iput-object p3, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    iput-object p6, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    iput-object p5, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    iput p4, p0, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized blockUntilDelivered(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    check-cast v0, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    check-cast p1, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized markAsProcessed(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final send()V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-wide v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    :cond_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->sender:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p0}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Ignoring messages sent after release."

    invoke-static {v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setPayload(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    return-void
.end method
