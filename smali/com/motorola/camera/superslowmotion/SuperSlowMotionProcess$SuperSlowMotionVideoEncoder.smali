.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# instance fields
.field public final input:Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

.field public track:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->input:Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->track:I

    return-void
.end method


# virtual methods
.method public final handleError(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    const-string v0, "exception in codecLooper"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->abortProcess(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 2

    const-string v0, "mediaCodec"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "mediaCodec.outputFormat"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->orientationHint:I

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->track:I

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    :cond_0
    return-void
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/motorola/camera/mediacodec/BufferChunk;

    const/16 v2, 0xf

    invoke-direct {v1, v0, v0, v2}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->input:Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionVideoDecoder;->decodeOutput:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    const-string v2, "decodeOutput.take()"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/mediacodec/BufferChunk;

    iget-object v2, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object p1, v1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    const-string p1, "handleInput: input buffer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleInput: cannot get buffer, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 7

    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->mediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v4, :cond_1

    iget v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess$SuperSlowMotionVideoEncoder;->track:I

    iget-object v6, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v0, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_1
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionProcess;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p1, v3}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method
