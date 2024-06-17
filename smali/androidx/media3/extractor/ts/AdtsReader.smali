.class public final Landroidx/media3/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final ID3_IDENTIFIER:[B


# instance fields
.field public final adtsScratch:Landroidx/media3/common/ColorInfo$Builder;

.field public bytesRead:I

.field public currentFrameVersion:I

.field public currentOutput:Landroidx/media3/extractor/TrackOutput;

.field public currentSampleDuration:J

.field public final exposeId3:Z

.field public firstFrameSampleRateIndex:I

.field public firstFrameVersion:I

.field public formatId:Ljava/lang/String;

.field public foundFirstFrame:Z

.field public hasCrc:Z

.field public hasOutputFormat:Z

.field public final id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field public id3Output:Landroidx/media3/extractor/TrackOutput;

.field public final language:Ljava/lang/String;

.field public matchState:I

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public timeUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v1, 0x7

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/ColorInfo$Builder;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->exposeId3:Z

    iput-object p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    :cond_0
    :goto_0
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v4, v2, v3

    if-lez v4, :cond_2d

    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    const/16 v7, 0xd

    const/16 v8, 0x100

    const/4 v9, 0x7

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    iget-object v15, v0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/ColorInfo$Builder;

    if-eqz v5, :cond_d

    if-eq v5, v13, :cond_9

    const/16 v2, 0xa

    if-eq v5, v11, :cond_8

    if-eq v5, v12, :cond_3

    if-ne v5, v10, :cond_2

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    iget v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iget v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    if-ne v3, v2, :cond_0

    iget-wide v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    iget-object v15, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v3

    move/from16 v19, v2

    invoke-interface/range {v15 .. v21}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    :cond_1
    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iput v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    move v3, v9

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    iget-object v5, v6, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-virtual {v0, v3, v1, v5}, Landroidx/media3/extractor/ts/AdtsReader;->continueRead(ILandroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v6, v14}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v3, :cond_6

    invoke-virtual {v6, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    add-int/2addr v2, v13

    if-eq v2, v11, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Detected audio object type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but assuming AAC LC."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdtsReader"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v11

    :cond_5
    invoke-virtual {v6, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6, v12}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    iget v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    new-array v8, v11, [B

    shl-int/2addr v2, v12

    and-int/lit16 v2, v2, 0xf8

    shr-int/lit8 v15, v5, 0x1

    and-int/2addr v15, v9

    or-int/2addr v2, v15

    int-to-byte v2, v2

    aput-byte v2, v8, v14

    shl-int/lit8 v2, v5, 0x7

    and-int/lit16 v2, v2, 0x80

    shl-int/2addr v3, v12

    and-int/lit8 v3, v3, 0x78

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v8, v13

    invoke-static {v8}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v5, v0, Landroidx/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v5, "audio/mp4a-latm"

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget-object v5, v2, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget v5, v2, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput v5, v3, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v2, v2, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v2, v3, Landroidx/media3/common/Format$Builder;->sampleRate:I

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iget-object v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget v3, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v8, v3

    const-wide/32 v15, 0x3d090000

    div-long v8, v15, v8

    iput-wide v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    iget-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :goto_2
    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v6, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    sub-int/2addr v2, v11

    sub-int/2addr v2, v4

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, -0x2

    :cond_7
    iget-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iput-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    iput-wide v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    goto/16 :goto_0

    :cond_8
    iget-object v3, v15, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-virtual {v0, v2, v1, v3}, Landroidx/media3/extractor/ts/AdtsReader;->continueRead(ILandroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2, v15}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v3, 0x6

    invoke-virtual {v15, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v4

    add-int/2addr v4, v2

    iput v10, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iput-object v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    iput v4, v0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v2, v6, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v4, v3

    aput-byte v3, v2, v14

    invoke-virtual {v6, v11}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    iget v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    if-eq v2, v3, :cond_b

    iput-boolean v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iput v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    goto/16 :goto_0

    :cond_b
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v3, :cond_c

    iput-boolean v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    iget v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v3, v0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    :cond_c
    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    goto/16 :goto_0

    :cond_d
    iget-object v4, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :goto_3
    if-ge v3, v2, :cond_2c

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    iget v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    const/16 v12, 0x200

    if-ne v8, v12, :cond_25

    int-to-byte v8, v3

    and-int/lit16 v8, v8, 0xff

    const v19, 0xff00

    or-int v8, v8, v19

    const v20, 0xfff6

    and-int v8, v8, v20

    const v12, 0xfff0

    if-ne v8, v12, :cond_e

    move v8, v13

    goto :goto_4

    :cond_e
    move v8, v14

    :goto_4
    if-eqz v8, :cond_25

    iget-boolean v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v8, :cond_22

    add-int/lit8 v8, v5, -0x2

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v1, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v12, v6, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v9, v7

    if-ge v9, v13, :cond_f

    move v7, v14

    goto :goto_5

    :cond_f
    invoke-virtual {v1, v14, v13, v12}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    move v7, v13

    :goto_5
    if-nez v7, :cond_10

    :goto_6
    const/4 v11, -0x1

    goto/16 :goto_d

    :cond_10
    invoke-virtual {v6, v10}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    invoke-virtual {v6, v13}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    iget v9, v0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_11

    if-eq v7, v9, :cond_11

    goto :goto_8

    :cond_11
    iget v9, v0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v9, v12, :cond_15

    iget-object v9, v6, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v12, v10

    if-ge v12, v13, :cond_12

    move v9, v14

    goto :goto_7

    :cond_12
    invoke-virtual {v1, v14, v13, v9}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    move v9, v13

    :goto_7
    if-nez v9, :cond_13

    const/4 v12, 0x4

    goto :goto_a

    :cond_13
    invoke-virtual {v6, v11}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    iget v9, v0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v10, v9, :cond_14

    :goto_8
    goto :goto_6

    :cond_14
    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_15
    iget-object v9, v6, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v12

    const/4 v12, 0x4

    if-ge v10, v12, :cond_16

    move v9, v14

    goto :goto_9

    :cond_16
    invoke-virtual {v1, v14, v12, v9}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    move v9, v13

    :goto_9
    if-nez v9, :cond_17

    :goto_a
    const/4 v11, -0x1

    goto :goto_c

    :cond_17
    const/16 v9, 0xe

    invoke-virtual {v6, v9}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    const/4 v9, 0x7

    if-ge v10, v9, :cond_18

    goto :goto_6

    :cond_18
    iget-object v9, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/2addr v8, v10

    if-lt v8, v12, :cond_19

    goto :goto_a

    :cond_19
    aget-byte v10, v9, v8

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1c

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v12, :cond_1a

    goto :goto_c

    :cond_1a
    aget-byte v8, v9, v8

    and-int/lit16 v9, v8, 0xff

    or-int v9, v9, v19

    and-int v9, v9, v20

    const v10, 0xfff0

    if-ne v9, v10, :cond_1b

    move v9, v13

    goto :goto_b

    :cond_1b
    move v9, v14

    :goto_b
    if-eqz v9, :cond_21

    and-int/lit8 v8, v8, 0x8

    const/4 v9, 0x3

    shr-int/2addr v8, v9

    if-ne v8, v7, :cond_21

    goto :goto_c

    :cond_1c
    const/16 v7, 0x49

    if-eq v10, v7, :cond_1d

    goto :goto_d

    :cond_1d
    add-int/lit8 v7, v8, 0x1

    if-ne v7, v12, :cond_1e

    goto :goto_c

    :cond_1e
    aget-byte v7, v9, v7

    const/16 v10, 0x44

    if-eq v7, v10, :cond_1f

    goto :goto_d

    :cond_1f
    add-int/lit8 v8, v8, 0x2

    if-ne v8, v12, :cond_20

    goto :goto_c

    :cond_20
    aget-byte v7, v9, v8

    const/16 v8, 0x33

    if-ne v7, v8, :cond_21

    :goto_c
    move v7, v13

    goto :goto_e

    :cond_21
    :goto_d
    move v7, v14

    :goto_e
    if-eqz v7, :cond_26

    :cond_22
    and-int/lit8 v2, v3, 0x8

    const/4 v4, 0x3

    shr-int/2addr v2, v4

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_23

    move v2, v13

    goto :goto_f

    :cond_23
    move v2, v14

    :goto_f
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v2, :cond_24

    iput v13, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    goto :goto_10

    :cond_24
    const/4 v2, 0x3

    iput v2, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    goto :goto_10

    :cond_25
    const/4 v11, -0x1

    :cond_26
    iget v7, v0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v3, v7

    const/16 v8, 0x149

    if-eq v3, v8, :cond_2b

    const/16 v8, 0x1ff

    if-eq v3, v8, :cond_2a

    const/16 v8, 0x344

    if-eq v3, v8, :cond_29

    const/16 v8, 0x433

    if-eq v3, v8, :cond_28

    const/16 v8, 0x100

    if-eq v7, v8, :cond_27

    iput v8, v0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    const/4 v7, 0x2

    const/4 v9, 0x3

    goto :goto_13

    :cond_27
    const/4 v7, 0x2

    const/4 v9, 0x3

    goto :goto_12

    :cond_28
    const/4 v7, 0x2

    iput v7, v0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    const/4 v9, 0x3

    iput v9, v0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iput v14, v0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_10
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_29
    const/4 v7, 0x2

    const/16 v8, 0x100

    const/4 v9, 0x3

    const/16 v12, 0x400

    goto :goto_11

    :cond_2a
    const/4 v7, 0x2

    const/16 v8, 0x100

    const/4 v9, 0x3

    const/16 v12, 0x200

    goto :goto_11

    :cond_2b
    const/4 v7, 0x2

    const/16 v8, 0x100

    const/4 v9, 0x3

    const/16 v12, 0x300

    :goto_11
    iput v12, v0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    :goto_12
    move v3, v5

    :goto_13
    move v11, v7

    move v12, v9

    const/16 v7, 0xd

    const/4 v9, 0x7

    const/4 v10, 0x4

    goto/16 :goto_3

    :cond_2c
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto/16 :goto_0

    :cond_2d
    return-void
.end method

.method public final continueRead(ILandroidx/media3/common/util/ParsableByteArray;[B)Z
    .locals 2

    iget v0, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p2, v1, v0, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget v0, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string p2, "application/id3"

    iput-object p2, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance p2, Landroidx/media3/common/Format;

    invoke-direct {p2, p0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {p1, p2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    :goto_0
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

    iput-wide p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method
