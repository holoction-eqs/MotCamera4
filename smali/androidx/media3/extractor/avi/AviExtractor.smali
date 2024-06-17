.class public final Landroidx/media3/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public aviHeader:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

.field public final chunkHeaderHolder:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field public chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

.field public currentChunkReader:Landroidx/media3/extractor/avi/ChunkReader;

.field public durationUs:J

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public hdrlSize:I

.field public idx1BodySize:I

.field public moviEnd:J

.field public moviStart:J

.field public pendingReposition:J

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public seekMapHasBeenOutput:Z

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    new-instance v0, Landroidx/work/InputMergerFactory$1;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/work/InputMergerFactory$1;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-array v0, v1, [Landroidx/media3/extractor/avi/ChunkReader;

    iput-object v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->moviStart:J

    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->moviEnd:J

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->hdrlSize:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->durationUs:J

    return-void
.end method


# virtual methods
.method public final getChunkReader(I)Landroidx/media3/extractor/avi/ChunkReader;
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    iget v4, v3, Landroidx/media3/extractor/avi/ChunkReader;->chunkId:I

    if-eq v4, p1, :cond_1

    iget v4, v3, Landroidx/media3/extractor/avi/ChunkReader;->alternativeChunkId:I

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    iput-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_1

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v7

    cmp-long v2, v9, v11

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v7

    long-to-int v2, v9

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v2, p2

    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    :goto_2
    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    if-eqz v2, :cond_3

    return v3

    :cond_3
    iget v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    const/4 v9, 0x0

    const v10, 0x69766f6d

    const/4 v11, 0x6

    const/16 v12, 0x10

    const/16 v13, 0x8

    const/4 v14, 0x3

    const/4 v15, 0x2

    const v7, 0x5453494c

    const-wide/16 v16, 0x8

    const/16 v8, 0xc

    iget-object v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-object v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    iget-wide v14, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviEnd:J

    cmp-long v2, v11, v14

    if-ltz v2, :cond_4

    const/4 v6, -0x1

    goto/16 :goto_6

    :cond_4
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->currentChunkReader:Landroidx/media3/extractor/avi/ChunkReader;

    if-eqz v2, :cond_9

    iget v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    iget-object v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v1, v4, v6}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    if-nez v4, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v6

    :goto_3
    if-eqz v1, :cond_8

    iget v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    if-lez v4, :cond_7

    iget-object v10, v2, Landroidx/media3/extractor/avi/ChunkReader;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    iget-wide v7, v2, Landroidx/media3/extractor/avi/ChunkReader;->durationUs:J

    int-to-long v11, v4

    mul-long/2addr v7, v11

    iget v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->streamHeaderChunkCount:I

    int-to-long v11, v5

    div-long v11, v7, v11

    iget-object v5, v2, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_6

    move v13, v3

    goto :goto_4

    :cond_6
    move v13, v6

    :goto_4
    iget v14, v2, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_7
    iget v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    add-int/2addr v4, v3

    iput v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    :cond_8
    if-eqz v1, :cond_f

    iput-object v9, v0, Landroidx/media3/extractor/avi/AviExtractor;->currentChunkReader:Landroidx/media3/extractor/avi/ChunkReader;

    goto :goto_6

    :cond_9
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    const-wide/16 v14, 0x1

    and-long/2addr v11, v14

    cmp-long v2, v11, v14

    if-nez v2, :cond_a

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_a
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v8, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    if-ne v2, v7, :cond_c

    invoke-virtual {v5, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    if-ne v0, v10, :cond_b

    move v13, v8

    :cond_b
    invoke-interface {v1, v13}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_6

    :cond_c
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    const v4, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v4, :cond_d

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    goto :goto_5

    :cond_d
    invoke-interface {v1, v13}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-virtual {v0, v2}, Landroidx/media3/extractor/avi/AviExtractor;->getChunkReader(I)Landroidx/media3/extractor/avi/ChunkReader;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_5
    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    goto :goto_6

    :cond_e
    iput v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    iput v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    iput-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->currentChunkReader:Landroidx/media3/extractor/avi/ChunkReader;

    :cond_f
    :goto_6
    return v6

    :pswitch_1
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-direct {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, v0, Landroidx/media3/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-interface {v1, v4, v6, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v1, v4

    if-ge v1, v12, :cond_10

    const-wide/16 v7, 0x0

    goto :goto_8

    :cond_10
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    int-to-long v9, v1

    iget-wide v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviStart:J

    cmp-long v1, v9, v7

    if-lez v1, :cond_11

    const-wide/16 v7, 0x0

    goto :goto_7

    :cond_11
    add-long v7, v7, v16

    :goto_7
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_8
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v1, v4

    if-lt v1, v12, :cond_15

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v9, v7

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/avi/AviExtractor;->getChunkReader(I)Landroidx/media3/extractor/avi/ChunkReader;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    and-int/2addr v4, v12

    if-ne v4, v12, :cond_14

    iget v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    iget-object v5, v1, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v5, v5

    if-ne v4, v5, :cond_13

    iget-object v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v5, v4

    mul-int/2addr v5, v14

    div-int/2addr v5, v15

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget-object v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v5, v4

    mul-int/2addr v5, v14

    div-int/2addr v5, v15

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    :cond_13
    iget-object v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v5, v1, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    aput-wide v9, v4, v5

    iget-object v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v9, v1, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    aput v9, v4, v5

    add-int/2addr v5, v3

    iput v5, v1, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    :cond_14
    iget v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    add-int/2addr v4, v3

    iput v4, v1, Landroidx/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    goto :goto_8

    :cond_15
    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length v2, v1

    move v4, v6

    :goto_9
    if-ge v4, v2, :cond_16

    aget-object v5, v1, v4

    iget-object v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v8, v5, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iput-object v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget-object v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v8, v5, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    iput-object v7, v5, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_16
    iput-boolean v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v2, v0, v15, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(Ljava/lang/Object;IJ)V

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput v11, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    iget-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviStart:J

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v6

    :pswitch_2
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v2, v6, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    const v4, 0x31786469

    if-ne v2, v4, :cond_17

    const/4 v1, 0x5

    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    iput v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->idx1BodySize:I

    goto :goto_a

    :cond_17
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    :goto_a
    return v6

    :pswitch_3
    iget-wide v13, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviStart:J

    const-wide/16 v19, -0x1

    cmp-long v2, v13, v19

    if-eqz v2, :cond_18

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    iget-wide v11, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviStart:J

    cmp-long v9, v13, v11

    if-eqz v9, :cond_18

    iput-wide v11, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v6

    :cond_18
    iget-object v9, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v6, v8, v9}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    iput v9, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    iput v9, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput v6, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    iget v9, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v11, 0x46464952

    if-ne v9, v11, :cond_19

    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v6

    :cond_19
    if-ne v9, v7, :cond_1e

    if-eq v5, v10, :cond_1a

    goto :goto_c

    :cond_1a
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviStart:J

    iget v4, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v4, v4

    add-long/2addr v7, v4

    add-long v7, v7, v16

    iput-wide v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviEnd:J

    iget-boolean v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    if-nez v4, :cond_1d

    iget-object v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->aviHeader:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->flags:I

    const/16 v2, 0x10

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_1b

    move v2, v3

    goto :goto_b

    :cond_1b
    move v2, v6

    :goto_b
    if-eqz v2, :cond_1c

    const/4 v2, 0x4

    iput v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    iget-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->moviEnd:J

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    move v0, v6

    goto/16 :goto_13

    :cond_1c
    iget-object v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v7, v0, Landroidx/media3/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v4, v7, v8}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v4}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    :cond_1d
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    const/4 v1, 0x6

    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    return v6

    :cond_1e
    :goto_c
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget v3, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v6

    :pswitch_4
    iget v2, v0, Landroidx/media3/extractor/avi/AviExtractor;->hdrlSize:I

    const/4 v4, 0x4

    sub-int/2addr v2, v4

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v5, v6, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const v1, 0x6c726468

    invoke-static {v1, v4}, Landroidx/media3/extractor/avi/ListChunk;->parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/ListChunk;

    move-result-object v2

    iget v4, v2, Landroidx/media3/extractor/avi/ListChunk;->type:I

    if-ne v4, v1, :cond_29

    const-class v1, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {v2, v1}, Landroidx/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    if-eqz v1, :cond_28

    iput-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->aviHeader:Landroidx/media3/extractor/avi/AviMainHeaderChunk;

    iget v4, v1, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->totalFrames:I

    int-to-long v4, v4

    iget v1, v1, Landroidx/media3/extractor/avi/AviMainHeaderChunk;->frameDurationUs:I

    int-to-long v7, v1

    mul-long/2addr v4, v7

    iput-wide v4, v0, Landroidx/media3/extractor/avi/AviExtractor;->durationUs:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Landroidx/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object v2

    move v4, v6

    :cond_1f
    :goto_d
    invoke-virtual {v2}, Lcom/google/common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v2}, Lcom/google/common/collect/AbstractIndexedListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/avi/AviChunk;

    invoke-interface {v5}, Landroidx/media3/extractor/avi/AviChunk;->getType()I

    move-result v7

    const v8, 0x6c727473

    if-ne v7, v8, :cond_1f

    check-cast v5, Landroidx/media3/extractor/avi/ListChunk;

    add-int/lit8 v7, v4, 0x1

    const-class v8, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v5, v8}, Landroidx/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    const-class v10, Landroidx/media3/extractor/avi/StreamFormatChunk;

    invoke-virtual {v5, v10}, Landroidx/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/avi/StreamFormatChunk;

    if-nez v8, :cond_20

    const-string v4, "Missing Stream Header"

    goto :goto_e

    :cond_20
    if-nez v10, :cond_21

    const-string v4, "Missing Stream Format"

    :goto_e
    const-string v5, "AviExtractor"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 p1, v7

    goto :goto_f

    :cond_21
    iget v11, v8, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->length:I

    int-to-long v11, v11

    iget v13, v8, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->scale:I

    move/from16 p1, v7

    int-to-long v6, v13

    const-wide/32 v16, 0xf4240

    mul-long v18, v6, v16

    iget v6, v8, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->rate:I

    int-to-long v6, v6

    move-wide/from16 v16, v11

    move-wide/from16 v20, v6

    invoke-static/range {v16 .. v21}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    iget-object v10, v10, Landroidx/media3/extractor/avi/StreamFormatChunk;->format:Landroidx/media3/common/Format;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11, v10}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    invoke-virtual {v11, v4}, Landroidx/media3/common/Format$Builder;->setId(I)V

    iget v12, v8, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    if-eqz v12, :cond_22

    iput v12, v11, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    :cond_22
    const-class v12, Landroidx/media3/extractor/avi/StreamNameChunk;

    invoke-virtual {v5, v12}, Landroidx/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/avi/StreamNameChunk;

    if-eqz v5, :cond_23

    iget-object v5, v5, Landroidx/media3/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    iput-object v5, v11, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    :cond_23
    iget-object v5, v10, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_25

    if-ne v5, v15, :cond_24

    goto :goto_10

    :cond_24
    :goto_f
    move-object v11, v9

    goto :goto_11

    :cond_25
    :goto_10
    iget-object v10, v0, Landroidx/media3/extractor/avi/AviExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v10, v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v10

    new-instance v12, Landroidx/media3/common/Format;

    invoke-direct {v12, v11}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v10, v12}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    new-instance v11, Landroidx/media3/extractor/avi/ChunkReader;

    iget v8, v8, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->length:I

    move-object/from16 v16, v11

    move/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v19, v6

    move/from16 v21, v8

    move-object/from16 v22, v10

    invoke-direct/range {v16 .. v22}, Landroidx/media3/extractor/avi/ChunkReader;-><init>(IIJILandroidx/media3/extractor/TrackOutput;)V

    iput-wide v6, v0, Landroidx/media3/extractor/avi/AviExtractor;->durationUs:J

    :goto_11
    if-eqz v11, :cond_26

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    move/from16 v4, p1

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_27
    move v4, v6

    new-array v2, v4, [Landroidx/media3/extractor/avi/ChunkReader;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/extractor/avi/ChunkReader;

    iput-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    iget-object v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iput v14, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    return v4

    :cond_28
    const-string v0, "AviHeader not found"

    invoke-static {v0, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected header list type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_5
    iget-object v2, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    iput v1, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    iput v1, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput v3, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    iget v1, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    if-ne v1, v7, :cond_2b

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    iput v1, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    const v2, 0x6c726468

    if-ne v1, v2, :cond_2a

    iget v1, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput v1, v0, Landroidx/media3/extractor/avi/AviExtractor;->hdrlSize:I

    iput v15, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    goto :goto_12

    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hdrl expected, found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LIST expected, found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v4, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/avi/AviExtractor;->sniff(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1, v8}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v3, v0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    :goto_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_2c
    const-string v0, "AVI Header List not found"

    invoke-static {v0, v9}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 5

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->pendingReposition:J

    const/4 p3, 0x0

    iput-object p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->currentChunkReader:Landroidx/media3/extractor/avi/ChunkReader;

    iget-object p3, p0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    iget v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->indexSize:I

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v3

    iget-object v4, v2, Landroidx/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v3, v4, v3

    :goto_1
    iput v3, v2, Landroidx/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->chunkReaders:[Landroidx/media3/extractor/avi/ChunkReader;

    array-length p1, p1

    if-nez p1, :cond_2

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    :goto_2
    return-void

    :cond_3
    const/4 p1, 0x6

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor;->state:I

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/avi/AviExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {p1, v1, v2, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p0

    const p1, 0x20495641

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
