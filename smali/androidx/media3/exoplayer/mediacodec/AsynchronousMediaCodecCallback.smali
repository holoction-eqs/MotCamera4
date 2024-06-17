.class public final Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field public final availableInputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

.field public final availableOutputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

.field public final bufferInfos:Ljava/util/ArrayDeque;

.field public final callbackThread:Landroid/os/HandlerThread;

.field public currentFormat:Landroid/media/MediaFormat;

.field public final formats:Ljava/util/ArrayDeque;

.field public handler:Landroid/os/Handler;

.field public internalException:Ljava/lang/IllegalStateException;

.field public final lock:Ljava/lang/Object;

.field public mediaCodecException:Landroid/media/MediaCodec$CodecException;

.field public pendingFlushCount:J

.field public pendingOutputFormat:Landroid/media/MediaFormat;

.field public shutDown:Z


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    new-instance p1, Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-direct {p1}, Lcom/adobe/xmp/impl/xpath/PathPosition;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    new-instance p1, Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-direct {p1}, Lcom/adobe/xmp/impl/xpath/PathPosition;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final flushInternal()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    const/4 v2, 0x0

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    const/4 v3, -0x1

    iput v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iput v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-virtual {p0, p2}, Lcom/adobe/xmp/impl/xpath/PathPosition;->add(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/xpath/PathPosition;->add(I)V

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-virtual {v0, p2}, Lcom/adobe/xmp/impl/xpath/PathPosition;->add(I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/adobe/xmp/impl/xpath/PathPosition;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/PathPosition;->add(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
