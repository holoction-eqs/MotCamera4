.class public final Landroidx/media3/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Landroidx/media3/common/Format;

.field public formatId:Ljava/lang/String;

.field public final headerScratchBits:Landroidx/media3/common/ColorInfo$Builder;

.field public final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWas0B:Z

.field public output:Landroidx/media3/extractor/TrackOutput;

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    const/16 v1, 0x80

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media3/common/ColorInfo$Builder;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_3f

    iget v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/16 v7, 0xb

    iget-object v8, v0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v3, :cond_3a

    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleSize:I

    iget v5, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    iget v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v3, v9, :cond_0

    iget-wide v6, v0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    iget-object v5, v0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v5, v0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    :cond_2
    iput v4, v0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    :cond_3
    iget-object v3, v8, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    const/16 v10, 0x80

    rsub-int v9, v9, 0x80

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v9, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {v1, v9, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v3, v10, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media3/common/ColorInfo$Builder;

    invoke-virtual {v2, v4}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->getPosition()I

    move-result v3

    const/16 v9, 0x28

    invoke-virtual {v2, v9}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v9, 0x5

    invoke-virtual {v2, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    const/16 v12, 0xa

    if-le v11, v12, :cond_5

    move v11, v5

    goto :goto_2

    :cond_5
    move v11, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    sget-object v3, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    sget-object v13, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    const/4 v14, 0x3

    const/16 v15, 0x8

    const-string v4, "audio/ac3"

    const/16 v16, -0x1

    if-eqz v11, :cond_31

    const/16 v11, 0x10

    invoke-virtual {v2, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    if-eqz v10, :cond_8

    if-eq v10, v5, :cond_7

    if-eq v10, v6, :cond_6

    move/from16 v10, v16

    goto :goto_3

    :cond_6
    move v10, v6

    goto :goto_3

    :cond_7
    move v10, v5

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    add-int/2addr v7, v5

    mul-int/2addr v7, v6

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    if-ne v11, v14, :cond_9

    sget-object v13, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v16

    aget v13, v13, v16

    move/from16 v19, v14

    const/4 v6, 0x6

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v16

    sget-object v18, Landroidx/media3/extractor/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v18, v18, v16

    aget v13, v13, v11

    move/from16 v19, v16

    move/from16 v6, v18

    :goto_4
    mul-int/lit16 v5, v6, 0x100

    mul-int v16, v7, v13

    mul-int/lit8 v20, v6, 0x20

    div-int v16, v16, v20

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v21

    aget v3, v3, v9

    add-int v3, v3, v21

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v2, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_a
    if-nez v9, :cond_b

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v2, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_b
    const/4 v12, 0x1

    if-ne v10, v12, :cond_c

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x10

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_c
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_25

    const/4 v12, 0x2

    if-le v9, v12, :cond_d

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_d
    and-int/lit8 v18, v9, 0x1

    if-eqz v18, :cond_e

    if-le v9, v12, :cond_e

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_5

    :cond_e
    const/4 v12, 0x6

    :goto_5
    and-int/lit8 v17, v9, 0x4

    if-eqz v17, :cond_f

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_f
    if-eqz v21, :cond_10

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_10
    if-nez v10, :cond_25

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_6

    :cond_11
    const/4 v12, 0x6

    :goto_6
    if-nez v9, :cond_12

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_12
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_13
    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    const/4 v14, 0x1

    if-ne v15, v14, :cond_14

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    move v15, v12

    goto/16 :goto_a

    :cond_14
    const/4 v14, 0x5

    if-ne v15, v12, :cond_15

    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto/16 :goto_9

    :cond_15
    const/4 v12, 0x3

    if-ne v15, v12, :cond_20

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v14, 0x4

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_7

    :cond_16
    const/4 v14, 0x4

    :goto_7
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_17
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_18
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_19
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_1a

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_1a
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_1b

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_1c

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_1c
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_1d
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v15

    if-eqz v15, :cond_1e

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_1e
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v14

    if-eqz v14, :cond_1f

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v14

    if-eqz v14, :cond_1f

    const/4 v14, 0x7

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v14

    if-eqz v14, :cond_1f

    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_8

    :cond_1f
    const/16 v14, 0x8

    :goto_8
    const/4 v15, 0x2

    add-int/2addr v12, v15

    mul-int/2addr v12, v14

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->byteAlign()V

    goto :goto_a

    :cond_20
    :goto_9
    const/4 v15, 0x2

    :goto_a
    if-ge v9, v15, :cond_22

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    const/16 v14, 0xe

    if-eqz v12, :cond_21

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_21
    if-nez v9, :cond_22

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-virtual {v2, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_22
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v12

    if-eqz v12, :cond_25

    move/from16 v14, v19

    const/4 v12, 0x5

    if-nez v14, :cond_23

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_c

    :cond_23
    const/4 v15, 0x0

    :goto_b
    if-ge v15, v6, :cond_26

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v19

    if-eqz v19, :cond_24

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_24
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x5

    goto :goto_b

    :cond_25
    move/from16 v14, v19

    :cond_26
    :goto_c
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2b

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v6, 0x2

    if-ne v9, v6, :cond_27

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_27
    const/4 v12, 0x6

    if-lt v9, v12, :cond_28

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_28
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v6

    if-eqz v6, :cond_29

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_d

    :cond_29
    const/16 v6, 0x8

    :goto_d
    if-nez v9, :cond_2a

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_2a
    const/4 v6, 0x3

    if-ge v11, v6, :cond_2c

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    goto :goto_e

    :cond_2b
    const/4 v6, 0x3

    :cond_2c
    :goto_e
    if-nez v10, :cond_2d

    if-eq v14, v6, :cond_2d

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBit()V

    :cond_2d
    const/4 v9, 0x2

    if-ne v10, v9, :cond_2f

    if-eq v14, v6, :cond_2e

    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v6

    if-eqz v6, :cond_2f

    :cond_2e
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_f

    :cond_2f
    const/4 v6, 0x6

    :goto_f
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_30

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v2

    if-ne v2, v9, :cond_30

    const-string v2, "audio/eac3-joc"

    goto :goto_10

    :cond_30
    const-string v2, "audio/eac3"

    :goto_10
    move/from16 v9, v16

    goto :goto_13

    :cond_31
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    const/4 v5, 0x3

    if-ne v6, v5, :cond_32

    const/4 v5, 0x0

    goto :goto_11

    :cond_32
    move-object v5, v4

    :goto_11
    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    sget-object v9, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    div-int/lit8 v10, v7, 0x2

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {v6, v7}, Landroidx/media3/extractor/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v7

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v10, 0x3

    invoke-virtual {v2, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    and-int/lit8 v10, v11, 0x1

    if-eqz v10, :cond_33

    const/4 v10, 0x1

    if-eq v11, v10, :cond_33

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_12

    :cond_33
    const/4 v10, 0x2

    :goto_12
    and-int/lit8 v12, v11, 0x4

    if-eqz v12, :cond_34

    invoke-virtual {v2, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_34
    if-ne v11, v10, :cond_35

    invoke-virtual {v2, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_35
    const/4 v10, 0x3

    if-ge v6, v10, :cond_36

    aget v16, v13, v6

    :cond_36
    invoke-virtual {v2}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v2

    aget v3, v3, v11

    add-int/2addr v3, v2

    const/16 v2, 0x600

    move/from16 v13, v16

    move-object/from16 v22, v5

    move v5, v2

    move-object/from16 v2, v22

    :goto_13
    iget-object v6, v0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    if-eqz v6, :cond_37

    iget v10, v6, Landroidx/media3/common/Format;->channelCount:I

    if-ne v3, v10, :cond_37

    iget v10, v6, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v13, v10, :cond_37

    iget-object v6, v6, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v6}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    :cond_37
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v10, v0, Landroidx/media3/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    iput-object v10, v6, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v2, v6, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v3, v6, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v13, v6, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iget-object v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    iput-object v3, v6, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput v9, v6, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iput v9, v6, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    :cond_38
    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    iget-object v3, v0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    :cond_39
    iput v7, v0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleSize:I

    const-wide/32 v2, 0xf4240

    int-to-long v4, v5

    mul-long/2addr v4, v2

    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v4, v2

    iput-wide v4, v0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleDurationUs:J

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v3, 0x80

    invoke-interface {v2, v3, v8}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    const/4 v2, 0x2

    iput v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    goto/16 :goto_0

    :cond_3a
    :goto_14
    iget v2, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v2, v3

    const/16 v3, 0x77

    if-lez v2, :cond_3e

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v2, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v7, :cond_3d

    goto :goto_15

    :cond_3b
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v3, :cond_3c

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const/4 v12, 0x1

    goto :goto_17

    :cond_3c
    if-ne v2, v7, :cond_3d

    :goto_15
    const/4 v12, 0x1

    goto :goto_16

    :cond_3d
    const/4 v12, 0x0

    :goto_16
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_14

    :cond_3e
    const/4 v12, 0x0

    :goto_17
    if-eqz v12, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    iget-object v4, v8, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    aput-byte v7, v4, v5

    aput-byte v3, v4, v2

    const/4 v2, 0x2

    iput v2, v0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_3f
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 1

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget p2, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

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

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    return-void
.end method
