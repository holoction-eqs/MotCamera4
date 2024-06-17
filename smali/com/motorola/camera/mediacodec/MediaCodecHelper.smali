.class public final Lcom/motorola/camera/mediacodec/MediaCodecHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final DEQUEUE_TIMEOUT_US:J

.field public final SHUTDOWN_TIMEOUT_MS:J

.field public final TAG:Ljava/lang/String;

.field public final callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

.field public final codec:Landroid/media/MediaCodec;

.field public final eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field public isUsingVideoSurface:Z

.field public final showToast:Z

.field public final workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;Z)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    iput-boolean p3, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->showToast:Z

    const-wide/32 p2, 0x186a0

    iput-wide p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->DEQUEUE_TIMEOUT_US:J

    const-wide/16 p2, 0xbb8

    iput-wide p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->SHUTDOWN_TIMEOUT_MS:J

    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p3, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    const-class p2, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, ":"

    .line 2
    invoke-static {p2, p3, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final processInput()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->isUsingVideoSurface:Z

    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    iget-object v4, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_0

    invoke-virtual {v4}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_2

    :cond_0
    :goto_0
    move v6, v7

    goto :goto_2

    :cond_1
    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {v4, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;

    move-result-object v8

    iget-object v10, v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    const/4 v12, 0x0

    if-eqz v8, :cond_2

    iget-object v9, v8, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v13, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v14, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v11, v1

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v8, v8, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_3

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    move v11, v1

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_1
    move v7, v6

    :cond_3
    if-ltz v1, :cond_0

    if-nez v7, :cond_0

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_INPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final processOutput()V
    .locals 7

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->DEQUEUE_TIMEOUT_US:J

    iget-object v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    iget-object v4, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->callback:Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;

    if-ne v1, v2, :cond_1

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v4, v3}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleFormatChanged(Landroid/media/MediaCodec;)V

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Got invalid output status "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_3
    new-instance v5, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v5, v2, v0, v1, v3}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;ILandroid/media/MediaCodec;)V

    invoke-interface {v4, v5}, Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;->handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_OUTPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->START:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stop()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->STOP:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->workerThread:Ljava/lang/Thread;

    :try_start_0
    iget-wide v3, p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->SHUTDOWN_TIMEOUT_MS:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "codec looper thread still alive, interrupt"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to stop codec thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_1
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "Failed to stop/release codec"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
