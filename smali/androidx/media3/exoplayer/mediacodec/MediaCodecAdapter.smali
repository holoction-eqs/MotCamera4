.class public interface abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dequeueInputBufferIndex()I
.end method

.method public abstract dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract flush()V
.end method

.method public abstract getInputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputFormat()Landroid/media/MediaFormat;
.end method

.method public abstract needsReconfiguration()V
.end method

.method public abstract queueInputBuffer(JIII)V
.end method

.method public abstract queueSecureInputBuffer(ILandroidx/media3/decoder/CryptoInfo;J)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IJ)V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract setOnFrameRenderedListener(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;Landroid/os/Handler;)V
.end method

.method public abstract setOutputSurface(Landroid/view/Surface;)V
.end method

.method public abstract setParameters(Landroid/os/Bundle;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method
