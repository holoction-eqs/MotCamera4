.class public final Landroidx/core/graphics/PathParser$ExtractFloatResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# instance fields
.field public mEndPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    return-void
.end method


# virtual methods
.method public final createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget p0, p0, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    const/16 p0, 0x1f

    if-lt v0, p0, :cond_1

    :cond_0
    iget-object p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMCodecAdapterFactory"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/tasks/zzr;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/tasks/zzr;-><init>(IZ)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzr;->createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory$1;->createCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "configureCodec"

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    const-string p1, "startCodec"

    invoke-static {p1}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, p0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    :cond_2
    throw p1
.end method
