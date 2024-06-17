.class public final Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"


# instance fields
.field public final buffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field public lastTimestampUs:J

.field public listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

.field public offsetUs:J

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraMotionRenderer"

    return-object p0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    check-cast p2, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onDisabled()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_0
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_0
    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJ)V
    .locals 0

    iput-wide p4, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->offsetUs:J

    return-void
.end method

.method public final render(JJ)V
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_6

    iget-wide p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_6

    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object p4, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {p4}, Lcom/airbnb/lottie/model/MutablePair;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p3, v0}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Lcom/airbnb/lottie/model/MutablePair;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p4

    const/4 v1, -0x4

    if-ne p4, v1, :cond_6

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroidx/media3/decoder/Buffer;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    iget-wide v1, p3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroidx/media3/decoder/Buffer;->isDecodeOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object p3, p3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/2addr p3, p4

    invoke-virtual {v3, p3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_1
    if-ge v0, p3, :cond_4

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p3, p4

    :goto_2
    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    iget-object p4, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->offsetUs:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0

    const-string p0, "application/x-camera-motion"

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0
.end method
