.class public final Landroidx/media3/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public audioMuxVersionA:I

.field public bytesRead:I

.field public channelCount:I

.field public codecs:Ljava/lang/String;

.field public format:Landroidx/media3/common/Format;

.field public formatId:Ljava/lang/String;

.field public frameLengthType:I

.field public final language:Ljava/lang/String;

.field public numSubframes:I

.field public otherDataLenBits:J

.field public otherDataPresent:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public final sampleBitArray:Landroidx/media3/common/ColorInfo$Builder;

.field public final sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public sampleDurationUs:J

.field public sampleRateHz:I

.field public sampleSize:I

.field public secondHeaderByte:I

.field public state:I

.field public streamMuxRead:Z

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->language:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    iget-object p1, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media3/common/ColorInfo$Builder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_1e

    iget v3, v0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    const/4 v4, 0x1

    const/16 v5, 0x56

    if-eqz v3, :cond_1d

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v3, v4, :cond_1a

    const/4 v5, 0x3

    const/16 v8, 0x8

    iget-object v9, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleDataBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v10, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleBitArray:Landroidx/media3/common/ColorInfo$Builder;

    if-eq v3, v6, :cond_18

    if-ne v3, v5, :cond_17

    iget v3, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleSize:I

    iget v11, v0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v3, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v10, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v11, v0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {v1, v11, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v3, v0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    iget v2, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleSize:I

    if-ne v3, v2, :cond_0

    invoke-virtual {v10, v7}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    iput-boolean v4, v0, Landroidx/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    invoke-virtual {v10, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {v10, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v7

    :goto_1
    iput v11, v0, Landroidx/media3/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v11, :cond_e

    if-ne v2, v4, :cond_2

    invoke-virtual {v10, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    add-int/2addr v11, v4

    mul-int/2addr v11, v8

    invoke-virtual {v10, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    :cond_2
    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    iput v12, v0, Landroidx/media3/extractor/ts/LatmReader;->numSubframes:I

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    invoke-virtual {v10, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v14

    if-nez v13, :cond_c

    if-nez v14, :cond_c

    if-nez v2, :cond_3

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->getPosition()I

    move-result v13

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v14

    invoke-static {v10, v4}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/common/ColorInfo$Builder;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v15

    iget-object v7, v15, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v7, v0, Landroidx/media3/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    iget v7, v15, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v7, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleRateHz:I

    iget v7, v15, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v7, v0, Landroidx/media3/extractor/ts/LatmReader;->channelCount:I

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v7

    sub-int/2addr v14, v7

    invoke-virtual {v10, v13}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    add-int/lit8 v7, v14, 0x7

    div-int/2addr v7, v8

    new-array v7, v7, [B

    invoke-virtual {v10, v14, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I[B)V

    new-instance v13, Landroidx/media3/common/Format$Builder;

    invoke-direct {v13}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v14, v0, Landroidx/media3/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    iput-object v14, v13, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v14, "audio/mp4a-latm"

    iput-object v14, v13, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v14, v0, Landroidx/media3/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    iput-object v14, v13, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v14, v0, Landroidx/media3/extractor/ts/LatmReader;->channelCount:I

    iput v14, v13, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v14, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleRateHz:I

    iput v14, v13, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v13, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iget-object v7, v0, Landroidx/media3/extractor/ts/LatmReader;->language:Ljava/lang/String;

    iput-object v7, v13, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v13}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v13, v0, Landroidx/media3/extractor/ts/LatmReader;->format:Landroidx/media3/common/Format;

    invoke-virtual {v7, v13}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    iput-object v7, v0, Landroidx/media3/extractor/ts/LatmReader;->format:Landroidx/media3/common/Format;

    iget v13, v7, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v13, v13

    const-wide/32 v16, 0x3d090000

    div-long v13, v16, v13

    iput-wide v13, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleDurationUs:J

    iget-object v13, v0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v13, v7}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v10, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    add-int/2addr v7, v4

    mul-int/2addr v7, v8

    invoke-virtual {v10, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    int-to-long v13, v7

    long-to-int v7, v13

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v13

    invoke-static {v10, v4}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/common/ColorInfo$Builder;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v14

    iget-object v15, v14, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v15, v0, Landroidx/media3/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    iget v15, v14, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v15, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleRateHz:I

    iget v14, v14, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v14, v0, Landroidx/media3/extractor/ts/LatmReader;->channelCount:I

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v7, v13

    invoke-virtual {v10, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_4
    :goto_2
    invoke-virtual {v10, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    iput v7, v0, Landroidx/media3/extractor/ts/LatmReader;->frameLengthType:I

    if-eqz v7, :cond_8

    if-eq v7, v4, :cond_7

    if-eq v7, v5, :cond_9

    if-eq v7, v12, :cond_9

    const/4 v5, 0x5

    if-eq v7, v5, :cond_9

    if-eq v7, v11, :cond_6

    const/4 v5, 0x7

    if-ne v7, v5, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    :goto_3
    move v11, v4

    goto :goto_4

    :cond_7
    const/16 v11, 0x9

    goto :goto_4

    :cond_8
    move v11, v8

    :cond_9
    :goto_4
    invoke-virtual {v10, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v5

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/LatmReader;->otherDataPresent:Z

    const-wide/16 v11, 0x0

    iput-wide v11, v0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    if-eqz v5, :cond_b

    if-ne v2, v4, :cond_a

    invoke-virtual {v10, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    add-int/2addr v2, v4

    mul-int/2addr v2, v8

    invoke-virtual {v10, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_5

    :cond_a
    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    iget-wide v4, v0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    shl-long/2addr v4, v8

    invoke-virtual {v10, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    if-nez v2, :cond_a

    :cond_b
    :goto_5
    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v10, v8}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_6

    :cond_c
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_e
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v2, :cond_10

    goto/16 :goto_8

    :cond_10
    :goto_6
    iget v2, v0, Landroidx/media3/extractor/ts/LatmReader;->audioMuxVersionA:I

    if-nez v2, :cond_16

    iget v2, v0, Landroidx/media3/extractor/ts/LatmReader;->numSubframes:I

    if-nez v2, :cond_15

    iget v2, v0, Landroidx/media3/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v2, :cond_14

    const/4 v2, 0x0

    :cond_11
    invoke-virtual {v10, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_11

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->getPosition()I

    move-result v3

    and-int/lit8 v4, v3, 0x7

    if-nez v4, :cond_12

    shr-int/lit8 v3, v3, 0x3

    goto :goto_7

    :cond_12
    iget-object v3, v9, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    mul-int/lit8 v4, v2, 0x8

    invoke-virtual {v10, v4, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I[B)V

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v9, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, v0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2, v9}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-wide v3, v0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_13

    iget-object v5, v0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move-wide/from16 v17, v3

    move/from16 v20, v2

    invoke-interface/range {v16 .. v22}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v2, v0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    iget-wide v4, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    :cond_13
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v2, :cond_1c

    iget-wide v2, v0, Landroidx/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v2, v2

    invoke-virtual {v10, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_8

    :cond_14
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-static {v3, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_18
    iget v2, v0, Landroidx/media3/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v2, v2, -0xe1

    shl-int/2addr v2, v8

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/ts/LatmReader;->sampleSize:I

    iget-object v3, v9, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_19

    invoke-virtual {v9, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, v9, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v2

    invoke-virtual {v10, v2, v3}, Landroidx/media3/common/ColorInfo$Builder;->reset([BI)V

    :cond_19
    const/4 v2, 0x0

    iput v2, v0, Landroidx/media3/extractor/ts/LatmReader;->bytesRead:I

    iput v5, v0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0xe0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_1b

    iput v2, v0, Landroidx/media3/extractor/ts/LatmReader;->secondHeaderByte:I

    iput v6, v0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_1b
    if-eq v2, v5, :cond_0

    :cond_1c
    :goto_8
    const/4 v2, 0x0

    iput v2, v0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v5, :cond_0

    iput v4, v0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    return-void
.end method

.method public final packetFinished()V
    .locals 0

    return-void
.end method

.method public final packetStarted(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/LatmReader;->state:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/LatmReader;->timeUs:J

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    return-void
.end method
