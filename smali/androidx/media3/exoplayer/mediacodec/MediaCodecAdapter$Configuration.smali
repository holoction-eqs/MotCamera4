.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public final crypto:Landroid/media/MediaCrypto;

.field public final format:Landroidx/media3/common/Format;

.field public final mediaFormat:Landroid/media/MediaFormat;

.field public final surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Landroidx/media3/common/Format;

    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    return-void
.end method
