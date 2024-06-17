.class public final Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;


# instance fields
.field public final asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

.field public final bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

.field public final codec:Landroid/media/MediaCodec;

.field public codecReleased:Z

.field public state:I

.field public final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    new-instance p2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method public static access$100(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v4, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iget-boolean p2, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-nez p2, :cond_1

    iget-object p2, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance p3, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p3, p1, p2, v0}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p3, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    iput-boolean v3, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    :cond_1
    const-string p1, "startCodec"

    invoke-static {p1}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    iput v3, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method public static createThreadLabel(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dequeueInputBufferIndex()I
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v1, :cond_5

    iget-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    :goto_2
    const/4 p0, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/PathPosition;->remove()I

    move-result p0

    :goto_3
    monitor-exit v0

    return p0

    :cond_5
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    throw v1

    :cond_6
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    throw v1

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4
.end method

.method public final dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v1, :cond_7

    iget-wide v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    iget v4, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-nez v4, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    :goto_2
    const/4 p0, -0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/xpath/PathPosition;->remove()I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCodec$BufferInfo;

    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_3

    :cond_5
    const/4 p1, -0x2

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    :cond_6
    :goto_3
    move p0, v1

    :goto_4
    monitor-exit v0

    return p0

    :cond_7
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    throw v1

    :cond_8
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    throw v1

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_5
.end method

.method public final flush()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v3, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final getOutputFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeBlockOnQueueing()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Landroidx/media3/common/FlagSet$Builder;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    :try_start_3
    iget-boolean p0, v0, Landroidx/media3/common/FlagSet$Builder;->buildCalled:Z

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public final needsReconfiguration()V
    .locals 0

    return-void
.end method

.method public final queueInputBuffer(JIII)V
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;-><init>()V

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    iput p3, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    const/4 p3, 0x0

    iput p3, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iput p4, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    iput-wide p1, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iput p5, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {p0, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final queueSecureInputBuffer(ILandroidx/media3/decoder/CryptoInfo;J)V
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;-><init>()V

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    iput p1, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    const/4 p1, 0x0

    iput p1, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iput p1, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    iput-wide p3, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iput p1, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    iget p3, p2, Landroidx/media3/decoder/CryptoInfo;->numSubSamples:I

    iget-object p4, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iput p3, p4, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p3, p2, Landroidx/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez p3, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_3

    array-length v2, v0

    array-length v3, p3

    if-ge v2, v3, :cond_2

    goto :goto_2

    :cond_2
    array-length v2, p3

    invoke-static {p3, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_3
    :goto_2
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_3
    iput-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p3, p2, Landroidx/media3/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-nez p3, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v0, :cond_6

    array-length v2, v0

    array-length v3, p3

    if-ge v2, v3, :cond_5

    goto :goto_4

    :cond_5
    array-length v2, p3

    invoke-static {p3, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_6
    :goto_4
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_5
    iput-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p3, p2, Landroidx/media3/decoder/CryptoInfo;->key:[B

    iget-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-nez p3, :cond_7

    goto :goto_7

    :cond_7
    if-eqz v0, :cond_9

    array-length v2, v0

    array-length v3, p3

    if-ge v2, v3, :cond_8

    goto :goto_6

    :cond_8
    array-length v2, p3

    invoke-static {p3, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_9
    :goto_6
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p3, p2, Landroidx/media3/decoder/CryptoInfo;->iv:[B

    iget-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    if-nez p3, :cond_a

    goto :goto_9

    :cond_a
    if-eqz v0, :cond_c

    array-length v2, v0

    array-length v3, p3

    if-ge v2, v3, :cond_b

    goto :goto_8

    :cond_b
    array-length v2, p3

    invoke-static {p3, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_c
    :goto_8
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p4, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget p1, p2, Landroidx/media3/decoder/CryptoInfo;->mode:I

    iput p1, p4, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p1, p3, :cond_d

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget p3, p2, Landroidx/media3/decoder/CryptoInfo;->encryptedBlocks:I

    iget p2, p2, Landroidx/media3/decoder/CryptoInfo;->clearBlocks:I

    invoke-direct {p1, p3, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    invoke-virtual {p4, p1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_d
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Landroidx/preference/PreferenceFragmentCompat$1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iget-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    :cond_3
    throw v1
.end method

.method public final releaseOutputBuffer(IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final releaseOutputBuffer(IZ)V
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final setOnFrameRenderedListener(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;Landroid/os/Handler;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final setOutputSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setVideoScalingMode(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->maybeBlockOnQueueing()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
