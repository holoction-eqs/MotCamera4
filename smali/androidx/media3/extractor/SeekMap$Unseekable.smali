.class public Landroidx/media3/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final synthetic $r8$classId:I

.field public final durationUs:J

.field public final startSeekPoints:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Landroidx/media3/extractor/SeekPoint;->START:Landroidx/media3/extractor/SeekPoint;

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {p2, v0, v1, p3, p4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 3
    :goto_0
    invoke-direct {p1, p2, p2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0

    .line 5
    iput p2, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {p0}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    return-wide v0

    :goto_0
    iget-wide v0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget v3, v0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, v0, Landroidx/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    move-object v3, v6

    check-cast v3, Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v7, v3, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    invoke-static {v7}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v7, v3, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v8, v7, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v8, [J

    iget-object v7, v7, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v7, [J

    iget v9, v3, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v9, v9

    mul-long/2addr v9, v1

    const-wide/32 v11, 0xf4240

    div-long v13, v9, v11

    const-wide/16 v15, 0x0

    iget-wide v9, v3, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v17, 0x1

    sub-long v17, v9, v17

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v9

    invoke-static {v8, v9, v10, v4}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v3

    const-wide/16 v9, 0x0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move-wide v13, v9

    goto :goto_0

    :cond_0
    aget-wide v13, v8, v3

    :goto_0
    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v9, v7, v3

    :goto_1
    mul-long/2addr v13, v11

    move-object v4, v6

    check-cast v4, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v4, v4, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v11, v4

    div-long/2addr v13, v11

    iget-wide v11, v0, Landroidx/media3/extractor/SeekMap$Unseekable;->durationUs:J

    add-long/2addr v9, v11

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, v13, v14, v9, v10}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v1, v13, v1

    if-eqz v1, :cond_3

    array-length v1, v8

    sub-int/2addr v1, v5

    if-ne v3, v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v3, v5

    aget-wide v1, v8, v3

    aget-wide v3, v7, v3

    const-wide/32 v7, 0xf4240

    mul-long/2addr v1, v7

    check-cast v6, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v5, v6, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v5, v5

    div-long/2addr v1, v5

    add-long/2addr v11, v3

    new-instance v3, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v3, v1, v2, v11, v12}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v0, v3}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    :goto_3
    return-object v1

    :pswitch_1
    check-cast v6, Landroidx/media3/extractor/SeekMap$SeekPoints;

    return-object v6

    :goto_4
    check-cast v6, Landroidx/media3/extractor/avi/AviExtractor;

    iget-object v0, v6, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    :goto_5
    iget-object v3, v6, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v4, v3

    if-ge v5, v4, :cond_5

    aget-object v3, v3, v5

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/avi/ChunkReader;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object v3

    iget-object v4, v3, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v7, v4, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object v4, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v9, v4, Landroidx/media3/extractor/SeekPoint;->position:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_4

    move-object v0, v3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isSeekable()Z
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/SeekMap$Unseekable;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
