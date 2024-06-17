.class public final Landroidx/media3/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# instance fields
.field public bytesRead:I

.field public dataAlignmentIndicator:Z

.field public dtsFlag:Z

.field public extendedHeaderLength:I

.field public payloadSize:I

.field public final pesScratch:Landroidx/media3/common/ColorInfo$Builder;

.field public ptsFlag:Z

.field public final reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field public seenFirstDts:Z

.field public state:I

.field public timeUs:J

.field public timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    new-instance p1, Landroidx/media3/common/ColorInfo$Builder;

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/ColorInfo$Builder;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    return-void
.end method


# virtual methods
.method public final consume(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "PesReader"

    iget-object v6, v0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    const/4 v7, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v2, :cond_4

    iget v2, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_3

    if-eq v2, v9, :cond_2

    if-ne v2, v8, :cond_1

    iget v2, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v2, v7, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Unexpected start indicator: expected "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " more bytes"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v6}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v5, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v3, v0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    :cond_4
    move/from16 v2, p1

    :cond_5
    :goto_1
    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v11, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v10, v11

    if-lez v10, :cond_14

    iget v12, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v12, :cond_13

    iget-object v13, v0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/ColorInfo$Builder;

    if-eq v12, v4, :cond_e

    if-eq v12, v9, :cond_9

    if-ne v12, v8, :cond_8

    iget v12, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-ne v12, v7, :cond_6

    move v12, v3

    goto :goto_2

    :cond_6
    sub-int v12, v10, v12

    :goto_2
    if-lez v12, :cond_7

    sub-int/2addr v10, v12

    add-int/2addr v11, v10

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_7
    invoke-interface {v6, v1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v11, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v11, v7, :cond_5

    sub-int/2addr v11, v10

    iput v11, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-nez v11, :cond_5

    invoke-interface {v6}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished()V

    iput v4, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    :goto_3
    iput v3, v0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_9
    const/16 v7, 0xa

    iget v9, v0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v9, v13, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-virtual {v0, v7, v1, v9}, Landroidx/media3/extractor/ts/PesReader;->continueRead(ILandroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    iget v9, v0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-virtual {v0, v9, v1, v7}, Landroidx/media3/extractor/ts/PesReader;->continueRead(ILandroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v13, v3}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    iget-boolean v7, v0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    const/4 v9, 0x4

    if-eqz v7, :cond_b

    invoke-virtual {v13, v9}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v13, v8}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    int-to-long v7, v7

    const/16 v10, 0x1e

    shl-long/2addr v7, v10

    invoke-virtual {v13, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v11, 0xf

    invoke-virtual {v13, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    shl-int/lit8 v12, v12, 0xf

    int-to-long v14, v12

    or-long/2addr v7, v14

    invoke-virtual {v13, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v13, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    int-to-long v14, v12

    or-long/2addr v7, v14

    invoke-virtual {v13, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v12, :cond_a

    iget-boolean v12, v0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v12, :cond_a

    invoke-virtual {v13, v9}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v12, 0x3

    invoke-virtual {v13, v12}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v12

    int-to-long v14, v12

    shl-long/2addr v14, v10

    invoke-virtual {v13, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v13, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    shl-int/2addr v10, v11

    int-to-long v9, v10

    or-long/2addr v9, v14

    invoke-virtual {v13, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v13, v11}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v11

    int-to-long v11, v11

    or-long/2addr v9, v11

    invoke-virtual {v13, v4}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    iget-object v11, v0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v11, v9, v10}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v4, v0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    :cond_a
    iget-object v9, v0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v9, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v7

    iput-wide v7, v0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    :cond_b
    iget-boolean v7, v0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v7, :cond_c

    const/4 v9, 0x4

    goto :goto_4

    :cond_c
    move v9, v3

    :goto_4
    or-int/2addr v2, v9

    iget-wide v7, v0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v6, v2, v7, v8}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(IJ)V

    const/4 v8, 0x3

    iput v8, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v3, v0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    :cond_d
    const/4 v7, -0x1

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_e
    iget-object v7, v13, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    const/16 v9, 0x9

    invoke-virtual {v0, v9, v1, v7}, Landroidx/media3/extractor/ts/PesReader;->continueRead(ILandroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v13, v3}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/16 v7, 0x18

    invoke-virtual {v13, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    if-eq v7, v4, :cond_f

    const-string v9, "Unexpected start code prefix: "

    invoke-static {v9, v7, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, -0x1

    iput v7, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    const/4 v9, 0x2

    move v10, v3

    goto :goto_7

    :cond_f
    const/16 v7, 0x8

    invoke-virtual {v13, v7}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v9, 0x10

    invoke-virtual {v13, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v13, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    const/4 v10, 0x2

    invoke-virtual {v13, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v13}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    invoke-virtual {v13}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v11

    iput-boolean v11, v0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    const/4 v11, 0x6

    invoke-virtual {v13, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v13, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    iput v7, v0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v9, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v9, v9, 0x6

    add-int/lit8 v9, v9, -0x9

    sub-int/2addr v9, v7

    iput v9, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-gez v9, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Found negative packet payload size: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v7, -0x1

    iput v7, v0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    goto :goto_6

    :cond_11
    const/4 v7, -0x1

    :goto_6
    move v9, v10

    move v10, v4

    :goto_7
    if-eqz v10, :cond_12

    move v10, v9

    goto :goto_8

    :cond_12
    move v10, v3

    :goto_8
    iput v10, v0, Landroidx/media3/extractor/ts/PesReader;->state:I

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_14
    return-void
.end method

.method public final continueRead(ILandroidx/media3/common/util/ParsableByteArray;[B)Z
    .locals 3

    iget v0, p2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p2, v2, v0, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    :goto_0
    iget p2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0, p2, p3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
