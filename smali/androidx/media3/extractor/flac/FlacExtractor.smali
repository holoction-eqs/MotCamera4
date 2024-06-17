.class public final Landroidx/media3/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public final buffer:Landroidx/media3/common/util/ParsableByteArray;

.field public currentFrameBytesWritten:I

.field public currentFrameFirstSampleNumber:J

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

.field public frameStartMarker:I

.field public id3Metadata:Landroidx/media3/common/Metadata;

.field public final id3MetadataDisabled:Z

.field public minFrameSize:I

.field public final sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

.field public state:I

.field public final streamMarkerAndInfoBlock:[B

.field public trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iput-boolean v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

    iput v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_28

    const/4 v6, 0x2

    iget-object v7, v0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    if-eq v2, v4, :cond_27

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eq v2, v6, :cond_25

    const/4 v10, 0x7

    if-eq v2, v8, :cond_1b

    const-wide/16 v7, 0x0

    const-wide/16 v12, -0x1

    const/4 v14, 0x5

    if-eq v2, v9, :cond_17

    if-ne v2, v14, :cond_16

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v2, :cond_1

    iget-object v9, v2, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v9, :cond_0

    move v9, v4

    goto :goto_0

    :cond_0
    move v9, v5

    :goto_0
    if-eqz v9, :cond_1

    move-object/from16 v9, p2

    invoke-virtual {v2, v1, v9}, Landroidx/media3/extractor/BinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v5

    goto/16 :goto_e

    :cond_1
    iget-wide v14, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    cmp-long v2, v14, v12

    const/4 v9, -0x1

    if-nez v2, :cond_8

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    new-array v12, v4, [B

    invoke-interface {v1, v5, v4, v12}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    aget-byte v12, v12, v5

    and-int/2addr v12, v4

    if-ne v12, v4, :cond_2

    move v12, v4

    goto :goto_1

    :cond_2
    move v12, v5

    :goto_1
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x6

    :goto_2
    new-instance v6, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v6, v10}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v11, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    move v13, v5

    :goto_3
    if-ge v13, v10, :cond_5

    add-int v14, v5, v13

    sub-int v15, v10, v13

    invoke-interface {v1, v14, v15, v11}, Landroidx/media3/extractor/ExtractorInput;->peek(II[B)I

    move-result v14

    if-ne v14, v9, :cond_4

    goto :goto_4

    :cond_4
    add-int/2addr v13, v14

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {v6, v13}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :try_start_0
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUtf8EncodedLong()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    iget v1, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    int-to-long v1, v1

    mul-long/2addr v7, v1

    goto :goto_5

    :catch_0
    move v4, v5

    :goto_5
    if-eqz v4, :cond_7

    iput-wide v7, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    goto/16 :goto_e

    :cond_7
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const-wide/32 v6, 0xf4240

    const v8, 0x8000

    if-ge v3, v8, :cond_b

    iget-object v10, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    sub-int/2addr v8, v3

    invoke-interface {v1, v10, v3, v8}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    if-ne v1, v9, :cond_9

    goto :goto_6

    :cond_9
    move v4, v5

    :goto_6
    if-nez v4, :cond_a

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_7

    :cond_a
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v1, v3

    if-nez v1, :cond_c

    iget-wide v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    mul-long/2addr v1, v6

    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v3, v3, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v3, v3

    div-long v11, v1, v3

    iget-object v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v13, 0x1

    iget v14, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    move v5, v9

    goto/16 :goto_e

    :cond_b
    move v4, v5

    :cond_c
    :goto_7
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge v3, v8, :cond_d

    sub-int/2addr v8, v3

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    sub-int/2addr v3, v1

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_d
    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_8
    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v8, v8, -0x10

    iget-object v9, v0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/PositionHolder;

    if-gt v3, v8, :cond_f

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v10, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    invoke-static {v2, v8, v10, v9}, Lokio/SegmentPool;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/PositionHolder;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    if-eqz v4, :cond_13

    :goto_9
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int v8, v4, v8

    if-gt v3, v8, :cond_12

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :try_start_1
    iget-object v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    invoke-static {v2, v4, v8, v9}, Lokio/SegmentPool;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/PositionHolder;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move v4, v5

    :goto_a
    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v10, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-le v8, v10, :cond_10

    move v4, v5

    :cond_10
    if-eqz v4, :cond_11

    :goto_b
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-wide v3, v9, Landroidx/media3/extractor/PositionHolder;->position:J

    goto :goto_d

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_c

    :cond_13
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_c
    move-wide v3, v12

    :goto_d
    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v8, v1

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v8, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr v1, v8

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long v8, v3, v12

    if-eqz v8, :cond_14

    iget-wide v8, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    mul-long/2addr v8, v6

    iget-object v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v6, v6, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v6, v6

    div-long v15, v8, v6

    iget-object v14, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v18, v1

    invoke-interface/range {v14 .. v20}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput v5, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iput-wide v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    :cond_14
    iget v0, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/16 v3, 0x10

    if-ge v0, v3, :cond_15

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v3, v1, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_15
    :goto_e
    return v5

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_17
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v9, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v6, v9}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    shr-int/lit8 v6, v2, 0x2

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/16 v9, 0x3ffe

    if-ne v6, v9, :cond_1a

    iput v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v20

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v3, v1, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    if-eqz v3, :cond_18

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v3, v1, v4, v9, v10}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(Ljava/lang/Object;IJ)V

    goto :goto_f

    :cond_18
    cmp-long v3, v20, v12

    if-eqz v3, :cond_19

    iget-wide v3, v1, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_19

    new-instance v3, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget v4, v0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-object v15, v3

    move-object/from16 v16, v1

    move/from16 v17, v4

    move-wide/from16 v18, v9

    invoke-direct/range {v15 .. v21}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;IJJ)V

    iput-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v3, v3, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    goto :goto_f

    :cond_19
    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-virtual {v1}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_f
    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput v14, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return v5

    :cond_1a
    const-string v0, "First frame does not start with sync code."

    invoke-static {v0, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1b
    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    move v6, v5

    :goto_10
    if-nez v6, :cond_24

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    new-instance v6, Landroidx/media3/common/ColorInfo$Builder;

    new-array v12, v9, [B

    invoke-direct {v6, v12, v4, v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iget-object v12, v6, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-interface {v1, v5, v9, v12}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v6}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    const/16 v14, 0x18

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    add-int/2addr v6, v9

    if-nez v13, :cond_1c

    const/16 v2, 0x26

    new-array v6, v2, [B

    invoke-interface {v1, v6, v5, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    new-instance v2, Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {v2, v6, v9}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>([BI)V

    move/from16 p2, v12

    goto/16 :goto_16

    :cond_1c
    if-eqz v2, :cond_23

    if-ne v13, v8, :cond_1d

    new-instance v13, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v13, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v14, v5, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-static {v13}, L_COROUTINE/_BOUNDARY;->readSeekTableMetadataBlock(Landroidx/media3/common/util/ParsableByteArray;)Lcom/airbnb/lottie/model/MutablePair;

    move-result-object v25

    new-instance v6, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v13, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v14, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v15, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v10, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v4, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v3, v2, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v8, v2, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    move/from16 p2, v12

    iget-wide v11, v2, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    move/from16 v18, v15

    move-object v15, v6

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v19, v10

    move/from16 v20, v4

    move/from16 v21, v3

    move/from16 v22, v8

    move-wide/from16 v23, v11

    move-object/from16 v26, v2

    invoke-direct/range {v15 .. v26}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/airbnb/lottie/model/MutablePair;Landroidx/media3/common/Metadata;)V

    move-object v2, v6

    goto/16 :goto_16

    :cond_1d
    move/from16 p2, v12

    iget-object v3, v2, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    if-ne v13, v9, :cond_20

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v8, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v8, v5, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v4, v5, v5}, Lcom/adobe/xmp/XMPUtils;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object v4

    iget-object v4, v4, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/xmp/XMPUtils;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v4

    if-nez v3, :cond_1e

    move-object/from16 v21, v4

    goto :goto_12

    :cond_1e
    if-nez v4, :cond_1f

    goto :goto_11

    :cond_1f
    iget-object v4, v4, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {v3, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v3

    :goto_11
    move-object/from16 v21, v3

    :goto_12
    new-instance v3, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v11, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v12, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v13, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v14, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v15, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v4, v2, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v6, v2, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    move/from16 v17, v6

    iget-wide v5, v2, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    move-object v10, v3

    move/from16 v16, v4

    move-wide/from16 v18, v5

    move-object/from16 v20, v2

    invoke-direct/range {v10 .. v21}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/airbnb/lottie/model/MutablePair;Landroidx/media3/common/Metadata;)V

    goto :goto_15

    :cond_20
    const/4 v4, 0x6

    if-ne v13, v4, :cond_22

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v8, 0x0

    invoke-interface {v1, v5, v8, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {v4}, Landroidx/media3/extractor/metadata/flac/PictureFrame;->fromPictureBlock(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/flac/PictureFrame;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v4

    new-instance v5, Landroidx/media3/common/Metadata;

    invoke-direct {v5, v4}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    if-nez v3, :cond_21

    :goto_13
    move-object/from16 v21, v5

    goto :goto_14

    :cond_21
    iget-object v4, v5, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    invoke-virtual {v3, v4}, Landroidx/media3/common/Metadata;->copyWithAppendedEntries([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v5

    goto :goto_13

    :goto_14
    new-instance v3, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v11, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v12, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v13, v2, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v14, v2, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v15, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v4, v2, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v5, v2, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, v2, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Lcom/airbnb/lottie/model/MutablePair;

    move-object v10, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v18, v8

    move-object/from16 v20, v2

    invoke-direct/range {v10 .. v21}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLcom/airbnb/lottie/model/MutablePair;Landroidx/media3/common/Metadata;)V

    :goto_15
    move-object v2, v3

    goto :goto_16

    :cond_22
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_16
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iput-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    move/from16 v6, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x7

    goto/16 :goto_10

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_24
    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    iget-object v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v2, v7, v3}, Landroidx/media3/extractor/FlacStreamMetadata;->getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v2, 0x4

    iput v2, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v3, 0x0

    return v3

    :cond_25
    move v3, v5

    move v2, v9

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v4, 0x664c6143

    cmp-long v1, v1, v4

    if-nez v1, :cond_26

    const/4 v1, 0x3

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return v3

    :cond_26
    const-string v0, "Failed to read FLAC stream marker."

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_27
    move v3, v5

    array-length v2, v7

    invoke-interface {v1, v3, v2, v7}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iput v6, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return v3

    :cond_28
    move-object v2, v3

    iget-boolean v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    if-eqz v3, :cond_29

    move-object v3, v2

    goto :goto_17

    :cond_29
    sget-object v3, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    :goto_17
    new-instance v6, Lcom/google/gson/FieldAttributes;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Lcom/google/gson/FieldAttributes;-><init>(I)V

    invoke-virtual {v6, v1, v3}, Lcom/google/gson/FieldAttributes;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)Landroidx/media3/common/Metadata;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v6, v3, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length v6, v6

    if-nez v6, :cond_2b

    :cond_2a
    move-object v3, v2

    :cond_2b
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v2, v6

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput-object v3, v0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v0, 0x0

    return v0
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    sget-object p0, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/gson/FieldAttributes;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/gson/FieldAttributes;-><init>(I)V

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/FieldAttributes;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)Landroidx/media3/common/Metadata;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/Metadata;->entries:[Landroidx/media3/common/Metadata$Entry;

    array-length p0, p0

    :cond_0
    new-instance p0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide p0

    const-wide/32 v0, 0x664c6143

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
