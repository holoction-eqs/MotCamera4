.class public final Landroidx/media3/extractor/ogg/VorbisReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "SourceFile"


# instance fields
.field public commentHeader:Lcom/adobe/xmp/impl/ByteBuffer;

.field public previousPacketBlockSize:I

.field public seenFirstAudioPacket:Z

.field public vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

.field public vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;


# virtual methods
.method public final onSeekEnd(J)V
    .locals 2

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->currentGranule:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    iget-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_1

    iget p2, p1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_1
    iput p2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-void
.end method

.method public final preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 11

    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object v2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkStateNotNull(Ljava/lang/Object;)V

    shr-int/2addr v0, v3

    iget v4, v2, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/16 v6, 0xff

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    iget-object v4, v2, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Landroidx/media3/extractor/VorbisUtil$Mode;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Landroidx/media3/extractor/VorbisUtil$Mode;->blockFlag:Z

    iget-object v2, v2, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    if-nez v0, :cond_1

    iget v0, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    goto :goto_0

    :cond_1
    iget v0, v2, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    :goto_0
    iget-boolean v2, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v2, :cond_2

    iget v1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v1, v1

    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v6, v4

    iget v7, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_3

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    array-length v6, v4

    invoke-virtual {p1, v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :goto_1
    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget p1, p1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v6, p1, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v1, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, p1, -0x3

    ushr-long v9, v1, v5

    and-long/2addr v9, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, p1

    iput-boolean v3, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    iput v0, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-wide v1
.end method

.method public final readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLcom/motorola/camera/CameraKpi;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v0, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v4

    :cond_0
    iget-object v6, v0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    const/4 v7, 0x4

    const/4 v11, 0x1

    if-nez v6, :cond_3

    invoke-static {v11, v1, v4}, Lcom/adobe/xmp/XMPUtils;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v15, -0x1

    goto :goto_0

    :cond_1
    move v15, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    if-gtz v4, :cond_2

    const/16 v16, -0x1

    goto :goto_1

    :cond_2
    move/from16 v16, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v4, v3, 0xf

    int-to-double v8, v4

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v4, v8

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v7

    int-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v3, v5

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    iget-object v5, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v19

    new-instance v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    move-object v12, v1

    move/from16 v17, v4

    move/from16 v18, v3

    invoke-direct/range {v12 .. v19}, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIII[B)V

    iput-object v1, v0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    goto :goto_2

    :cond_3
    iget-object v8, v0, Landroidx/media3/extractor/ogg/VorbisReader;->commentHeader:Lcom/adobe/xmp/impl/ByteBuffer;

    if-nez v8, :cond_4

    invoke-static {v1, v11, v11}, Lcom/adobe/xmp/XMPUtils;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Lcom/adobe/xmp/impl/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/extractor/ogg/VorbisReader;->commentHeader:Lcom/adobe/xmp/impl/ByteBuffer;

    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_1f

    :cond_4
    iget v5, v1, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    new-array v9, v5, [B

    iget-object v10, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v10, v4, v9, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x5

    invoke-static {v5, v1, v4}, Lcom/adobe/xmp/XMPUtils;->verifyVorbisHeaderCapturePattern(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    add-int/2addr v10, v11

    new-instance v12, Landroidx/media3/common/ColorInfo$Builder;

    iget-object v13, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    iget v1, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/16 v13, 0x8

    mul-int/2addr v1, v13

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    move v1, v4

    :goto_3
    const/16 v15, 0x18

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-ge v1, v10, :cond_10

    invoke-virtual {v12, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    const v14, 0x564342

    if-ne v13, v14, :cond_f

    invoke-virtual {v12, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    invoke-virtual {v12, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v13, :cond_9

    if-eqz v14, :cond_5

    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_5
    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_9

    sub-int v15, v13, v14

    const/4 v5, 0x0

    :goto_6
    if-lez v15, :cond_8

    add-int/lit8 v5, v5, 0x1

    ushr-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    add-int/2addr v14, v5

    const/4 v5, 0x5

    goto :goto_5

    :cond_9
    invoke-virtual {v12, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    if-gt v5, v3, :cond_e

    if-eq v5, v11, :cond_a

    if-ne v5, v3, :cond_d

    :cond_a
    const/16 v3, 0x20

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    add-int/2addr v3, v11

    invoke-virtual {v12, v11}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    if-ne v5, v11, :cond_c

    if-eqz v4, :cond_b

    int-to-long v13, v13

    int-to-long v4, v4

    long-to-double v13, v13

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    long-to-double v4, v4

    div-double v4, v19, v4

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    goto :goto_7

    :cond_b
    const-wide/16 v4, 0x0

    goto :goto_7

    :cond_c
    int-to-long v13, v13

    int-to-long v4, v4

    mul-long/2addr v4, v13

    :goto_7
    int-to-long v13, v3

    mul-long/2addr v4, v13

    long-to-int v3, v4

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/16 v13, 0x8

    const/4 v14, 0x3

    goto/16 :goto_3

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lookup type greater than 2 not decodable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_f
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_10
    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    add-int/2addr v5, v11

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v5, :cond_12

    invoke-virtual {v12, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    if-nez v13, :cond_11

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_11
    const-string v0, "placeholder of time domain transforms not zeroed out"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_12
    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    add-int/2addr v5, v11

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v5, :cond_1c

    invoke-virtual {v12, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    if-eqz v13, :cond_1a

    if-ne v13, v11, :cond_19

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    new-array v14, v13, [I

    const/4 v1, -0x1

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v13, :cond_14

    invoke-virtual {v12, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    aput v4, v14, v15

    if-le v4, v1, :cond_13

    move v1, v4

    :cond_13
    add-int/lit8 v15, v15, 0x1

    const/16 v4, 0x10

    goto :goto_a

    :cond_14
    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [I

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v1, :cond_17

    const/4 v7, 0x3

    invoke-virtual {v12, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    aput v21, v4, v15

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    const/16 v3, 0x8

    if-lez v7, :cond_15

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_15
    move/from16 v22, v1

    const/4 v3, 0x0

    :goto_c
    shl-int v1, v11, v7

    if-ge v3, v1, :cond_16

    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v22

    const/4 v3, 0x2

    const/4 v7, 0x4

    goto :goto_b

    :cond_17
    move v1, v3

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_d
    if-ge v1, v13, :cond_1b

    aget v22, v14, v1

    aget v22, v4, v22

    add-int v7, v7, v22

    :goto_e
    if-ge v15, v7, :cond_18

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "floor type greater than 1 not decodable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/16 v3, 0x10

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v3, 0x6

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v4

    add-int/2addr v4, v11

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v4, :cond_1b

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x8

    goto :goto_f

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x6

    const/4 v3, 0x2

    const/16 v4, 0x10

    const/4 v7, 0x4

    const/16 v15, 0x18

    goto/16 :goto_9

    :cond_1c
    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    add-int/2addr v3, v11

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_23

    const/16 v5, 0x10

    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    const/4 v5, 0x2

    if-gt v7, v5, :cond_22

    const/16 v5, 0x18

    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v7

    add-int/2addr v7, v11

    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    new-array v10, v7, [I

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v7, :cond_1e

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v17

    const/4 v5, 0x5

    if-eqz v17, :cond_1d

    invoke-virtual {v12, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v17

    goto :goto_12

    :cond_1d
    const/16 v17, 0x0

    :goto_12
    mul-int/lit8 v17, v17, 0x8

    add-int v17, v17, v15

    aput v17, v10, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x18

    goto :goto_11

    :cond_1e
    const/4 v5, 0x5

    const/4 v14, 0x3

    const/4 v13, 0x0

    :goto_13
    if-ge v13, v7, :cond_21

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v1, :cond_20

    aget v17, v10, v13

    shl-int v18, v11, v15

    and-int v17, v17, v18

    if-eqz v17, :cond_1f

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_1f
    add-int/lit8 v15, v15, 0x1

    const/16 v1, 0x8

    goto :goto_14

    :cond_20
    add-int/lit8 v13, v13, 0x1

    const/16 v1, 0x8

    goto :goto_13

    :cond_21
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x6

    goto :goto_10

    :cond_22
    const-string v0, "residueType greater than 2 is not decodable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_23
    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v3

    add-int/2addr v3, v11

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v3, :cond_2c

    const/16 v4, 0x10

    invoke-virtual {v12, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    if-eqz v5, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "mapping type other than 0 not supported: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v13, 0x4

    goto :goto_1c

    :cond_24
    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v4

    if-eqz v4, :cond_25

    const/4 v4, 0x4

    invoke-virtual {v12, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v5

    add-int/2addr v5, v11

    goto :goto_16

    :cond_25
    move v5, v11

    :goto_16
    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v4

    iget v7, v6, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    if-eqz v4, :cond_28

    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    add-int/2addr v10, v11

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v10, :cond_28

    add-int/lit8 v13, v7, -0x1

    move v14, v13

    const/4 v15, 0x0

    :goto_18
    if-lez v14, :cond_26

    add-int/lit8 v15, v15, 0x1

    ushr-int/lit8 v14, v14, 0x1

    goto :goto_18

    :cond_26
    invoke-virtual {v12, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v14, 0x0

    :goto_19
    if-lez v13, :cond_27

    add-int/lit8 v14, v14, 0x1

    ushr-int/lit8 v13, v13, 0x1

    goto :goto_19

    :cond_27
    invoke-virtual {v12, v14}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_28
    const/4 v4, 0x2

    invoke-virtual {v12, v4}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    if-nez v10, :cond_2b

    if-le v5, v11, :cond_29

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v7, :cond_29

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_29
    const/4 v13, 0x4

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v5, :cond_2a

    const/16 v10, 0x8

    invoke-virtual {v12, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v12, v10}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2a
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_15

    :cond_2b
    const-string v0, "to reserved bits must be zero after mapping coupling steps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v1, 0x6

    invoke-virtual {v12, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    add-int/2addr v1, v11

    new-array v3, v1, [Landroidx/media3/extractor/VorbisUtil$Mode;

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v1, :cond_2d

    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v5

    const/16 v7, 0x10

    invoke-virtual {v12, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    invoke-virtual {v12, v7}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    new-instance v7, Landroidx/media3/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v10, v13, v15, v5}, Landroidx/media3/extractor/VorbisUtil$Mode;-><init>(IIIZ)V

    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2d
    invoke-virtual {v12}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v4

    if-eqz v4, :cond_30

    sub-int/2addr v1, v11

    const/4 v10, 0x0

    :goto_1e
    if-lez v1, :cond_2e

    add-int/lit8 v10, v10, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    new-instance v1, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    move-object v5, v1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v3

    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;Lcom/adobe/xmp/impl/ByteBuffer;[B[Landroidx/media3/extractor/VorbisUtil$Mode;I)V

    :goto_1f
    iput-object v5, v0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    if-nez v5, :cond_2f

    return v11

    :cond_2f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v5, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    iget-object v3, v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v5, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v5, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lcom/adobe/xmp/impl/ByteBuffer;

    iget-object v3, v3, Lcom/adobe/xmp/impl/ByteBuffer;->buffer:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v3

    invoke-static {v3}, Lcom/adobe/xmp/XMPUtils;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "audio/vorbis"

    iput-object v5, v4, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget v5, v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    iput v5, v4, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget v5, v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    iput v5, v4, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    iget v5, v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    iput v5, v4, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v1, v1, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    iput v1, v4, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v0, v4, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iput-object v3, v4, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, v2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    return v11

    :cond_30
    const-string v0, "framing bit after modes not set as expected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public final reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisSetup:Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;

    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;

    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->commentHeader:Lcom/adobe/xmp/impl/ByteBuffer;

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    return-void
.end method
