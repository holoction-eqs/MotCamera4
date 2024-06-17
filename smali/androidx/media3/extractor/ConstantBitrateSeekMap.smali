.class public Landroidx/media3/extractor/ConstantBitrateSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final allowSeeksIfLengthUnknown:Z

.field public final bitrate:I

.field public final dataSize:J

.field public final durationUs:J

.field public final firstFrameBytePosition:J

.field public final frameSize:I

.field public final inputLength:J


# direct methods
.method public constructor <init>(IIJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->inputLength:J

    iput-wide p5, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput p2, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    iput p1, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->bitrate:I

    iput-boolean p7, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    const-wide/16 v0, -0x1

    cmp-long p2, p3, v0

    if-nez p2, :cond_1

    iput-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_1
    sub-long/2addr p3, p5

    iput-wide p3, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 p5, 0x0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/16 p4, 0x8

    mul-long/2addr p2, p4

    const-wide/32 p4, 0xf4240

    mul-long/2addr p2, p4

    int-to-long p4, p1

    div-long p1, p2, p4

    :goto_0
    iput-wide p1, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->durationUs:J

    return-wide v0
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, -0x1

    iget-wide v3, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    cmp-long v1, v3, v1

    iget-wide v5, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->firstFrameBytePosition:J

    const-wide/16 v7, 0x0

    if-nez v1, :cond_0

    iget-boolean v2, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-nez v2, :cond_0

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v1, v7, v8, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_0
    iget v2, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->bitrate:I

    int-to-long v9, v2

    mul-long v9, v9, p1

    const-wide/32 v11, 0x7a1200

    div-long/2addr v9, v11

    iget v11, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->frameSize:I

    int-to-long v11, v11

    div-long/2addr v9, v11

    mul-long/2addr v9, v11

    if-eqz v1, :cond_1

    sub-long/2addr v3, v11

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_1
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v3, v5

    sub-long v9, v3, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/16 v13, 0x8

    mul-long/2addr v9, v13

    const-wide/32 v15, 0xf4240

    mul-long/2addr v9, v15

    int-to-long v13, v2

    div-long/2addr v9, v13

    new-instance v13, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v13, v9, v10, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    if-eqz v1, :cond_3

    cmp-long v1, v9, p1

    if-gez v1, :cond_3

    add-long/2addr v11, v3

    iget-wide v0, v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->inputLength:J

    cmp-long v0, v11, v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    sub-long v0, v11, v5

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v3, 0x8

    mul-long/2addr v0, v3

    mul-long/2addr v0, v15

    int-to-long v2, v2

    div-long/2addr v0, v2

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v2, v0, v1, v11, v12}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v13, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v13, v13}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0
.end method

.method public final isSeekable()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->allowSeeksIfLengthUnknown:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
