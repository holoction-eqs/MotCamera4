.class public final Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;
.super Landroidx/media3/decoder/DecoderException;
.source "SourceFile"


# instance fields
.field public final diagnosticInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/IllegalStateException;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoder failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroidx/media3/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_1

    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;->diagnosticInfo:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    :cond_2
    return-void
.end method
