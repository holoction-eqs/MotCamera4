.class public final Landroidx/media3/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

.field public foundAllTracks:Z

.field public foundAudioTrack:Z

.field public foundVideoTrack:Z

.field public hasOutputSeekMap:Z

.field public lastTrackPosition:J

.field public output:Landroidx/media3/extractor/ExtractorOutput;

.field public psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public final psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final psPayloadReaders:Landroid/util/SparseArray;

.field public final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    new-instance v0, Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/PsDurationReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_0

    move v4, v14

    goto :goto_0

    :cond_0
    move v4, v15

    :goto_0
    const/16 v6, 0x1ba

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->durationReader:Landroidx/media3/extractor/ts/PsDurationReader;

    if-eqz v4, :cond_c

    iget-boolean v4, v5, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    if-nez v4, :cond_c

    iget-boolean v0, v5, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    iget-object v3, v5, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const-wide/16 v10, 0x4e20

    if-nez v0, :cond_4

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v0, v9

    int-to-long v9, v0

    sub-long/2addr v7, v9

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    cmp-long v4, v9, v7

    if-eqz v4, :cond_1

    iput-wide v7, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v15, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v1, v1, -0x4

    :goto_1
    if-lt v1, v0, :cond_3

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v2, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v2

    if-ne v2, v6, :cond_2

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v7

    cmp-long v2, v7, v12

    if-eqz v2, :cond_2

    move-wide v12, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput-wide v12, v5, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    iput-boolean v14, v5, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    goto :goto_5

    :cond_4
    iget-wide v8, v5, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    cmp-long v0, v8, v12

    if-nez v0, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-boolean v0, v5, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v0, :cond_9

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    int-to-long v9, v15

    cmp-long v4, v7, v9

    if-eqz v4, :cond_6

    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->position:J

    goto :goto_6

    :cond_6
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v15, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    :goto_3
    add-int/lit8 v2, v1, -0x3

    if-ge v0, v2, :cond_8

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v2, v0}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v2

    if-ne v2, v6, :cond_7

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v7

    cmp-long v2, v7, v12

    if-eqz v2, :cond_7

    move-wide v12, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iput-wide v12, v5, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    iput-boolean v14, v5, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    :goto_5
    move v14, v15

    :goto_6
    move v15, v14

    goto :goto_8

    :cond_9
    iget-wide v2, v5, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long v0, v2, v12

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    iget-object v0, v5, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    iget-wide v6, v5, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    invoke-virtual {v0, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v6

    sub-long/2addr v6, v2

    iput-wide v6, v5, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid duration: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v5, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Using TIME_UNSET instead."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PsDurationReader"

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v12, v5, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    :cond_b
    :goto_7
    invoke-virtual {v5, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)V

    :goto_8
    return v15

    :cond_c
    const-wide/16 v8, 0x0

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v4, :cond_e

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    iget-wide v6, v5, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    cmp-long v4, v6, v12

    if-eqz v4, :cond_d

    new-instance v12, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v5, v5, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    move-object v4, v12

    const/16 v13, 0x1ba

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V

    iput-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v5, v12, Landroidx/media3/extractor/BinarySearchSeeker;->seekMap:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    goto :goto_9

    :cond_d
    const/16 v13, 0x1ba

    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v5, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_9
    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_a

    :cond_e
    move v13, v6

    :goto_a
    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v4, :cond_10

    iget-object v5, v4, Landroidx/media3/extractor/BinarySearchSeeker;->seekOperationParams:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v5, :cond_f

    move v5, v14

    goto :goto_b

    :cond_f
    move v5, v15

    :goto_b
    if-eqz v5, :cond_10

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_10
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    if-eqz v3, :cond_11

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v10, v2

    const-wide/16 v2, -0x1

    goto :goto_c

    :cond_11
    const-wide/16 v2, -0x1

    const-wide/16 v10, -0x1

    :goto_c
    cmp-long v2, v10, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_12

    const-wide/16 v4, 0x4

    cmp-long v2, v10, v4

    if-gez v2, :cond_12

    return v3

    :cond_12
    iget-object v2, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPacketBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v5, 0x4

    invoke-interface {v1, v4, v15, v5, v14}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v4

    if-nez v4, :cond_13

    return v3

    :cond_13
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    const/16 v6, 0x1b9

    if-ne v4, v6, :cond_14

    return v3

    :cond_14
    if-ne v4, v13, :cond_15

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v3, 0xa

    invoke-interface {v1, v15, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    goto :goto_d

    :cond_15
    const/16 v3, 0x1bb

    const/4 v6, 0x2

    const/4 v7, 0x6

    if-ne v4, v3, :cond_16

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v15, v6, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, v7

    :goto_d
    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v15

    :cond_16
    and-int/lit16 v3, v4, -0x100

    const/16 v8, 0x8

    shr-int/2addr v3, v8

    if-eq v3, v14, :cond_17

    invoke-interface {v1, v14}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return v15

    :cond_17
    and-int/lit16 v3, v4, 0xff

    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-boolean v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v10, :cond_1d

    if-nez v9, :cond_1b

    const/16 v10, 0xbd

    const/4 v11, 0x0

    if-ne v3, v10, :cond_18

    new-instance v10, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-direct {v10, v11}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_18
    and-int/lit16 v10, v3, 0xe0

    const/16 v12, 0xc0

    if-ne v10, v12, :cond_19

    new-instance v10, Landroidx/media3/extractor/ts/MpegAudioReader;

    invoke-direct {v10, v11}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    :goto_e
    iput-boolean v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    :goto_f
    move-object v11, v10

    goto :goto_10

    :cond_19
    and-int/lit16 v10, v3, 0xf0

    const/16 v12, 0xe0

    if-ne v10, v12, :cond_1a

    new-instance v10, Landroidx/media3/extractor/ts/H262Reader;

    invoke-direct {v10, v11}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    goto :goto_f

    :goto_10
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    :cond_1a
    if-eqz v11, :cond_1b

    new-instance v9, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;

    const/16 v10, 0x100

    invoke-direct {v9, v3, v10}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;-><init>(II)V

    iget-object v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v11, v10, v9}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    new-instance v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-object v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-direct {v9, v11, v10}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V

    invoke-virtual {v4, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz v3, :cond_1c

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz v3, :cond_1c

    iget-wide v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v10, 0x2000

    add-long/2addr v3, v10

    goto :goto_11

    :cond_1c
    const-wide/32 v3, 0x100000

    :goto_11
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v10

    cmp-long v3, v10, v3

    if-lez v3, :cond_1d

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/PsExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    :cond_1d
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v15, v6, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, v7

    if-nez v9, :cond_1e

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto/16 :goto_13

    :cond_1e
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v3, v15, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/ColorInfo$Builder;

    iget-object v1, v0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    const/4 v3, 0x3

    invoke-virtual {v2, v15, v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v0, v15}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v1

    iput-boolean v1, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v1

    iput-boolean v1, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    invoke-virtual {v0, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    iget-object v4, v0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-virtual {v2, v15, v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-virtual {v0, v15}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const-wide/16 v6, 0x0

    iput-wide v6, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    iget-boolean v1, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v1, :cond_20

    invoke-virtual {v0, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    int-to-long v6, v1

    const/16 v1, 0x1e

    shl-long/2addr v6, v1

    invoke-virtual {v0, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    shl-int/2addr v8, v4

    int-to-long v10, v8

    or-long/2addr v6, v10

    invoke-virtual {v0, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    int-to-long v10, v8

    or-long/2addr v6, v10

    invoke-virtual {v0, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    iget-boolean v8, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    iget-object v10, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-nez v8, :cond_1f

    iget-boolean v8, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v8, :cond_1f

    invoke-virtual {v0, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    int-to-long v11, v3

    shl-long/2addr v11, v1

    invoke-virtual {v0, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    shl-int/2addr v1, v4

    move-wide/from16 p0, v6

    int-to-long v5, v1

    or-long/2addr v5, v11

    invoke-virtual {v0, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v0, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    int-to-long v3, v1

    or-long/2addr v3, v5

    invoke-virtual {v0, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v10, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v14, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    goto :goto_12

    :cond_1f
    move-wide/from16 p0, v6

    :goto_12
    move-wide/from16 v0, p0

    invoke-virtual {v10, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    :cond_20
    iget-wide v0, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    iget-object v3, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(IJ)V

    invoke-interface {v3, v2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {v3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished()V

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :goto_13
    return v15
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 6

    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter p1

    :try_start_0
    iget-wide v0, p1, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p2, v4, v2

    if-eqz p2, :cond_1

    cmp-long p2, v4, p3

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move p2, v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    :cond_3
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_4
    move p1, v1

    :goto_2
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iput-boolean v1, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    iget-object p2, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    const/16 p0, 0xe

    new-array v0, p0, [B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p0, v6

    const/16 v6, 0x1ba

    if-eq v6, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    aget-byte v6, v0, p0

    and-int/lit16 v6, v6, 0xc4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    return v1

    :cond_1
    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_2

    return v1

    :cond_2
    aget-byte v6, v0, v5

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_3

    return v1

    :cond_3
    const/16 p0, 0x9

    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_4

    return v1

    :cond_4
    const/16 p0, 0xc

    aget-byte p0, v0, p0

    and-int/2addr p0, v4

    if-eq p0, v4, :cond_5

    return v1

    :cond_5
    const/16 p0, 0xd

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    invoke-virtual {p1, v0, v1, v4, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p0, p1

    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    if-ne v2, p0, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method
