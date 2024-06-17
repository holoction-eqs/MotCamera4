.class public final Landroidx/media3/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public averageFrameSize:I

.field public extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public firstFramePosition:J

.field public firstSampleTimestampUs:J

.field public final flags:I

.field public hasCalculatedAverageFrameSize:Z

.field public hasOutputSeekMap:Z

.field public final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public final reader:Landroidx/media3/extractor/ts/AdtsReader;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field public final scratchBits:Landroidx/media3/common/ColorInfo$Builder;

.field public startedPacket:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->flags:I

    new-instance v0, Landroidx/media3/extractor/ts/AdtsReader;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v3, 0x800

    invoke-direct {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->averageFrameSize:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstFramePosition:J

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v3, Landroidx/media3/common/ColorInfo$Builder;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object v3, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media3/common/ColorInfo$Builder;

    return-void
.end method


# virtual methods
.method public final init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;-><init>(II)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/ts/AdtsReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final peekId3Header(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v4, 0xa

    invoke-interface {p1, v0, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->peekFully(II[B)V

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_1

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-wide v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstFramePosition:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstFramePosition:J

    :cond_0
    return v1

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0
.end method

.method public final read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v6

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->flags:I

    and-int/lit8 v3, v2, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v3, :cond_1

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v12

    :goto_1
    const/4 v13, -0x1

    const/4 v14, 0x4

    if-eqz v4, :cond_c

    iget-object v4, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media3/common/ColorInfo$Builder;

    iget-object v5, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    if-eqz v8, :cond_2

    goto/16 :goto_6

    :cond_2
    iput v13, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->averageFrameSize:I

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    const-wide/16 v15, 0x0

    cmp-long v8, v8, v15

    if-nez v8, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/ts/AdtsExtractor;->peekId3Header(Landroidx/media3/extractor/ExtractorInput;)I

    :cond_3
    move v8, v11

    :goto_2
    :try_start_0
    iget-object v9, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v10, 0x2

    invoke-interface {v1, v9, v11, v10, v12}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v5, v11}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    const v10, 0xfff6

    and-int/2addr v9, v10

    const v10, 0xfff0

    if-ne v9, v10, :cond_4

    move v9, v12

    goto :goto_3

    :cond_4
    move v9, v11

    :goto_3
    if-nez v9, :cond_5

    move v8, v11

    goto :goto_4

    :cond_5
    iget-object v9, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v1, v9, v11, v14, v12}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    const/16 v9, 0xe

    invoke-virtual {v4, v9}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/16 v9, 0xd

    invoke-virtual {v4, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    const/4 v10, 0x6

    if-le v9, v10, :cond_9

    int-to-long v13, v9

    add-long/2addr v15, v13

    add-int/lit8 v8, v8, 0x1

    const/16 v10, 0x3e8

    if-ne v8, v10, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, -0x6

    invoke-interface {v1, v9, v12}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v13, -0x1

    const/4 v14, 0x4

    goto :goto_2

    :cond_9
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    const-string v4, "Malformed ADTS stream"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v4

    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    if-lez v8, :cond_b

    int-to-long v4, v8

    div-long v4, v15, v4

    long-to-int v4, v4

    iput v4, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->averageFrameSize:I

    const/4 v4, -0x1

    goto :goto_5

    :cond_b
    const/4 v4, -0x1

    iput v4, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->averageFrameSize:I

    :goto_5
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    goto :goto_7

    :cond_c
    :goto_6
    move v4, v13

    :goto_7
    iget-object v13, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v13, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v8, 0x800

    invoke-interface {v1, v5, v11, v8}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v1

    if-ne v1, v4, :cond_d

    move v14, v12

    goto :goto_8

    :cond_d
    move v14, v11

    :goto_8
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    iget-object v15, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    if-eqz v4, :cond_e

    goto :goto_a

    :cond_e
    and-int/2addr v2, v12

    if-eqz v2, :cond_f

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->averageFrameSize:I

    if-lez v2, :cond_f

    move v2, v12

    goto :goto_9

    :cond_f
    move v2, v11

    :goto_9
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_10

    iget-wide v8, v15, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    cmp-long v8, v8, v4

    if-nez v8, :cond_10

    if-nez v14, :cond_10

    :goto_a
    move v2, v12

    move-object/from16 v18, v15

    goto :goto_d

    :cond_10
    if-eqz v2, :cond_12

    iget-wide v8, v15, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    cmp-long v2, v8, v4

    if-eqz v2, :cond_12

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    if-eqz v3, :cond_11

    move v10, v12

    goto :goto_b

    :cond_11
    move v10, v11

    :goto_b
    iget v5, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->averageFrameSize:I

    int-to-long v3, v5

    const-wide/16 v17, 0x8

    mul-long v3, v3, v17

    const-wide/32 v17, 0xf4240

    mul-long v3, v3, v17

    div-long/2addr v3, v8

    long-to-int v4, v3

    new-instance v8, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v11, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstFramePosition:J

    move-object v3, v8

    move-object/from16 v18, v15

    move-object v15, v8

    move-wide v8, v11

    invoke-direct/range {v3 .. v10}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(IIJJZ)V

    invoke-interface {v2, v15}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_c

    :cond_12
    move-object/from16 v18, v15

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v3, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v3, v4, v5}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :goto_c
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    :goto_d
    if-eqz v14, :cond_13

    const/4 v3, -0x1

    return v3

    :cond_13
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v13, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez v1, :cond_14

    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    move-object/from16 v6, v18

    const/4 v1, 0x4

    invoke-virtual {v6, v1, v4, v5}, Landroidx/media3/extractor/ts/AdtsReader;->packetStarted(IJ)V

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsExtractor;->startedPacket:Z

    goto :goto_e

    :cond_14
    move-object/from16 v6, v18

    :goto_e
    invoke-virtual {v6, v13}, Landroidx/media3/extractor/ts/AdtsReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    return v3
.end method

.method public final release()V
    .locals 0

    return-void
.end method

.method public final seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->startedPacket:Z

    iget-object p1, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->reader:Landroidx/media3/extractor/ts/AdtsReader;

    invoke-virtual {p1}, Landroidx/media3/extractor/ts/AdtsReader;->seek()V

    iput-wide p3, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    return-void
.end method

.method public final sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 10

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ts/AdtsExtractor;->peekId3Header(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    const/4 v1, 0x0

    move v4, v0

    move v2, v1

    move v3, v2

    :cond_0
    iget-object v5, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    move-object v7, p1

    check-cast v7, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v8, 0x2

    invoke-virtual {v7, v6, v1, v8, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const v8, 0xfff6

    and-int/2addr v6, v8

    const v8, 0xfff0

    const/4 v9, 0x1

    if-ne v6, v8, :cond_1

    move v6, v9

    goto :goto_0

    :cond_1
    move v6, v1

    :goto_0
    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, v9

    const/4 v6, 0x4

    if-lt v2, v6, :cond_3

    const/16 v8, 0xbc

    if-le v3, v8, :cond_3

    return v9

    :cond_3
    iget-object v5, v5, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v7, v5, v1, v6, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    iget-object v5, p0, Landroidx/media3/extractor/ts/AdtsExtractor;->scratchBits:Landroidx/media3/common/ColorInfo$Builder;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    iput v1, v7, Landroidx/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-virtual {v7, v4, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move v2, v1

    move v3, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v5, -0x6

    invoke-virtual {v7, v6, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    add-int/2addr v3, v5

    :goto_2
    sub-int v5, v4, v0

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_0

    return v1
.end method
