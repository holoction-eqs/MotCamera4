.class public final Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
.super Landroidx/media3/extractor/ConstantBitrateSeekMap;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# direct methods
.method public constructor <init>(JJLandroidx/media3/extractor/wav/WavFormat;Z)V
    .locals 8

    iget v1, p5, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    iget v2, p5, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(IIJJZ)V

    return-void
.end method


# virtual methods
.method public final getDataEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getTimeUs(J)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget p0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method
