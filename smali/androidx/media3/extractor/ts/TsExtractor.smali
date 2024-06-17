.class public final Landroidx/media3/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final continuityCounters:Landroid/util/SparseIntArray;

.field public final durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

.field public hasOutputSeekMap:Z

.field public id3Reader:Landroidx/media3/extractor/ts/TsPayloadReader;

.field public output:Landroidx/media3/extractor/ExtractorOutput;

.field public final payloadReaderFactory:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

.field public pcrPid:I

.field public pendingSeekToStart:Z

.field public remainingPmts:I

.field public final timestampAdjusters:Ljava/util/List;

.field public final trackIds:Landroid/util/SparseBooleanArray;

.field public final trackPids:Landroid/util/SparseBooleanArray;

.field public tracksEnded:Z

.field public tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public final tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final tsPayloadReaders:Landroid/util/SparseArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->payloadReaderFactory:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackIds:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    new-instance v1, Landroidx/media3/extractor/ts/TsDurationReader;

    invoke-direct {v1}, Landroidx/media3/extractor/ts/TsDurationReader;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    sget-object v1, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/work/InputMergerFactory$1;

    iput-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/extractor/ts/SectionReader;

    new-instance v1, Lcom/motorola/camera/device/CameraService;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/CameraService;-><init>(Landroidx/media3/extractor/ts/TsExtractor;)V

    invoke-direct {p1, v1}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->id3Reader:Landroidx/media3/extractor/ts/TsPayloadReader;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v11

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    const/16 v13, 0x47

    const-wide/16 v14, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_18

    cmp-long v3, v11, v14

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    const-wide/16 v7, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->durationReader:Landroidx/media3/extractor/ts/TsDurationReader;

    if-eqz v3, :cond_13

    iget-boolean v3, v6, Landroidx/media3/extractor/ts/TsDurationReader;->isDurationRead:Z

    if-nez v3, :cond_13

    iget v0, v0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    if-gtz v0, :cond_1

    invoke-virtual {v6, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    goto/16 :goto_d

    :cond_1
    iget-boolean v3, v6, Landroidx/media3/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    iget-object v11, v6, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v12, v6, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    if-nez v3, :cond_a

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    int-to-long v14, v12

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-long v14, v3

    sub-long/2addr v7, v14

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    cmp-long v12, v14, v7

    if-eqz v12, :cond_2

    iput-wide v7, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v11, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v9, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v1, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, v11, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit16 v3, v2, -0xbc

    :goto_1
    if-lt v3, v1, :cond_9

    iget-object v7, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v8, -0x4

    move v12, v9

    :goto_2
    const/4 v14, 0x4

    if-gt v8, v14, :cond_6

    mul-int/lit16 v14, v8, 0xbc

    add-int/2addr v14, v3

    if-lt v14, v1, :cond_4

    if-ge v14, v2, :cond_4

    aget-byte v14, v7, v14

    if-eq v14, v13, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v12, v10

    const/4 v14, 0x5

    if-ne v12, v14, :cond_5

    move v7, v10

    goto :goto_4

    :cond_4
    :goto_3
    move v12, v9

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    move v7, v9

    :goto_4
    if-nez v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v3, v0, v11}, L_COROUTINE/_BOUNDARY;->readPcrFromPacket(IILandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v7

    cmp-long v12, v7, v4

    if-eqz v12, :cond_8

    move-wide v4, v7

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_9
    :goto_6
    iput-wide v4, v6, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    iput-boolean v10, v6, Landroidx/media3/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    goto :goto_a

    :cond_a
    iget-wide v14, v6, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    cmp-long v3, v14, v4

    if-nez v3, :cond_b

    goto/16 :goto_c

    :cond_b
    iget-boolean v3, v6, Landroidx/media3/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v3, :cond_10

    int-to-long v7, v12

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v3, v7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    int-to-long v14, v9

    cmp-long v7, v7, v14

    if-eqz v7, :cond_c

    iput-wide v14, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto :goto_b

    :cond_c
    invoke-virtual {v11, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v9, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v1, v11, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, v11, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_7
    if-ge v1, v2, :cond_f

    iget-object v3, v11, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v1

    if-eq v3, v13, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {v1, v0, v11}, L_COROUTINE/_BOUNDARY;->readPcrFromPacket(IILandroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v7

    cmp-long v3, v7, v4

    if-eqz v3, :cond_e

    move-wide v4, v7

    goto :goto_9

    :cond_e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    :goto_9
    iput-wide v4, v6, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    iput-boolean v10, v6, Landroidx/media3/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    :goto_a
    move v10, v9

    :goto_b
    move v9, v10

    goto :goto_d

    :cond_10
    iget-wide v2, v6, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    goto :goto_c

    :cond_11
    iget-object v0, v6, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    iget-wide v10, v6, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    invoke-virtual {v0, v10, v11}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    sub-long/2addr v10, v2

    iput-wide v10, v6, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    cmp-long v0, v10, v7

    if-gez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid duration: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v6, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Using TIME_UNSET instead."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TsDurationReader"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v4, v6, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    :cond_12
    :goto_c
    invoke-virtual {v6, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    :goto_d
    return v9

    :cond_13
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    if-nez v3, :cond_15

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/TsExtractor;->hasOutputSeekMap:Z

    iget-wide v7, v6, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    cmp-long v3, v7, v4

    if-eqz v3, :cond_14

    new-instance v5, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v4, v6, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->pcrPid:I

    const v16, 0x1b8a0

    move-object v3, v5

    move-object v14, v5

    move v15, v6

    move-wide v5, v7

    move-wide v7, v11

    move v13, v9

    move v9, v15

    move v15, v10

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJII)V

    iput-object v14, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, v14, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    goto :goto_e

    :cond_14
    move v13, v9

    move v15, v10

    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v4, v7, v8}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_e
    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_f

    :cond_15
    move v13, v9

    move v15, v10

    :goto_f
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    if-eqz v3, :cond_16

    iput-boolean v13, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v3, v4}, Landroidx/media3/extractor/ts/TsExtractor;->seek(JJ)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_16

    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v15

    :cond_16
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v3, :cond_19

    iget-object v4, v3, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v4, :cond_17

    move v10, v15

    goto :goto_10

    :cond_17
    move v10, v13

    :goto_10
    if-eqz v10, :cond_19

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_18
    move v13, v9

    move v15, v10

    :cond_19
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    rsub-int v5, v4, 0x24b8

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_1b

    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int/2addr v5, v4

    if-lez v5, :cond_1a

    invoke-static {v3, v4, v3, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    invoke-virtual {v2, v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :cond_1b
    :goto_11
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v5, v4, v5

    const/4 v7, -0x1

    if-ge v5, v6, :cond_1d

    rsub-int v5, v4, 0x24b8

    invoke-interface {v1, v3, v4, v5}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v5

    if-ne v5, v7, :cond_1c

    move v10, v13

    goto :goto_12

    :cond_1c
    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_11

    :cond_1d
    move v10, v15

    :goto_12
    if-nez v10, :cond_1e

    return v7

    :cond_1e
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_13
    if-ge v1, v3, :cond_1f

    aget-byte v5, v4, v1

    const/16 v7, 0x47

    if-eq v5, v7, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v1, v6

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-le v1, v3, :cond_20

    return v13

    :cond_20
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    if-eqz v5, :cond_21

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v13

    :cond_21
    const/high16 v5, 0x400000

    and-int/2addr v5, v4

    if-eqz v5, :cond_22

    move v10, v15

    goto :goto_14

    :cond_22
    move v10, v13

    :goto_14
    or-int/lit8 v5, v10, 0x0

    const v6, 0x1fff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v4, 0x20

    if-eqz v7, :cond_23

    move v10, v15

    goto :goto_15

    :cond_23
    move v10, v13

    :goto_15
    and-int/lit8 v7, v4, 0x10

    if-eqz v7, :cond_24

    move v7, v15

    goto :goto_16

    :cond_24
    move v7, v13

    :goto_16
    if-eqz v7, :cond_25

    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/ts/TsPayloadReader;

    goto :goto_17

    :cond_25
    const/4 v7, 0x0

    :goto_17
    if-nez v7, :cond_26

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v13

    :cond_26
    and-int/lit8 v4, v4, 0xf

    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    invoke-virtual {v8, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v4, :cond_27

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v13

    :cond_27
    add-int/2addr v9, v15

    and-int/lit8 v8, v9, 0xf

    if-eq v4, v8, :cond_28

    invoke-interface {v7}, Landroidx/media3/extractor/ts/TsPayloadReader;->seek()V

    :cond_28
    if-eqz v10, :cond_2a

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_29

    const/4 v9, 0x2

    goto :goto_18

    :cond_29
    move v9, v13

    :goto_18
    or-int/2addr v5, v9

    sub-int/2addr v4, v15

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_2a
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-nez v4, :cond_2c

    iget-object v8, v0, Landroidx/media3/extractor/ts/TsExtractor;->trackPids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v13}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_19

    :cond_2b
    move v10, v13

    goto :goto_1a

    :cond_2c
    :goto_19
    move v10, v15

    :goto_1a
    if-eqz v10, :cond_2d

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-interface {v7, v5, v2}, Landroidx/media3/extractor/ts/TsPayloadReader;->consume(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_2d
    if-nez v4, :cond_2e

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->tracksEnded:Z

    if-eqz v3, :cond_2e

    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-eqz v3, :cond_2e

    iput-boolean v15, v0, Landroidx/media3/extractor/ts/TsExtractor;->pendingSeekToStart:Z

    :cond_2e
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v13
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 11

    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->timestampAdjusters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const-wide/16 v2, 0x0

    if-ge v1, p2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter v4

    :try_start_0
    iget-wide v5, v4, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-eqz v5, :cond_1

    cmp-long v2, v9, v2

    if-eqz v2, :cond_1

    cmp-long v2, v9, p3

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v6, v0

    :goto_2
    move v5, v6

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v4, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_5
    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->continuityCounters:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    :goto_3
    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-interface {p1}, Landroidx/media3/extractor/ts/TsPayloadReader;->seek()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 6

    iget-object p0, p0, Landroidx/media3/extractor/ts/TsExtractor;->tsPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v0, 0x0

    const/16 v1, 0x3ac

    invoke-virtual {p1, p0, v0, v1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    move v1, v0

    :goto_0
    const/16 v2, 0xbc

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v1

    aget-byte v3, p0, v3

    const/16 v5, 0x47

    if-eq v3, v5, :cond_0

    move v2, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->skipFully(I)V

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method
