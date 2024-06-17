.class public final Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mBitRate:I

.field public final mCodecCallback:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

.field public mEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

.field public mEndOfStreamReceived:Z

.field public mEventHandler:Landroid/os/Handler;

.field public mFrameIndex:I

.field public final mFrameRate:I

.field public final mHeight:I

.field public mInputSliceHeight:I

.field public mInputStride:I

.field public mListener:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;

.field public mMuxer:Landroid/media/MediaMuxer;

.field public mMuxerStarted:Z

.field public final mOrientation:I

.field public final mOutputFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mTrackIndex:I

.field public final mWidth:I


# direct methods
.method public static -$$Nest$mfinish(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V
    .locals 4

    const-string v0, "CinemagraphVideoEncoder"

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEncoder:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mMuxer:Landroid/media/MediaMuxer;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOutputFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to close cinemagraph video file descriptor"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEndOfStreamReceived:Z

    if-nez v1, :cond_2

    const-string v1, "finish: Cinemagraph video generation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mListener:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;

    iget-boolean p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mEndOfStreamReceived:Z

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$1;->val$videoCallback:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$CinemagraphVideoCallback;

    check-cast v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$2:[I

    iget-object v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$3:Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;

    iget-object v3, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphEngine$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    invoke-static {v3, v0, v1, v2, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->$r8$lambda$WUbzSknC2dRv62j2YmCUhW_SMqs(Lcom/motorola/camera/cinemagraph/CinemagraphEngine;Ljava/io/File;[ILcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;Z)V

    return-void
.end method

.method public constructor <init>(IIIIILandroid/os/ParcelFileDescriptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mCodecCallback:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    rem-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    rem-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "CinemagraphVideoEncoder"

    const-string v1, "constructor: width or height not multiple of 16"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mWidth:I

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mHeight:I

    iput p3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOrientation:I

    iput p4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mBitRate:I

    iput p5, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameRate:I

    iput-object p6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mOutputFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public static getCodec(Landroid/media/MediaFormat;)Landroid/media/MediaCodecInfo;
    .locals 8

    invoke-static {}, Lcom/motorola/camera/Util;->getHardWare()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    if-nez v2, :cond_3

    add-int/lit8 v5, v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    const-string v6, "video/avc"

    invoke-virtual {v4, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    move-object v3, v4

    :catch_0
    :cond_2
    :goto_1
    move v4, v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    return-object v2
.end method

.method public static undoMediaFormatSizeHack(Landroid/media/MediaFormat;IIII)V
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "height"

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "stride"

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "slice-height"

    invoke-virtual {p0, p1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final configureMediaFormat(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo;)V
    .locals 2

    const-string v0, "bitrate"

    iget v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mBitRate:I

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    iget p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->mFrameRate:I

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-format"

    const/16 v0, 0x15

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-range"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "color-standard"

    const/4 v1, 0x4

    invoke-virtual {p1, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "i-frame-interval"

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "bitrate-mode"

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "profile"

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "video/avc"

    invoke-static {p2, p0}, Lcom/motorola/camera/mediacodec/CodecUtil;->getProfileLevel(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result p0

    const-string p2, "level"

    invoke-virtual {p1, p2, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method
