.class public final Landroidx/media3/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Landroidx/media3/common/Format;

.field public formatId:Ljava/lang/String;

.field public final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public syncBytes:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_19

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v10, v0, Landroidx/media3/extractor/ts/DtsReader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v3, :cond_15

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_2

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    iget v4, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    iget v13, v0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    if-ne v3, v13, :cond_0

    iget-wide v10, v0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v2

    if-eqz v2, :cond_1

    iget-object v9, v0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v2, v0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    iget-wide v4, v0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    :cond_1
    iput v8, v0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    iget-object v3, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v11, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    const/16 v12, 0x12

    rsub-int/lit8 v11, v11, 0x12

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v11, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {v1, v11, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v3, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    if-ne v3, v12, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v8

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget-object v3, v0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    const/16 v11, 0xe

    const/16 v14, 0x1f

    const/4 v15, -0x2

    const/4 v5, -0x1

    if-nez v3, :cond_d

    iget-object v3, v0, Landroidx/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    aget-byte v9, v2, v8

    const/16 v12, 0x7f

    const/4 v13, 0x0

    if-ne v9, v12, :cond_5

    new-instance v9, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v9, v2, v4, v13}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    array-length v9, v2

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    aget-byte v12, v9, v8

    if-eq v12, v15, :cond_7

    if-ne v12, v5, :cond_6

    goto :goto_2

    :cond_6
    move v12, v8

    goto :goto_3

    :cond_7
    :goto_2
    move v12, v4

    :goto_3
    if-eqz v12, :cond_8

    move v12, v8

    :goto_4
    array-length v15, v9

    sub-int/2addr v15, v4

    if-ge v12, v15, :cond_8

    aget-byte v15, v9, v12

    add-int/lit8 v16, v12, 0x1

    aget-byte v17, v9, v16

    aput-byte v17, v9, v12

    aput-byte v15, v9, v16

    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    :cond_8
    new-instance v12, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v12, v9, v4, v13}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    aget-byte v15, v9, v8

    if-ne v15, v14, :cond_a

    new-instance v15, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v15, v9, v4, v13}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    :goto_5
    invoke-virtual {v15}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v14

    const/16 v8, 0x10

    if-lt v14, v8, :cond_a

    invoke-virtual {v15, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v15, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    and-int/lit16 v8, v8, 0x3fff

    iget v14, v12, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    rsub-int/lit8 v14, v14, 0x8

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v13, v12, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    rsub-int/lit8 v18, v13, 0x8

    sub-int v18, v18, v14

    const v19, 0xff00

    shr-int v13, v19, v13

    shl-int v19, v4, v18

    add-int/lit8 v19, v19, -0x1

    or-int v13, v13, v19

    iget-object v7, v12, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    iget v5, v12, Landroidx/media3/common/ColorInfo$Builder;->colorSpace:I

    aget-byte v21, v7, v5

    and-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v7, v5

    rsub-int/lit8 v14, v14, 0xe

    ushr-int v21, v8, v14

    shl-int v18, v21, v18

    or-int v13, v13, v18

    int-to-byte v13, v13

    aput-byte v13, v7, v5

    add-int/2addr v5, v4

    :goto_6
    if-le v14, v6, :cond_9

    iget-object v7, v12, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v14, -0x8

    ushr-int v6, v8, v14

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    move v5, v13

    const/16 v6, 0x8

    goto :goto_6

    :cond_9
    rsub-int/lit8 v6, v14, 0x8

    iget-object v7, v12, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    aget-byte v13, v7, v5

    shl-int v21, v4, v6

    const/16 v20, -0x1

    add-int/lit8 v21, v21, -0x1

    and-int v13, v13, v21

    int-to-byte v13, v13

    aput-byte v13, v7, v5

    shl-int v14, v4, v14

    sub-int/2addr v14, v4

    and-int/2addr v8, v14

    shl-int v6, v8, v6

    or-int/2addr v6, v13

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    invoke-virtual {v12, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->assertValidOffset()V

    const/4 v5, -0x1

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v13, 0x0

    goto :goto_5

    :cond_a
    array-length v5, v9

    invoke-virtual {v12, v9, v5}, Landroidx/media3/common/ColorInfo$Builder;->reset([BI)V

    move-object v9, v12

    :goto_7
    const/16 v5, 0x3c

    invoke-virtual {v9, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v5, 0x6

    invoke-virtual {v9, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    sget-object v5, Landroidx/media3/extractor/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    sget-object v6, Landroidx/media3/extractor/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v6, v6, v7

    const/4 v7, 0x5

    invoke-virtual {v9, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v8

    const/16 v7, 0x1d

    if-lt v8, v7, :cond_b

    const/4 v7, -0x1

    const/4 v8, 0x2

    goto :goto_8

    :cond_b
    sget-object v7, Landroidx/media3/extractor/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    aget v7, v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x2

    div-int/2addr v7, v8

    :goto_8
    const/16 v12, 0xa

    invoke-virtual {v9, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v9, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    if-lez v9, :cond_c

    move v8, v4

    goto :goto_9

    :cond_c
    const/4 v8, 0x0

    :goto_9
    add-int/2addr v5, v8

    new-instance v8, Landroidx/media3/common/Format$Builder;

    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v3, v8, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    const-string v3, "audio/vnd.dts"

    iput-object v3, v8, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v7, v8, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v5, v8, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v6, v8, Landroidx/media3/common/Format$Builder;->sampleRate:I

    const/4 v3, 0x0

    iput-object v3, v8, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, v0, Landroidx/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    iput-object v3, v8, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v3, Landroidx/media3/common/Format;

    invoke-direct {v3, v8}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v3, v0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    iget-object v5, v0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v5, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    move v3, v8

    :goto_a
    aget-byte v5, v2, v3

    const/4 v3, 0x7

    const/4 v6, -0x2

    if-eq v5, v6, :cond_10

    const/4 v6, -0x1

    if-eq v5, v6, :cond_f

    const/16 v6, 0x1f

    if-eq v5, v6, :cond_e

    const/4 v6, 0x5

    aget-byte v7, v2, v6

    const/4 v6, 0x3

    and-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0xc

    const/4 v7, 0x6

    aget-byte v8, v2, v7

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x4

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    aget-byte v8, v2, v3

    goto :goto_c

    :cond_e
    const/4 v6, 0x3

    const/4 v7, 0x6

    const/4 v9, 0x4

    aget-byte v8, v2, v7

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0xc

    aget-byte v7, v2, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v9

    or-int/2addr v6, v7

    const/16 v7, 0x8

    aget-byte v7, v2, v7

    goto :goto_b

    :cond_f
    const/4 v6, 0x3

    const/4 v9, 0x4

    aget-byte v7, v2, v3

    and-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0xc

    const/4 v7, 0x6

    aget-byte v8, v2, v7

    and-int/lit16 v7, v8, 0xff

    shl-int/2addr v7, v9

    or-int/2addr v6, v7

    const/16 v7, 0x9

    aget-byte v7, v2, v7

    :goto_b
    const/16 v8, 0x3c

    and-int/2addr v7, v8

    const/4 v8, 0x2

    shr-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/2addr v6, v4

    move v7, v4

    goto :goto_d

    :cond_10
    const/4 v9, 0x4

    aget-byte v6, v2, v9

    const/4 v7, 0x3

    and-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0xc

    aget-byte v7, v2, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v9

    or-int/2addr v6, v7

    const/4 v7, 0x6

    aget-byte v8, v2, v7

    :goto_c
    and-int/lit16 v7, v8, 0xf0

    shr-int/2addr v7, v9

    or-int/2addr v6, v7

    add-int/2addr v6, v4

    const/4 v7, 0x0

    :goto_d
    if-eqz v7, :cond_11

    mul-int/lit8 v6, v6, 0x10

    div-int/2addr v6, v11

    :cond_11
    iput v6, v0, Landroidx/media3/extractor/ts/DtsReader;->sampleSize:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_14

    const/4 v6, -0x1

    if-eq v5, v6, :cond_13

    const/16 v6, 0x1f

    if-eq v5, v6, :cond_12

    const/4 v5, 0x4

    aget-byte v3, v2, v5

    and-int/2addr v3, v4

    const/4 v6, 0x6

    shl-int/2addr v3, v6

    const/4 v7, 0x5

    aget-byte v2, v2, v7

    goto :goto_f

    :cond_12
    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x5

    aget-byte v7, v2, v7

    and-int/2addr v3, v7

    shl-int/2addr v3, v5

    aget-byte v2, v2, v6

    goto :goto_e

    :cond_13
    const/4 v5, 0x4

    aget-byte v6, v2, v5

    and-int/2addr v6, v3

    shl-int/lit8 v5, v6, 0x4

    aget-byte v2, v2, v3

    move v3, v5

    :goto_e
    const/16 v5, 0x3c

    and-int/2addr v2, v5

    goto :goto_10

    :cond_14
    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v3, v2, v3

    and-int/2addr v3, v4

    shl-int/2addr v3, v6

    aget-byte v2, v2, v5

    :goto_f
    and-int/lit16 v2, v2, 0xfc

    :goto_10
    const/4 v5, 0x2

    shr-int/2addr v2, v5

    or-int/2addr v2, v3

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-object v4, v0, Landroidx/media3/extractor/ts/DtsReader;->format:Landroidx/media3/common/Format;

    iget v4, v4, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v0, Landroidx/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v3, 0x12

    invoke-interface {v2, v3, v10}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x2

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    :cond_15
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_18

    iget v2, v0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    or-int/2addr v2, v5

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    const v5, 0x7ffe8001

    if-eq v2, v5, :cond_17

    const v5, -0x180fe80

    if-eq v2, v5, :cond_17

    const v5, 0x1fffe800

    if-eq v2, v5, :cond_17

    const v5, -0xe0ff18

    if-ne v2, v5, :cond_16

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    goto :goto_12

    :cond_17
    :goto_11
    move v5, v4

    :goto_12
    if-eqz v5, :cond_15

    iget-object v3, v10, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v5, 0x3

    aput-byte v2, v3, v5

    const/4 v2, 0x4

    iput v2, v0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    const/4 v7, 0x0

    iput v7, v0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    move v8, v4

    goto :goto_13

    :cond_18
    const/4 v7, 0x0

    move v8, v7

    :goto_13
    if-eqz v8, :cond_0

    iput v4, v0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_0

    :cond_19
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 1

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget p2, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/DtsReader;->output:Landroidx/media3/extractor/TrackOutput;

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

    iput-wide p2, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->bytesRead:I

    iput v0, p0, Landroidx/media3/extractor/ts/DtsReader;->syncBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method
