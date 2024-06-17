.class public abstract Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;
.implements Landroidx/media3/decoder/Decoder;


# instance fields
.field public availableInputBufferCount:I

.field public final availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

.field public availableOutputBufferCount:I

.field public final availableOutputBuffers:[Landroidx/media3/decoder/DecoderOutputBuffer;

.field public final decodeThread:Landroidx/media3/decoder/SimpleDecoder$1;

.field public dequeuedInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public exception:Landroidx/media3/extractor/text/SubtitleDecoderException;

.field public flushed:Z

.field public final lock:Ljava/lang/Object;

.field public final queuedInputBuffers:Ljava/util/ArrayDeque;

.field public final queuedOutputBuffers:Ljava/util/ArrayDeque;

.field public released:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/media3/extractor/text/SubtitleInputBuffer;

    new-array v2, v0, [Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    iput-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

    iput v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget v4, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    if-ge v3, v4, :cond_0

    new-instance v4, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-direct {v4}, Landroidx/media3/extractor/text/SubtitleInputBuffer;-><init>()V

    iget-object v5, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBuffers:[Landroidx/media3/decoder/DecoderOutputBuffer;

    iput v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    move v0, v1

    :goto_1
    iget v2, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    new-instance v2, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;

    invoke-direct {v2, p0, v3}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;-><init>(Landroidx/media3/extractor/text/SubtitleDecoder;I)V

    iget-object v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBuffers:[Landroidx/media3/decoder/DecoderOutputBuffer;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroidx/media3/decoder/SimpleDecoder$1;

    invoke-direct {v0, p0}, Landroidx/media3/decoder/SimpleDecoder$1;-><init>(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;)V

    iput-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->decodeThread:Landroidx/media3/decoder/SimpleDecoder$1;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    iget-object p0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

    array-length v2, p0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    array-length v0, p0

    :goto_3
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
.end method

.method public final decode(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/DecoderOutputBuffer;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;
    .locals 6

    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    check-cast p2, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 1
    :try_start_0
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0, p3, v1}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;

    move-result-object v3

    iget-wide v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLandroidx/media3/extractor/text/Subtitle;J)V

    .line 4
    iget p0, p2, Landroidx/media3/decoder/Buffer;->flags:I

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    iput p0, p2, Landroidx/media3/decoder/Buffer;->flags:I
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object p0
.end method

.method public final decode()Z
    .locals 7

    .line 5
    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->released:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    move v1, v2

    :goto_1
    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->released:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    goto/16 :goto_6

    :cond_2
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v4, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBuffers:[Landroidx/media3/decoder/DecoderOutputBuffer;

    iget v5, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    aget-object v4, v4, v5

    iget-boolean v5, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->flushed:Z

    iput-boolean v2, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->flushed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    .line 8
    invoke-virtual {v1, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {v4, v0}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x80000000

    invoke-virtual {v4, v0}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    :cond_4
    const/high16 v0, 0x8000000

    .line 10
    invoke-virtual {v1, v0}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 11
    invoke-virtual {v4, v0}, Landroidx/media3/decoder/Buffer;->addFlag(I)V

    :cond_5
    :try_start_1
    invoke-virtual {p0, v1, v4, v5}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->decode(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/decoder/DecoderOutputBuffer;Z)Landroidx/media3/extractor/text/SubtitleDecoderException;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    new-instance v5, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v6, "Unexpected decode error"

    invoke-direct {v5, v6, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_6

    .line 13
    iget-object v5, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iput-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->exception:Landroidx/media3/extractor/text/SubtitleDecoderException;

    monitor-exit v5

    goto :goto_6

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    :goto_3
    iget-object v2, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->flushed:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Landroidx/media3/decoder/Buffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    invoke-virtual {v4}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 14
    :goto_5
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    iget-object p0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

    aput-object v1, p0, v0

    .line 15
    monitor-exit v2

    move v2, v3

    :goto_6
    return v2

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_7
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final dequeueInputBuffer()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->exception:Landroidx/media3/extractor/text/SubtitleDecoderException;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->dequeuedInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->dequeuedInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    throw v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dequeueOutputBuffer()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->exception:Landroidx/media3/extractor/text/SubtitleDecoderException;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/decoder/DecoderOutputBuffer;

    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final flush()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->flushed:Z

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->dequeuedInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget v2, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    iget-object v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

    aput-object v1, v3, v2

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->dequeuedInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget v2, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBufferCount:I

    iget-object v3, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableInputBuffers:[Landroidx/media3/decoder/DecoderInputBuffer;

    aput-object v1, v3, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/DecoderOutputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->release()V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->exception:Landroidx/media3/extractor/text/SubtitleDecoderException;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->dequeuedInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->availableOutputBufferCount:I

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    iget-object p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->dequeuedInputBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    throw v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->released:Z

    iget-object v1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->decodeThread:Landroidx/media3/decoder/SimpleDecoder$1;

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setPositionUs(J)V
    .locals 0

    return-void
.end method
