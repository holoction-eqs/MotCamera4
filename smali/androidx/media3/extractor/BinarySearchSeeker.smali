.class public abstract Landroidx/media3/extractor/BinarySearchSeeker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final minimumSearchRange:I

.field public final seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

.field public seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

.field public final timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V
    .locals 14

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    move/from16 v1, p13

    iput v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->minimumSearchRange:I

    new-instance v13, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    move-object v1, v13

    move-object v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;JJJJJ)V

    iput-object v13, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    return-void
.end method

.method public static seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I
    .locals 2

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Landroidx/media3/extractor/PositionHolder;->position:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 27

    move-object/from16 v0, p0

    :goto_0
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v6, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v8, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    sub-long/2addr v6, v4

    iget v10, v0, Landroidx/media3/extractor/BinarySearchSeeker;->minimumSearchRange:I

    int-to-long v10, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x0

    iget-object v10, v0, Landroidx/media3/extractor/BinarySearchSeeker;->timestampSeeker:Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;

    if-gtz v6, :cond_0

    iput-object v7, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    invoke-static {v1, v4, v5, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    const-wide/32 v13, 0x40000

    if-ltz v6, :cond_1

    cmp-long v6, v4, v13

    if-gtz v6, :cond_1

    long-to-int v4, v4

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    invoke-static {v1, v8, v9, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    invoke-interface {v10, v1, v4, v5}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->searchForTimestamp(Landroidx/media3/extractor/ExtractorInput;J)Landroidx/appcompat/app/TwilightCalculator;

    move-result-object v4

    iget v5, v4, Landroidx/appcompat/app/TwilightCalculator;->state:I

    const/4 v6, -0x3

    if-eq v5, v6, :cond_7

    iget-wide v8, v4, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    move-wide/from16 v19, v8

    iget-wide v7, v4, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    const/4 v4, -0x2

    if-eq v5, v4, :cond_6

    const/4 v4, -0x1

    if-eq v5, v4, :cond_5

    if-nez v5, :cond_4

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long v3, v7, v3

    cmp-long v5, v3, v11

    if-ltz v5, :cond_3

    cmp-long v5, v3, v13

    if-gtz v5, :cond_3

    long-to-int v3, v3

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_3
    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    invoke-static {v1, v7, v8, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid case"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-wide/from16 v4, v19

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iput-wide v7, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v9, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v11, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v13, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v1, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    move-wide v15, v9

    move-wide/from16 v17, v11

    move-wide/from16 v19, v4

    move-wide/from16 v21, v13

    move-wide/from16 v23, v7

    move-wide/from16 v25, v1

    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    goto/16 :goto_0

    :cond_6
    move-wide/from16 v4, v19

    iput-wide v4, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iput-wide v7, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v1, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v9, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v11, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v13, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    move-wide v15, v1

    move-wide/from16 v17, v4

    move-wide/from16 v19, v9

    move-wide/from16 v21, v7

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    invoke-static/range {v15 .. v26}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v3, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    goto/16 :goto_0

    :cond_7
    move-object v1, v7

    iput-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    invoke-interface {v10}, Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;->onSeekFinished()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v8, v9, v1}, Landroidx/media3/extractor/BinarySearchSeeker;->seekToPosition(Landroidx/media3/extractor/ExtractorInput;JLandroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public final setSeekTargetUs(J)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v14, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    iget-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    iget-object v4, v1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->seekTimestampConverter:Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;

    invoke-interface {v4, v2, v3}, Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;->timeUsToTargetTime(J)J

    move-result-wide v4

    iget-wide v6, v1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorTimePosition:J

    iget-wide v8, v1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingTimePosition:J

    iget-wide v10, v1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->floorBytePosition:J

    iget-wide v12, v1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->ceilingBytePosition:J

    move-wide v15, v12

    iget-wide v12, v1, Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;->approxBytesPerFrame:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-wide/from16 v17, v12

    move-wide v12, v15

    move-object/from16 v19, v14

    move-wide/from16 v14, v17

    invoke-direct/range {v1 .. v15}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;-><init>(JJJJJJJ)V

    move-object/from16 v1, v19

    iput-object v1, v0, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    return-void
.end method
