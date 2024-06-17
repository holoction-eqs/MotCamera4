.class public final Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleError(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "received codec error: exception in codecLooper"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " with exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CinemagraphVideoEncoder"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleFormatChanged(Landroid/media/MediaCodec;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    iget-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxerStarted:Z

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p0

    iput p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mTrackIndex:I

    iget-object p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p0}, Landroid/media/MediaMuxer;->start()V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxerStarted:Z

    goto :goto_0

    :cond_0
    const-string p1, "CinemagraphVideoEncoder"

    const-string v1, "onOutputFormatChanged: Unexpected output format. Aborting."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final handleInput(Ljava/nio/ByteBuffer;)Lcom/motorola/camera/mediacodec/BufferChunk;
    .locals 13

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mListener:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;

    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    const/4 v2, 0x1

    iget v3, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$frameCount:I

    if-ne v1, v3, :cond_0

    iget-boolean v4, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$isBounce:Z

    if-eqz v4, :cond_0

    iput-boolean v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mLooping:Z

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    :cond_0
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    if-ge v1, v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget-object v4, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mDebugPrefix:Ljava/lang/String;

    invoke-virtual {v3, p1, v1, v4}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createSingleFrameYUV(Ljava/nio/ByteBuffer;ILjava/lang/String;)V

    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mBufferSize:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    iget-boolean v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mLooping:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    add-int/2addr v1, v2

    :goto_0
    iput v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->mFrameIndex:I

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    iget v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputStride:I

    iget v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mWidth:I

    if-ne v3, v4, :cond_4

    iget v5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputSliceHeight:I

    iget v6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mHeight:I

    if-eq v5, v6, :cond_5

    :cond_4
    iget v5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mHeight:I

    iget v6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mInputSliceHeight:I

    invoke-static {p1, v4, v5, v3, v6}, Lcom/motorola/camera/mcf/MotUtil;->alignYuvBuffer(Ljava/nio/ByteBuffer;IIII)I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    new-instance v3, Lcom/motorola/camera/mediacodec/BufferChunk;

    invoke-direct {v3}, Lcom/motorola/camera/mediacodec/BufferChunk;-><init>()V

    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    iget v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameIndex:I

    int-to-long v7, v4

    const-wide/32 v11, 0xf4240

    mul-long/2addr v7, v11

    iget v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameRate:I

    int-to-long v11, v4

    div-long/2addr v7, v11

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    :cond_6
    move v9, v1

    move-object v4, v10

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iput-object v10, v3, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iput-object p1, v3, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    iget p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameIndex:I

    return-object v3
.end method

.method public final handleOutput(Lcom/motorola/camera/mediacodec/BufferChunk;)V
    .locals 8

    iget-object v0, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    if-nez v0, :cond_0

    const-string p1, "CinemagraphVideoEncoder"

    const-string v0, "encoded data is null. Aborting."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v3, p1, Lcom/motorola/camera/mediacodec/BufferChunk;->bufInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v4, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v7

    :goto_0
    iput-boolean v1, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEndOfStreamReceived:Z

    if-eqz v1, :cond_3

    iget-object v0, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v6}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object p0, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget v1, v2, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mTrackIndex:I

    invoke-virtual {p0, v1, v0, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_1
    invoke-virtual {p1, v7}, Lcom/motorola/camera/mediacodec/BufferChunk;->release(Z)V

    return-void
.end method
