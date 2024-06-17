.class public final Landroidx/media3/extractor/wav/WavSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final blockCount:J

.field public final durationUs:J

.field public final firstBlockPosition:J

.field public final framesPerBlock:I

.field public final wavFormat:Landroidx/media3/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/wav/WavFormat;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iput p2, p0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    iput-wide p3, p0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    sub-long/2addr p5, p3

    iget p1, p1, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    invoke-virtual {p0, p5, p6}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public final blockIndexToTimeUs(J)J
    .locals 8

    iget v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    const-wide/32 v4, 0xf4240

    iget-object p0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget p0, p0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v6, p0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/wav/WavSeekMap;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/wav/WavSeekMap;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v2, v1, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v2, v2

    mul-long v2, v2, p1

    iget v4, v0, Landroidx/media3/extractor/wav/WavSeekMap;->framesPerBlock:I

    int-to-long v4, v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    div-long v6, v2, v4

    const-wide/16 v8, 0x0

    iget-wide v2, v0, Landroidx/media3/extractor/wav/WavSeekMap;->blockCount:J

    const-wide/16 v4, 0x1

    sub-long v10, v2, v4

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v6

    iget v8, v1, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    int-to-long v8, v8

    mul-long/2addr v8, v6

    iget-wide v10, v0, Landroidx/media3/extractor/wav/WavSeekMap;->firstBlockPosition:J

    add-long/2addr v8, v10

    invoke-virtual {p0, v6, v7}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v12

    new-instance v14, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v14, v12, v13, v8, v9}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v8, v12, p1

    if-gez v8, :cond_1

    sub-long/2addr v2, v4

    cmp-long v2, v6, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v6, v4

    iget v1, v1, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    int-to-long v1, v1

    mul-long/2addr v1, v6

    add-long/2addr v1, v10

    invoke-virtual {p0, v6, v7}, Landroidx/media3/extractor/wav/WavSeekMap;->blockIndexToTimeUs(J)J

    move-result-wide v3

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v14, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v14, v14}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0
.end method

.method public final isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
