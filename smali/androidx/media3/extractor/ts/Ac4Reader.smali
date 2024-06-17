.class public final Landroidx/media3/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public format:Landroidx/media3/common/Format;

.field public formatId:Ljava/lang/String;

.field public hasCRC:Z

.field public final headerScratchBits:Landroidx/media3/common/ColorInfo$Builder;

.field public final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasAC:Z

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

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/ColorInfo$Builder;

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 14

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1c

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    iget-object v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v5, 0x0

    if-eqz v1, :cond_14

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0, p1}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    iget v10, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v10, :cond_0

    iget-wide v7, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    :cond_2
    iput v5, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    :cond_3
    iget-object v1, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    const/16 v7, 0x10

    rsub-int/lit8 v6, v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v6, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, v6, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    iget v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne v1, v7, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v5

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->headerScratchBits:Landroidx/media3/common/ColorInfo$Builder;

    invoke-virtual {v0, v5}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    invoke-virtual {v0, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    invoke-virtual {v0, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    const v8, 0xffff

    const/4 v9, 0x4

    if-ne v6, v8, :cond_5

    const/16 v6, 0x18

    invoke-virtual {v0, v6}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    const/4 v8, 0x7

    goto :goto_2

    :cond_5
    move v8, v9

    :goto_2
    add-int/2addr v6, v8

    const v8, 0xac41

    if-ne v1, v8, :cond_6

    add-int/lit8 v6, v6, 0x2

    :cond_6
    invoke-virtual {v0, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/4 v8, 0x3

    if-ne v1, v8, :cond_8

    :cond_7
    invoke-virtual {v0, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_8
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v0, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    if-lez v10, :cond_9

    invoke-virtual {v0, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v10

    const v11, 0xbb80

    const v12, 0xac44

    if-eqz v10, :cond_a

    move v10, v11

    goto :goto_3

    :cond_a
    move v10, v12

    :goto_3
    invoke-virtual {v0, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v0

    sget-object v13, Landroidx/media3/extractor/Ac4Util;->SAMPLE_COUNT:[I

    if-ne v10, v12, :cond_b

    const/16 v12, 0xd

    if-ne v0, v12, :cond_b

    aget v0, v13, v0

    goto :goto_6

    :cond_b
    if-ne v10, v11, :cond_11

    const/16 v11, 0xe

    if-ge v0, v11, :cond_11

    aget v11, v13, v0

    rem-int/lit8 v1, v1, 0x5

    const/16 v12, 0x8

    if-eq v1, v2, :cond_e

    const/16 v2, 0xb

    if-eq v1, v3, :cond_d

    if-eq v1, v8, :cond_e

    if-eq v1, v9, :cond_c

    goto :goto_5

    :cond_c
    if-eq v0, v8, :cond_f

    if-eq v0, v12, :cond_f

    if-ne v0, v2, :cond_10

    goto :goto_4

    :cond_d
    if-eq v0, v12, :cond_f

    if-ne v0, v2, :cond_10

    goto :goto_4

    :cond_e
    if-eq v0, v8, :cond_f

    if-ne v0, v12, :cond_10

    :cond_f
    :goto_4
    add-int/lit8 v11, v11, 0x1

    :cond_10
    :goto_5
    move v0, v11

    goto :goto_6

    :cond_11
    move v0, v5

    :goto_6
    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_12

    iget v8, v1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v3, v8, :cond_12

    iget v8, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v10, v8, :cond_12

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v8, p0, Landroidx/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    iput-object v8, v1, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v3, v1, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v10, v1, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    :cond_13
    iput v6, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleSize:I

    const-wide/32 v1, 0xf4240

    int-to-long v8, v0

    mul-long/2addr v8, v1

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v8, v0

    iput-wide v8, p0, Landroidx/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, v7, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(ILandroidx/media3/common/util/ParsableByteArray;)V

    iput v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    goto/16 :goto_0

    :cond_14
    :goto_7
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    const/16 v1, 0x41

    const/16 v6, 0x40

    if-lez v0, :cond_1a

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v7, 0xac

    if-nez v0, :cond_16

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v7, :cond_15

    move v0, v2

    goto :goto_8

    :cond_15
    move v0, v5

    :goto_8
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_7

    :cond_16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v7, :cond_17

    move v7, v2

    goto :goto_9

    :cond_17
    move v7, v5

    :goto_9
    iput-boolean v7, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    if-eq v0, v6, :cond_18

    if-ne v0, v1, :cond_14

    :cond_18
    if-ne v0, v1, :cond_19

    move v0, v2

    goto :goto_a

    :cond_19
    move v0, v5

    :goto_a
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    move v0, v2

    goto :goto_b

    :cond_1a
    move v0, v5

    :goto_b
    if-eqz v0, :cond_0

    iput v2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    iget-object v0, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/16 v4, -0x54

    aput-byte v4, v0, v5

    iget-boolean v4, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v4, :cond_1b

    goto :goto_c

    :cond_1b
    move v1, v6

    :goto_c
    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iput v3, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_1c
    return-void
.end method

.method public final createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 1

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->generateNewId()V

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->maybeThrowUninitializedError()V

    iget p2, p2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;->performance:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac4Reader;->output:Landroidx/media3/extractor/TrackOutput;

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

    iput-wide p2, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    :cond_0
    return-void
.end method

.method public final seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method
