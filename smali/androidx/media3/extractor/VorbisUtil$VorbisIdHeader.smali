.class public final Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bitrateMaximum:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final sampleRate:I


# direct methods
.method public constructor <init>(IIIIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    iput p2, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    iput p3, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    iput p4, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    iput p5, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    iput p6, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    iput-object p7, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method
