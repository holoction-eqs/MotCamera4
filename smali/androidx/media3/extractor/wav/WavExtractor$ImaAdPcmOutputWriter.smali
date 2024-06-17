.class public final Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/wav/WavExtractor$OutputWriter;


# static fields
.field public static final INDEX_TABLE:[I

.field public static final STEP_TABLE:[I


# instance fields
.field public final decodedData:Landroidx/media3/common/util/ParsableByteArray;

.field public final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field public final format:Landroidx/media3/common/Format;

.field public final framesPerBlock:I

.field public final inputData:[B

.field public outputFrameCount:J

.field public pendingInputBytes:I

.field public pendingOutputBytes:I

.field public startTimeUs:J

.field public final targetSampleSizeFrames:I

.field public final trackOutput:Landroidx/media3/extractor/TrackOutput;

.field public final wavFormat:Landroidx/media3/extractor/wav/WavFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/wav/WavFormat;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object p3, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget p1, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p3, Landroidx/media3/extractor/wav/WavFormat;->extraData:Ljava/io/Serializable;

    check-cast v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    iget v1, p3, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    iget v2, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/lit8 v3, v1, 0x4

    sub-int v3, v2, v3

    mul-int/lit8 v3, v3, 0x8

    iget v4, p3, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int/2addr v4, v1

    div-int/2addr v3, v4

    add-int/2addr v3, p2

    if-ne v0, v3, :cond_0

    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    add-int p2, p1, v0

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p2, v0

    mul-int/2addr v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    mul-int/lit8 v3, v0, 0x2

    mul-int/2addr v3, v1

    mul-int/2addr v3, p2

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroidx/media3/common/util/ParsableByteArray;

    iget p2, p3, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    iget v2, p3, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x8

    div-int/2addr v2, v0

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v3, "audio/raw"

    iput-object v3, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v2, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v2, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    const/4 v2, 0x2

    mul-int/2addr p1, v2

    mul-int/2addr p1, v1

    iput p1, v0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget p1, p3, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    iput p1, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput p2, v0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v2, v0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Landroidx/media3/common/Format;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Expected frames per block: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final init(IJ)V
    .locals 8

    new-instance v7, Landroidx/media3/extractor/wav/WavSeekMap;

    iget-object v1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v2, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    int-to-long v3, p1

    move-object v0, v7

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/wav/WavSeekMap;-><init>(Landroidx/media3/extractor/wav/WavFormat;IJJ)V

    iget-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iget-object p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->format:Landroidx/media3/common/Format;

    invoke-interface {p1, p0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method

.method public final reset(J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iput v0, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public final sampleData(Landroidx/media3/extractor/ExtractorInput;J)Z
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v3, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v1, v3

    iget v3, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->targetSampleSizeFrames:I

    sub-int v1, v3, v1

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget v4, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->framesPerBlock:I

    add-int/2addr v1, v4

    const/4 v5, -0x1

    add-int/2addr v1, v5

    div-int/2addr v1, v4

    iget v6, v2, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v1, v6

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_0

    move-object v6, v2

    move v9, v3

    move v10, v4

    move-wide/from16 v2, p2

    move v4, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_0
    move-object v6, v2

    move v9, v3

    move v10, v4

    const/4 v11, 0x0

    move-wide/from16 v2, p2

    move v4, v1

    move-object/from16 v1, p1

    :goto_0
    iget-object v12, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->inputData:[B

    if-nez v11, :cond_2

    iget v13, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    if-ge v13, v4, :cond_2

    sub-int v13, v4, v13

    int-to-long v13, v13

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    iget v14, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    invoke-interface {v1, v12, v14, v13}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v12

    if-ne v12, v5, :cond_1

    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    iget v13, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget v2, v6, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    div-int/2addr v1, v2

    iget-object v2, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    if-lez v1, :cond_8

    const/4 v3, 0x0

    :goto_2
    iget-object v4, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->decodedData:Landroidx/media3/common/util/ParsableByteArray;

    if-ge v3, v1, :cond_7

    const/4 v5, 0x0

    :goto_3
    iget v13, v6, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    if-ge v5, v13, :cond_6

    iget-object v14, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v15, v6, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int v16, v3, v15

    mul-int/lit8 v17, v5, 0x4

    add-int v17, v17, v16

    mul-int/lit8 v16, v13, 0x4

    add-int v16, v16, v17

    div-int/2addr v15, v13

    add-int/lit8 v15, v15, -0x4

    add-int/lit8 v18, v17, 0x1

    aget-byte v7, v12, v18

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, v12, v17

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    add-int/lit8 v17, v17, 0x2

    aget-byte v8, v12, v17

    and-int/lit16 v8, v8, 0xff

    move/from16 p0, v11

    const/16 v11, 0x58

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    sget-object v17, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->STEP_TABLE:[I

    aget v19, v17, v8

    mul-int v20, v3, v10

    mul-int v20, v20, v13

    add-int v20, v20, v5

    mul-int/lit8 v20, v20, 0x2

    and-int/lit16 v11, v7, 0xff

    int-to-byte v11, v11

    aput-byte v11, v14, v20

    add-int/lit8 v11, v20, 0x1

    move/from16 p2, v8

    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    aput-byte v8, v14, v11

    move/from16 v8, p2

    move/from16 p2, v9

    const/4 v11, 0x0

    :goto_4
    mul-int/lit8 v9, v15, 0x2

    if-ge v11, v9, :cond_5

    div-int/lit8 v9, v11, 0x8

    div-int/lit8 v21, v11, 0x2

    rem-int/lit8 v21, v21, 0x4

    mul-int/2addr v9, v13

    mul-int/lit8 v9, v9, 0x4

    add-int v9, v9, v16

    add-int v9, v9, v21

    aget-byte v9, v12, v9

    and-int/lit16 v9, v9, 0xff

    rem-int/lit8 v21, v11, 0x2

    if-nez v21, :cond_3

    and-int/lit8 v9, v9, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v9, v9, 0x4

    :goto_5
    and-int/lit8 v21, v9, 0x7

    mul-int/lit8 v21, v21, 0x2

    const/16 v18, 0x1

    add-int/lit8 v21, v21, 0x1

    mul-int v21, v21, v19

    move-object/from16 v19, v12

    shr-int/lit8 v12, v21, 0x3

    and-int/lit8 v21, v9, 0x8

    if-eqz v21, :cond_4

    neg-int v12, v12

    :cond_4
    add-int/2addr v7, v12

    const/16 v12, -0x8000

    move/from16 p3, v15

    const/16 v15, 0x7fff

    invoke-static {v7, v12, v15}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v7

    mul-int/lit8 v12, v13, 0x2

    add-int v20, v12, v20

    and-int/lit16 v12, v7, 0xff

    int-to-byte v12, v12

    aput-byte v12, v14, v20

    add-int/lit8 v12, v20, 0x1

    shr-int/lit8 v15, v7, 0x8

    int-to-byte v15, v15

    aput-byte v15, v14, v12

    sget-object v12, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->INDEX_TABLE:[I

    aget v9, v12, v9

    add-int/2addr v8, v9

    const/16 v9, 0x58

    const/4 v12, 0x0

    invoke-static {v8, v12, v9}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v8

    aget v12, v17, v8

    add-int/lit8 v11, v11, 0x1

    move/from16 v15, p3

    move-object/from16 v22, v19

    move/from16 v19, v12

    move-object/from16 v12, v22

    goto :goto_4

    :cond_5
    move-object/from16 v19, v12

    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v11, p0

    move/from16 v9, p2

    goto/16 :goto_3

    :cond_6
    move/from16 p2, v9

    move/from16 p0, v11

    move-object/from16 v19, v12

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    move/from16 p2, v9

    move/from16 p0, v11

    mul-int/2addr v10, v1

    iget v3, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v10, v10, 0x2

    mul-int/2addr v10, v3

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget v3, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget v5, v6, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    mul-int/2addr v1, v5

    sub-int/2addr v3, v1

    iput v3, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingInputBytes:I

    iget v1, v4, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget-object v3, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v1, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v3, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    add-int/2addr v3, v1

    iput v3, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    iget v1, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v3, v1

    move/from16 v9, p2

    if-lt v3, v9, :cond_9

    invoke-virtual {v0, v9}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    goto :goto_6

    :cond_8
    move/from16 p0, v11

    :cond_9
    :goto_6
    if-eqz p0, :cond_a

    iget v1, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    iget v2, v2, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    if-lez v1, :cond_a

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->writeSampleMetadata(I)V

    :cond_a
    return p0
.end method

.method public final writeSampleMetadata(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->startTimeUs:J

    iget-wide v4, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    const-wide/32 v6, 0xf4240

    iget-object v10, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->wavFormat:Landroidx/media3/extractor/wav/WavFormat;

    iget v8, v10, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v8, v8

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    add-long v12, v2, v4

    iget v2, v10, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    mul-int/lit8 v3, v1, 0x2

    mul-int/2addr v3, v2

    iget v2, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int v16, v2, v3

    iget-object v11, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move v15, v3

    invoke-interface/range {v11 .. v17}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v4, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    int-to-long v1, v1

    add-long/2addr v4, v1

    iput-wide v4, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->outputFrameCount:J

    iget v1, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroidx/media3/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;->pendingOutputBytes:I

    return-void
.end method
