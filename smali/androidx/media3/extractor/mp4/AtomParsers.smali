.class public abstract Landroidx/media3/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final opusMagic:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method public static parseEsdsFromParent(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;
    .locals 13

    add-int/lit8 p0, p0, 0x8

    const/4 v0, 0x4

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "audio/vnd.dts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p0

    new-array v6, p0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    const-wide/16 v7, 0x0

    cmp-long p1, v4, v7

    const-wide/16 v9, -0x1

    if-lez p1, :cond_4

    move-wide v11, v4

    goto :goto_0

    :cond_4
    move-wide v11, v9

    :goto_0
    cmp-long p1, v0, v7

    if-lez p1, :cond_5

    move-wide v7, v0

    goto :goto_1

    :cond_5
    move-wide v7, v9

    :goto_1
    move-object v2, p0

    move-object v4, v6

    move-wide v5, v11

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    :cond_6
    :goto_2
    new-instance p0, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method public static parseExpandableClassSize(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/recyclerview/widget/ChildHelper$Bucket;
    .locals 7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move-wide v0, v1

    :goto_0
    const v2, 0x7c25b080

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    new-instance p0, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    new-instance v4, Landroidx/media3/common/Metadata;

    const/4 v5, 0x1

    new-array v5, v5, [Landroidx/media3/common/Metadata$Entry;

    new-instance v6, Landroidx/media3/container/CreationTime;

    invoke-direct {v6, v0, v1}, Landroidx/media3/container/CreationTime;-><init>(J)V

    const/4 v0, 0x0

    aput-object v6, v5, v0

    invoke-direct {v4, v5}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    const/4 v0, 0x2

    invoke-direct {p0, v4, v0, v2, v3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Ljava/lang/Object;IJ)V

    return-object p0
.end method

.method public static parseSampleEntryEncryptionData(IILandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p2

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_0
    sub-int v2, v1, p0

    move/from16 v4, p1

    if-ge v2, v4, :cond_10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v8, v7}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v7, v3}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v7, v3}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v6, v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v6, v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    invoke-static {v6, v5}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Lcom/motorola/camera/saving/XmpData$GDepth;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    new-instance v4, Lcom/motorola/camera/saving/XmpData$GDepth;

    const/16 v5, 0x8

    invoke-direct {v4, v3, v5}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>(II)V

    move/from16 v8, p1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_80

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    if-lez v10, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const-string v13, "childAtomSize must be positive"

    invoke-static {v13, v12}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v12

    const v14, 0x76703038

    const v15, 0x48323633

    const v11, 0x61766331

    const v6, 0x6d317620

    const v5, 0x656e6376

    if-eq v12, v11, :cond_4a

    const v11, 0x61766333

    if-eq v12, v11, :cond_4a

    if-eq v12, v5, :cond_4a

    if-eq v12, v6, :cond_4a

    const v11, 0x6d703476

    if-eq v12, v11, :cond_4a

    const v11, 0x68766331

    if-eq v12, v11, :cond_4a

    const v11, 0x68657631

    if-eq v12, v11, :cond_4a

    const v11, 0x73323633

    if-eq v12, v11, :cond_4a

    if-eq v12, v15, :cond_4a

    if-eq v12, v14, :cond_4a

    const v11, 0x76703039

    if-eq v12, v11, :cond_4a

    const v11, 0x61763031

    if-eq v12, v11, :cond_4a

    const v11, 0x64766176

    if-eq v12, v11, :cond_4a

    const v11, 0x64766131

    if-eq v12, v11, :cond_4a

    const v11, 0x64766865

    if-eq v12, v11, :cond_4a

    const v11, 0x64766831

    if-ne v12, v11, :cond_1

    goto/16 :goto_27

    :cond_1
    const v5, 0x6d703461

    const v6, 0x65632d33

    const v11, 0x61632d33

    const v14, 0x656e6361

    const v15, 0x616c6163

    if-eq v12, v5, :cond_c

    if-eq v12, v14, :cond_c

    if-eq v12, v11, :cond_c

    if-eq v12, v6, :cond_c

    const v5, 0x61632d34

    if-eq v12, v5, :cond_c

    const v5, 0x6d6c7061

    if-eq v12, v5, :cond_c

    const v5, 0x64747363

    if-eq v12, v5, :cond_c

    const v5, 0x64747365

    if-eq v12, v5, :cond_c

    const v5, 0x64747368

    if-eq v12, v5, :cond_c

    const v5, 0x6474736c

    if-eq v12, v5, :cond_c

    const v5, 0x64747378

    if-eq v12, v5, :cond_c

    const v5, 0x73616d72

    if-eq v12, v5, :cond_c

    const v5, 0x73617762

    if-eq v12, v5, :cond_c

    const v5, 0x6c70636d

    if-eq v12, v5, :cond_c

    const v5, 0x736f7774

    if-eq v12, v5, :cond_c

    const v5, 0x74776f73

    if-eq v12, v5, :cond_c

    const v5, 0x2e6d7032

    if-eq v12, v5, :cond_c

    const v5, 0x2e6d7033

    if-eq v12, v5, :cond_c

    const v5, 0x6d686131

    if-eq v12, v5, :cond_c

    const v5, 0x6d686d31

    if-eq v12, v5, :cond_c

    if-eq v12, v15, :cond_c

    const v5, 0x616c6177

    if-eq v12, v5, :cond_c

    const v5, 0x756c6177

    if-eq v12, v5, :cond_c

    const v5, 0x4f707573

    if-eq v12, v5, :cond_c

    const v5, 0x664c6143

    if-ne v12, v5, :cond_2

    goto/16 :goto_6

    :cond_2
    const v5, 0x54544d4c

    if-eq v12, v5, :cond_5

    const v5, 0x74783367

    if-eq v12, v5, :cond_5

    const v5, 0x77767474

    if-eq v12, v5, :cond_5

    const v5, 0x73747070

    if-eq v12, v5, :cond_5

    const v5, 0x63363038

    if-ne v12, v5, :cond_3

    goto :goto_2

    :cond_3
    const v5, 0x6d657474

    if-ne v12, v5, :cond_4

    add-int/lit8 v5, v9, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const v5, 0x6d657474

    if-ne v12, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v6, v8}, Landroidx/media3/common/Format$Builder;->setId(I)V

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v5, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_4
    const v5, 0x63616d6d

    if-ne v12, v5, :cond_a

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setId(I)V

    const-string v6, "application/x-camera-motion"

    iput-object v6, v5, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v6, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    goto :goto_5

    :cond_5
    :goto_2
    add-int/lit8 v5, v9, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const v5, 0x54544d4c

    const-string v6, "application/ttml+xml"

    const-wide v13, 0x7fffffffffffffffL

    if-ne v12, v5, :cond_6

    goto :goto_3

    :cond_6
    const v5, 0x74783367

    if-ne v12, v5, :cond_7

    add-int/lit8 v5, v10, -0x8

    add-int/lit8 v5, v5, -0x8

    new-array v6, v5, [B

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v11

    const-string v5, "application/x-quicktime-tx3g"

    goto :goto_4

    :cond_7
    const v5, 0x77767474

    if-ne v12, v5, :cond_8

    const-string v6, "application/x-mp4-vtt"

    goto :goto_3

    :cond_8
    const v5, 0x73747070

    if-ne v12, v5, :cond_9

    const-wide/16 v11, 0x0

    move-wide v13, v11

    goto :goto_3

    :cond_9
    const v5, 0x63363038

    if-ne v12, v5, :cond_b

    const/4 v5, 0x1

    iput v5, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    const-string v6, "application/x-mp4-cea-608"

    :goto_3
    move-object v5, v6

    const/4 v11, 0x0

    :goto_4
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v6, v8}, Landroidx/media3/common/Format$Builder;->setId(I)V

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v1, v6, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput-wide v13, v6, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    iput-object v11, v6, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v5, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    :cond_a
    :goto_5
    move/from16 v25, v3

    move/from16 v20, v7

    move/from16 v30, v9

    move/from16 v27, v10

    goto/16 :goto_26

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_6
    add-int/lit8 v5, v9, 0x8

    const/16 v15, 0x8

    add-int/2addr v5, v15

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v5, 0x6

    if-eqz p5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v18

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v15, v18

    goto :goto_7

    :cond_d
    invoke-virtual {v0, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v15, 0x0

    :goto_7
    const/16 v6, 0x14

    const/4 v11, 0x4

    if-eqz v15, :cond_f

    const/4 v14, 0x1

    if-ne v15, v14, :cond_e

    goto :goto_8

    :cond_e
    const/4 v14, 0x2

    if-ne v15, v14, :cond_a

    const/16 v14, 0x10

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v25, v3

    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object v6, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v5, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v25, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v18, 0x8

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v26, v25, 0x1

    aget-byte v6, v6, v25

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    move/from16 v25, v3

    const/4 v6, 0x2

    add-int/lit8 v3, v26, 0x2

    iput v3, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v11

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v6, 0x1

    if-ne v15, v6, :cond_10

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_10
    move v15, v14

    move v14, v5

    :goto_9
    iget v5, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const v6, 0x656e6361

    if-ne v12, v6, :cond_13

    invoke-static {v9, v10, v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(IILandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-object v12, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v2, :cond_11

    const/16 v22, 0x0

    goto :goto_a

    :cond_11
    iget-object v11, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v11

    move-object/from16 v22, v11

    :goto_a
    iget-object v11, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v11, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v6, v11, v7

    move-object/from16 v11, v22

    goto :goto_b

    :cond_12
    move-object v11, v2

    :goto_b
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_c

    :cond_13
    move-object v11, v2

    :goto_c
    const-string v6, "audio/ac4"

    const-string v22, "audio/eac3"

    move/from16 v26, v5

    const-string v5, "audio/ac3"

    move/from16 v27, v14

    const v14, 0x61632d33

    if-ne v12, v14, :cond_14

    move-object v12, v5

    goto/16 :goto_10

    :cond_14
    const v14, 0x65632d33

    if-ne v12, v14, :cond_15

    move-object/from16 v12, v22

    goto/16 :goto_10

    :cond_15
    const v14, 0x61632d34

    if-ne v12, v14, :cond_16

    move-object v12, v6

    goto/16 :goto_10

    :cond_16
    const v14, 0x64747363

    if-ne v12, v14, :cond_17

    const-string v12, "audio/vnd.dts"

    goto/16 :goto_10

    :cond_17
    const v14, 0x64747368

    if-eq v12, v14, :cond_2a

    const v14, 0x6474736c

    if-ne v12, v14, :cond_18

    goto/16 :goto_f

    :cond_18
    const v14, 0x64747365

    if-ne v12, v14, :cond_19

    const-string v12, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_10

    :cond_19
    const v14, 0x64747378

    if-ne v12, v14, :cond_1a

    const-string v12, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_10

    :cond_1a
    const v14, 0x73616d72

    if-ne v12, v14, :cond_1b

    const-string v12, "audio/3gpp"

    goto/16 :goto_10

    :cond_1b
    const v14, 0x73617762

    if-ne v12, v14, :cond_1c

    const-string v12, "audio/amr-wb"

    goto/16 :goto_10

    :cond_1c
    const v14, 0x6c70636d

    if-eq v12, v14, :cond_29

    const v14, 0x736f7774

    if-ne v12, v14, :cond_1d

    goto/16 :goto_e

    :cond_1d
    const v14, 0x74776f73

    if-ne v12, v14, :cond_1e

    const-string v12, "audio/raw"

    const/high16 v14, 0x10000000

    goto :goto_11

    :cond_1e
    const v14, 0x2e6d7032

    if-eq v12, v14, :cond_28

    const v14, 0x2e6d7033

    if-ne v12, v14, :cond_1f

    goto :goto_d

    :cond_1f
    const v14, 0x6d686131

    if-ne v12, v14, :cond_20

    const-string v12, "audio/mha1"

    goto :goto_10

    :cond_20
    const v14, 0x6d686d31

    if-ne v12, v14, :cond_21

    const-string v12, "audio/mhm1"

    goto :goto_10

    :cond_21
    const v14, 0x616c6163

    if-ne v12, v14, :cond_22

    const-string v12, "audio/alac"

    goto :goto_10

    :cond_22
    const v14, 0x616c6177

    if-ne v12, v14, :cond_23

    const-string v12, "audio/g711-alaw"

    goto :goto_10

    :cond_23
    const v14, 0x756c6177

    if-ne v12, v14, :cond_24

    const-string v12, "audio/g711-mlaw"

    goto :goto_10

    :cond_24
    const v14, 0x4f707573

    if-ne v12, v14, :cond_25

    const-string v12, "audio/opus"

    goto :goto_10

    :cond_25
    const v14, 0x664c6143

    if-ne v12, v14, :cond_26

    const-string v12, "audio/flac"

    goto :goto_10

    :cond_26
    const v14, 0x6d6c7061

    if-ne v12, v14, :cond_27

    const-string v12, "audio/true-hd"

    goto :goto_10

    :cond_27
    const/4 v12, 0x0

    goto :goto_10

    :cond_28
    :goto_d
    const-string v12, "audio/mpeg"

    goto :goto_10

    :cond_29
    :goto_e
    const-string v12, "audio/raw"

    const/4 v14, 0x2

    goto :goto_11

    :cond_2a
    :goto_f
    const-string v12, "audio/vnd.dts.hd"

    :goto_10
    const/4 v14, -0x1

    :goto_11
    move/from16 v20, v7

    move/from16 v21, v14

    move v2, v15

    move/from16 v7, v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v15, v12

    move/from16 v12, v26

    const/16 v26, 0x0

    :goto_12
    sub-int v14, v12, v9

    if-ge v14, v10, :cond_47

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    move/from16 v27, v10

    if-lez v14, :cond_2b

    const/4 v10, 0x1

    goto :goto_13

    :cond_2b
    const/4 v10, 0x0

    :goto_13
    invoke-static {v13, v10}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    move/from16 v30, v9

    const v9, 0x6d686143

    if-ne v10, v9, :cond_2c

    add-int/lit8 v9, v14, -0xd

    new-array v10, v9, [B

    move-object/from16 v31, v13

    add-int/lit8 v13, v12, 0xd

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v28

    move/from16 v33, v2

    move-object/from16 v35, v5

    move/from16 v32, v7

    move-object/from16 v34, v15

    goto/16 :goto_18

    :cond_2c
    move-object/from16 v31, v13

    const v9, 0x65736473

    if-eq v10, v9, :cond_3e

    if-eqz p5, :cond_2d

    const v9, 0x77617665

    if-ne v10, v9, :cond_2d

    goto/16 :goto_1e

    :cond_2d
    sget-object v9, Landroidx/media3/extractor/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    sget-object v13, Landroidx/media3/extractor/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    move/from16 v32, v7

    const v7, 0x64616333

    if-ne v10, v7, :cond_2f

    add-int/lit8 v7, v12, 0x8

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroidx/media3/common/ColorInfo$Builder;

    move/from16 v33, v2

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    move-object/from16 v34, v15

    iget v15, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v10, v2, v15}, Landroidx/media3/common/ColorInfo$Builder;->reset([BI)V

    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/16 v15, 0x8

    mul-int/2addr v2, v15

    invoke-virtual {v10, v2}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v18

    aget v2, v13, v18

    invoke-virtual {v10, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v13, 0x3

    invoke-virtual {v10, v13}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    aget v9, v9, v15

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    if-eqz v15, :cond_2e

    add-int/lit8 v9, v9, 0x1

    :cond_2e
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v13

    sget-object v15, Landroidx/media3/extractor/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v13, v15, v13

    mul-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->byteAlign()V

    invoke-virtual {v10}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v10, Landroidx/media3/common/Format$Builder;

    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v7, v10, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v5, v10, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v9, v10, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v2, v10, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v11, v10, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v1, v10, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput v13, v10, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v13, v10, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v10}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v2, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    move-object/from16 v35, v5

    goto/16 :goto_18

    :cond_2f
    move/from16 v33, v2

    move-object/from16 v34, v15

    const v2, 0x64656333

    if-ne v10, v2, :cond_34

    add-int/lit8 v2, v12, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Landroidx/media3/common/ColorInfo$Builder;-><init>(Ljava/lang/Object;)V

    iget-object v10, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v15, v0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    invoke-virtual {v7, v10, v15}, Landroidx/media3/common/ColorInfo$Builder;->reset([BI)V

    iget v10, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const/16 v15, 0x8

    mul-int/2addr v10, v15

    invoke-virtual {v7, v10}, Landroidx/media3/common/ColorInfo$Builder;->setPosition(I)V

    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v35

    aget v13, v13, v35

    const/16 v15, 0xa

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v17

    aget v9, v9, v17

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v16

    if-eqz v16, :cond_30

    add-int/lit8 v9, v9, 0x1

    :cond_30
    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v35

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    if-lez v35, :cond_32

    move-object/from16 v35, v5

    const/4 v5, 0x6

    invoke-virtual {v7, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v16

    if-eqz v16, :cond_31

    add-int/lit8 v9, v9, 0x2

    :cond_31
    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    goto :goto_14

    :cond_32
    move-object/from16 v35, v5

    :goto_14
    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v5

    const/4 v15, 0x7

    if-le v5, v15, :cond_33

    invoke-virtual {v7, v15}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v15

    if-eqz v15, :cond_33

    const-string v5, "audio/eac3-joc"

    goto :goto_15

    :cond_33
    move-object/from16 v5, v22

    :goto_15
    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->byteAlign()V

    invoke-virtual {v7}, Landroidx/media3/common/ColorInfo$Builder;->getBytePosition()I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v2, v7, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v5, v7, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput v9, v7, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v13, v7, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v11, v7, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v1, v7, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iput v10, v7, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    goto :goto_17

    :cond_34
    move-object/from16 v35, v5

    const v2, 0x64616334

    if-ne v10, v2, :cond_36

    add-int/lit8 v2, v12, 0x8

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    shr-int/lit8 v7, v7, 0x5

    if-ne v7, v5, :cond_35

    const v5, 0xbb80

    goto :goto_16

    :cond_35
    const v5, 0xac44

    :goto_16
    new-instance v7, Landroidx/media3/common/Format$Builder;

    invoke-direct {v7}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v2, v7, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v6, v7, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v7, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v5, v7, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v11, v7, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v1, v7, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :goto_17
    iput-object v2, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    :goto_18
    const/4 v7, 0x4

    goto/16 :goto_1a

    :cond_36
    const v2, 0x646d6c70

    if-ne v10, v2, :cond_38

    if-lez v3, :cond_37

    move v7, v3

    move-object/from16 v15, v31

    move-object/from16 v9, v34

    const/4 v2, 0x2

    move/from16 v31, v7

    goto/16 :goto_25

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_38
    const v2, 0x64647473

    if-eq v10, v2, :cond_3d

    const v2, 0x75647473

    if-ne v10, v2, :cond_39

    goto/16 :goto_1b

    :cond_39
    const v2, 0x644f7073

    if-ne v10, v2, :cond_3a

    add-int/lit8 v2, v14, -0x8

    sget-object v5, Landroidx/media3/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v7, v5

    add-int/2addr v7, v2

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    add-int/lit8 v9, v12, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    array-length v5, v5

    invoke-virtual {v0, v5, v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v7}, Landroidx/room/util/DBUtil;->buildInitializationData([B)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x4

    goto :goto_19

    :cond_3a
    const v2, 0x64664c61

    if-ne v10, v2, :cond_3b

    add-int/lit8 v2, v14, -0xc

    add-int/lit8 v5, v2, 0x4

    new-array v5, v5, [B

    const/16 v7, 0x66

    const/4 v9, 0x0

    aput-byte v7, v5, v9

    const/16 v7, 0x4c

    const/4 v9, 0x1

    aput-byte v7, v5, v9

    const/16 v7, 0x61

    const/4 v9, 0x2

    aput-byte v7, v5, v9

    const/16 v7, 0x43

    const/4 v9, 0x3

    aput-byte v7, v5, v9

    add-int/lit8 v7, v12, 0xc

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v2

    :goto_19
    move-object/from16 v28, v2

    :goto_1a
    move/from16 v7, v32

    move/from16 v10, v33

    move-object/from16 v9, v34

    const/4 v13, 0x0

    const/16 v15, 0x14

    goto/16 :goto_1d

    :cond_3b
    const v2, 0x616c6163

    const/4 v7, 0x4

    if-ne v10, v2, :cond_3c

    add-int/lit8 v5, v14, -0xc

    new-array v9, v5, [B

    add-int/lit8 v10, v12, 0xc

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v5, v9}, Landroidx/media3/common/util/ParsableByteArray;->readBytes(II[B)V

    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v5, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/16 v10, 0x9

    invoke-virtual {v5, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/16 v15, 0x14

    invoke-virtual {v5, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v28

    move v7, v10

    move-object/from16 v9, v34

    move v10, v5

    goto :goto_1d

    :cond_3c
    const/4 v13, 0x0

    const/16 v15, 0x14

    move/from16 v2, v32

    move/from16 v10, v33

    move-object/from16 v9, v34

    goto :goto_1c

    :cond_3d
    :goto_1b
    const v2, 0x616c6163

    const/4 v7, 0x4

    const/4 v13, 0x0

    const/16 v15, 0x14

    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setId(I)V

    move-object/from16 v9, v34

    iput-object v9, v5, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move/from16 v10, v33

    iput v10, v5, Landroidx/media3/common/Format$Builder;->channelCount:I

    move/from16 v2, v32

    iput v2, v5, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput-object v11, v5, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v1, v5, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v7, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    :goto_1c
    move v7, v2

    :goto_1d
    move v2, v10

    move-object/from16 v15, v31

    move/from16 v31, v3

    goto/16 :goto_25

    :cond_3e
    :goto_1e
    move-object/from16 v35, v5

    move-object v9, v15

    const/4 v13, 0x0

    const/16 v15, 0x14

    move v5, v2

    move v2, v7

    const v7, 0x65736473

    if-ne v10, v7, :cond_3f

    move v7, v12

    move-object/from16 v15, v31

    move/from16 v31, v3

    goto :goto_22

    :cond_3f
    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-lt v7, v12, :cond_40

    const/4 v10, 0x1

    goto :goto_1f

    :cond_40
    move v10, v13

    :goto_1f
    const/4 v13, 0x0

    invoke-static {v13, v10}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    :goto_20
    sub-int v10, v7, v12

    if-ge v10, v14, :cond_43

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    move-object/from16 v15, v31

    if-lez v10, :cond_41

    const/4 v13, 0x1

    goto :goto_21

    :cond_41
    const/4 v13, 0x0

    :goto_21
    invoke-static {v15, v13}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    move/from16 v31, v3

    const v3, 0x65736473

    if-ne v13, v3, :cond_42

    :goto_22
    const/4 v3, -0x1

    goto :goto_23

    :cond_42
    add-int/2addr v7, v10

    move/from16 v3, v31

    move-object/from16 v31, v15

    const/16 v15, 0x14

    goto :goto_20

    :cond_43
    move-object/from16 v15, v31

    move/from16 v31, v3

    const/4 v3, -0x1

    const/4 v7, -0x1

    :goto_23
    if-eq v7, v3, :cond_46

    invoke-static {v7, v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEsdsFromParent(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v3

    iget-object v7, v3, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v9, v3, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v9, [B

    if-eqz v9, :cond_45

    const-string v10, "audio/mp4a-latm"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    invoke-static {v9}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v2

    iget v5, v2, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iget v10, v2, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iget-object v2, v2, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v26, v2

    move v2, v10

    goto :goto_24

    :cond_44
    move/from16 v43, v5

    move v5, v2

    move/from16 v2, v43

    :goto_24
    invoke-static {v9}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v28

    move/from16 v43, v5

    move v5, v2

    move/from16 v2, v43

    :cond_45
    move-object/from16 v29, v3

    move-object v9, v7

    :cond_46
    move v7, v2

    move v2, v5

    :goto_25
    add-int/2addr v12, v14

    move-object v13, v15

    move/from16 v10, v27

    move/from16 v3, v31

    move-object/from16 v5, v35

    move-object v15, v9

    move/from16 v9, v30

    goto/16 :goto_12

    :cond_47
    move v5, v2

    move v2, v7

    move/from16 v30, v9

    move/from16 v27, v10

    move-object v9, v15

    iget-object v3, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/common/Format;

    if-nez v3, :cond_49

    if-eqz v9, :cond_49

    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v3, v8}, Landroidx/media3/common/Format$Builder;->setId(I)V

    iput-object v9, v3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v6, v26

    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iput v5, v3, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v2, v3, Landroidx/media3/common/Format$Builder;->sampleRate:I

    move/from16 v14, v21

    iput v14, v3, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    move-object/from16 v2, v28

    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iput-object v11, v3, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    move-object/from16 v2, v29

    if-eqz v2, :cond_48

    iget-wide v5, v2, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    invoke-static {v5, v6}, Lkotlin/ResultKt;->saturatedCast(J)I

    move-result v5

    iput v5, v3, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget-wide v5, v2, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    invoke-static {v5, v6}, Lkotlin/ResultKt;->saturatedCast(J)I

    move-result v2

    iput v2, v3, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    :cond_48
    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v2, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    :cond_49
    :goto_26
    move-object v2, v4

    move v1, v8

    move/from16 v34, v27

    move/from16 v33, v30

    move/from16 v8, p1

    move/from16 v4, p2

    goto/16 :goto_4f

    :cond_4a
    :goto_27
    move/from16 v25, v3

    move/from16 v20, v7

    move/from16 v30, v9

    move/from16 v27, v10

    move v2, v15

    move-object v15, v13

    add-int/lit8 v9, v30, 0x8

    const/16 v3, 0x8

    add-int/2addr v9, v3

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    const/16 v9, 0x32

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-ne v12, v5, :cond_4d

    move/from16 v10, v27

    move/from16 v5, v30

    invoke-static {v5, v10, v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(IILandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v11

    if-eqz v11, :cond_4c

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v13, p4

    if-nez v13, :cond_4b

    const/4 v3, 0x0

    goto :goto_28

    :cond_4b
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    :goto_28
    iget-object v14, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    check-cast v14, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v11, v14, v20

    goto :goto_29

    :cond_4c
    move-object/from16 v13, p4

    move-object v3, v13

    :goto_29
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2a

    :cond_4d
    move-object/from16 v13, p4

    move/from16 v10, v27

    move/from16 v5, v30

    move-object v3, v13

    :goto_2a
    const-string v11, "video/3gpp"

    if-ne v12, v6, :cond_4e

    const-string v2, "video/mpeg"

    goto :goto_2b

    :cond_4e
    if-ne v12, v2, :cond_4f

    move-object v2, v11

    goto :goto_2b

    :cond_4f
    const/4 v2, 0x0

    :goto_2b
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v24, v3

    move v13, v6

    move v3, v9

    move-object/from16 v21, v11

    const/4 v1, -0x1

    const/4 v11, -0x1

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object v6, v2

    const/4 v2, 0x0

    :goto_2c
    sub-int v9, v3, v5

    if-ge v9, v10, :cond_7a

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move-object/from16 v29, v14

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    move/from16 v30, v13

    if-nez v14, :cond_50

    iget v13, v0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v13, v5

    if-ne v13, v10, :cond_50

    move-object/from16 v42, v2

    move-object/from16 v35, v4

    move/from16 v33, v5

    move/from16 v37, v7

    move/from16 v36, v8

    move/from16 v34, v10

    goto/16 :goto_4d

    :cond_50
    if-lez v14, :cond_51

    const/4 v13, 0x1

    goto :goto_2d

    :cond_51
    const/4 v13, 0x0

    :goto_2d
    invoke-static {v15, v13}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v13

    move-object/from16 v31, v15

    const v15, 0x61766343

    if-ne v13, v15, :cond_54

    if-nez v6, :cond_52

    const/4 v1, 0x1

    goto :goto_2e

    :cond_52
    const/4 v1, 0x0

    :goto_2e
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v1

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v2, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    if-nez v27, :cond_53

    iget v13, v1, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    goto :goto_2f

    :cond_53
    move/from16 v13, v30

    :goto_2f
    const-string v2, "video/avc"

    :goto_30
    move-object v6, v2

    goto :goto_33

    :cond_54
    const v15, 0x68766343

    if-ne v13, v15, :cond_57

    if-nez v6, :cond_55

    const/4 v1, 0x1

    goto :goto_31

    :cond_55
    const/4 v1, 0x0

    :goto_31
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AvcConfig;->parse$1(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v1

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v2, v4, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    if-nez v27, :cond_56

    iget v13, v1, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    goto :goto_32

    :cond_56
    move/from16 v13, v30

    :goto_32
    const-string v2, "video/hevc"

    goto :goto_30

    :goto_33
    iget-object v9, v1, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    iget-object v2, v1, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    iget v11, v1, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    iget v15, v1, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    iget v1, v1, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    move-object/from16 v35, v4

    move/from16 v33, v5

    move/from16 v37, v7

    move/from16 v36, v8

    move/from16 v34, v10

    move/from16 v32, v12

    move/from16 v30, v13

    move v13, v15

    goto/16 :goto_3c

    :cond_57
    const v15, 0x64766343

    if-eq v13, v15, :cond_78

    const v15, 0x64767643

    if-ne v13, v15, :cond_58

    goto/16 :goto_49

    :cond_58
    const v15, 0x76706343

    if-ne v13, v15, :cond_5d

    if-nez v6, :cond_59

    const/4 v1, 0x1

    goto :goto_34

    :cond_59
    const/4 v1, 0x0

    :goto_34
    const/4 v6, 0x0

    invoke-static {v6, v1}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    const v15, 0x76703038

    if-ne v12, v15, :cond_5a

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_35

    :cond_5a
    const-string v1, "video/x-vnd.on2.vp9"

    :goto_35
    add-int/lit8 v9, v9, 0xc

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/4 v9, 0x1

    and-int/2addr v6, v9

    if-eqz v6, :cond_5b

    const/4 v6, 0x1

    goto :goto_36

    :cond_5b
    const/4 v6, 0x0

    :goto_36
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    invoke-static {v9}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v9

    if-eqz v6, :cond_5c

    const/4 v6, 0x1

    goto :goto_37

    :cond_5c
    const/4 v6, 0x2

    :goto_37
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v11

    move v13, v6

    move-object v6, v1

    move v1, v11

    move v11, v9

    goto :goto_3a

    :cond_5d
    const v15, 0x61763143

    if-ne v13, v15, :cond_5f

    if-nez v6, :cond_5e

    const/4 v6, 0x1

    goto :goto_38

    :cond_5e
    const/4 v6, 0x0

    :goto_38
    const/4 v9, 0x0

    invoke-static {v9, v6}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    const-string v6, "video/av01"

    goto :goto_39

    :cond_5f
    const v15, 0x636c6c69

    const/16 v32, 0x19

    if-ne v13, v15, :cond_61

    if-nez v19, :cond_60

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v19

    :cond_60
    move-object/from16 v9, v19

    const/16 v13, 0x15

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v19, v9

    :goto_39
    move/from16 v13, v23

    :goto_3a
    move-object/from16 v35, v4

    move/from16 v33, v5

    move/from16 v37, v7

    move/from16 v36, v8

    move/from16 v34, v10

    move/from16 v32, v12

    move-object/from16 v9, v26

    goto/16 :goto_3c

    :cond_61
    const v15, 0x6d646376

    if-ne v13, v15, :cond_63

    if-nez v19, :cond_62

    invoke-static/range {v32 .. v32}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    goto :goto_3b

    :cond_62
    move-object/from16 v9, v19

    :goto_3b
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v15

    move/from16 v32, v12

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v12

    move/from16 v33, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v5

    move/from16 v34, v10

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v10

    move-object/from16 v35, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v4

    move/from16 v36, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v8

    move/from16 v37, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v38

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v40

    move-object/from16 v42, v2

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x2710

    div-long v7, v38, v4

    long-to-int v2, v7

    int-to-short v2, v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v4, v40, v4

    long-to-int v2, v4

    int-to-short v2, v2

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v19, v9

    move/from16 v13, v23

    move-object/from16 v9, v26

    move-object/from16 v2, v42

    :goto_3c
    move-object/from16 v42, v2

    move-object/from16 v26, v9

    move/from16 v23, v13

    move/from16 v13, v30

    const/4 v2, 0x0

    const v4, 0x65736473

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_4c

    :cond_63
    move-object/from16 v42, v2

    move-object/from16 v35, v4

    move/from16 v33, v5

    move/from16 v37, v7

    move/from16 v36, v8

    move/from16 v34, v10

    move/from16 v32, v12

    const v2, 0x64323633

    if-ne v13, v2, :cond_65

    const/4 v2, 0x0

    if-nez v6, :cond_64

    const/4 v4, 0x1

    goto :goto_3d

    :cond_64
    const/4 v4, 0x0

    :goto_3d
    invoke-static {v2, v4}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    move-object/from16 v6, v21

    const v4, 0x65736473

    goto/16 :goto_43

    :cond_65
    const/4 v2, 0x0

    const v4, 0x65736473

    if-ne v13, v4, :cond_68

    if-nez v6, :cond_66

    const/4 v5, 0x1

    goto :goto_3e

    :cond_66
    const/4 v5, 0x0

    :goto_3e
    invoke-static {v2, v5}, Landroidx/core/util/DebugUtils;->checkContainerInput(Ljava/lang/String;Z)V

    invoke-static {v9, v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseEsdsFromParent(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v5

    iget-object v6, v5, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->mimeType:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->initializationData:Ljava/lang/Object;

    check-cast v7, [B

    if-eqz v7, :cond_67

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v9

    goto :goto_3f

    :cond_67
    move-object/from16 v9, v26

    :goto_3f
    move-object/from16 v22, v5

    move-object/from16 v26, v9

    move/from16 v13, v23

    const/4 v7, 0x3

    const/4 v8, 0x1

    :goto_40
    const/4 v9, 0x2

    goto/16 :goto_4b

    :cond_68
    const v5, 0x70617370

    if-ne v13, v5, :cond_69

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    int-to-float v5, v5

    int-to-float v7, v7

    div-float/2addr v5, v7

    move v13, v5

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v27, 0x1

    goto/16 :goto_4c

    :cond_69
    const v5, 0x73763364

    if-ne v13, v5, :cond_6d

    add-int/lit8 v5, v9, 0x8

    :goto_41
    sub-int v7, v5, v9

    if-ge v7, v14, :cond_6b

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    const v10, 0x70726f6a

    if-ne v8, v10, :cond_6a

    iget-object v8, v0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/2addr v7, v5

    invoke-static {v8, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    goto :goto_42

    :cond_6a
    add-int/2addr v5, v7

    goto :goto_41

    :cond_6b
    move-object v5, v2

    :goto_42
    move-object/from16 v29, v5

    :goto_43
    const/4 v7, 0x3

    :cond_6c
    const/4 v8, 0x1

    goto :goto_44

    :cond_6d
    const v5, 0x73743364

    if-ne v13, v5, :cond_72

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-nez v5, :cond_6c

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_71

    if-eq v5, v8, :cond_70

    const/4 v9, 0x2

    if-eq v5, v9, :cond_6f

    if-eq v5, v7, :cond_6e

    goto :goto_44

    :cond_6e
    move/from16 v28, v7

    goto :goto_44

    :cond_6f
    move/from16 v13, v23

    const/4 v9, 0x2

    const/16 v28, 0x2

    goto/16 :goto_4b

    :cond_70
    move/from16 v28, v8

    goto :goto_44

    :cond_71
    move/from16 v13, v23

    const/4 v9, 0x2

    const/16 v28, 0x0

    goto/16 :goto_4b

    :goto_44
    move/from16 v13, v23

    goto :goto_40

    :cond_72
    const/4 v7, 0x3

    const/4 v8, 0x1

    const v5, 0x636f6c72

    if-ne v13, v5, :cond_77

    const/4 v5, -0x1

    if-ne v11, v5, :cond_77

    if-ne v1, v5, :cond_77

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    const v9, 0x6e636c78

    if-eq v5, v9, :cond_74

    const v9, 0x6e636c63

    if-ne v5, v9, :cond_73

    goto :goto_45

    :cond_73
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported color type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/media3/decoder/Buffer;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "AtomParsers"

    invoke-static {v9, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_74
    :goto_45
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/16 v10, 0x13

    if-ne v14, v10, :cond_75

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_75

    move v11, v8

    goto :goto_46

    :cond_75
    const/4 v11, 0x0

    :goto_46
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v1

    if-eqz v11, :cond_76

    move v10, v8

    goto :goto_47

    :cond_76
    move v10, v9

    :goto_47
    invoke-static {v5}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v5

    move v11, v1

    move v1, v5

    move v13, v10

    goto :goto_4b

    :cond_77
    :goto_48
    const/4 v9, 0x2

    goto :goto_4a

    :cond_78
    :goto_49
    move-object/from16 v42, v2

    move-object/from16 v35, v4

    move/from16 v33, v5

    move/from16 v37, v7

    move/from16 v36, v8

    move/from16 v34, v10

    move/from16 v32, v12

    const/4 v2, 0x0

    const v4, 0x65736473

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static/range {p0 .. p0}, Landroidx/media3/extractor/AacUtil$Config;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v5

    if-eqz v5, :cond_79

    iget-object v5, v5, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    const-string v6, "video/dolby-vision"

    move-object/from16 v42, v5

    :cond_79
    :goto_4a
    move/from16 v13, v23

    :goto_4b
    move/from16 v23, v13

    move/from16 v13, v30

    :goto_4c
    add-int/2addr v3, v14

    move-object/from16 v14, v29

    move-object/from16 v15, v31

    move/from16 v12, v32

    move/from16 v5, v33

    move/from16 v10, v34

    move-object/from16 v4, v35

    move/from16 v8, v36

    move/from16 v7, v37

    move-object/from16 v2, v42

    goto/16 :goto_2c

    :cond_7a
    move-object/from16 v42, v2

    move-object/from16 v35, v4

    move/from16 v33, v5

    move/from16 v37, v7

    move/from16 v36, v8

    move/from16 v34, v10

    move/from16 v30, v13

    move-object/from16 v29, v14

    :goto_4d
    const/4 v2, 0x0

    if-nez v6, :cond_7b

    move/from16 v8, p1

    move/from16 v4, p2

    move-object/from16 v2, v35

    goto :goto_4e

    :cond_7b
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    move/from16 v8, p1

    invoke-virtual {v3, v8}, Landroidx/media3/common/Format$Builder;->setId(I)V

    iput-object v6, v3, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    move-object/from16 v4, v42

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    move/from16 v4, v37

    iput v4, v3, Landroidx/media3/common/Format$Builder;->width:I

    move/from16 v4, v36

    iput v4, v3, Landroidx/media3/common/Format$Builder;->height:I

    move/from16 v13, v30

    iput v13, v3, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    move/from16 v4, p2

    iput v4, v3, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    move-object/from16 v5, v29

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->projectionData:[B

    move/from16 v5, v28

    iput v5, v3, Landroidx/media3/common/Format$Builder;->stereoMode:I

    move-object/from16 v5, v26

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    move-object/from16 v13, v24

    iput-object v13, v3, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    const/4 v5, -0x1

    move/from16 v6, v23

    if-ne v11, v5, :cond_7c

    if-ne v6, v5, :cond_7c

    if-ne v1, v5, :cond_7c

    if-eqz v19, :cond_7e

    :cond_7c
    new-instance v5, Landroidx/media3/common/ColorInfo;

    if-eqz v19, :cond_7d

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    :cond_7d
    invoke-direct {v5, v11, v2, v6, v1}, Landroidx/media3/common/ColorInfo;-><init>(I[BII)V

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    :cond_7e
    if-eqz v22, :cond_7f

    move-object/from16 v1, v22

    iget-wide v5, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->bitrate:J

    invoke-static {v5, v6}, Lkotlin/ResultKt;->saturatedCast(J)I

    move-result v2

    iput v2, v3, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget-wide v1, v1, Landroidx/media3/extractor/mp4/AtomParsers$EsdsData;->peakBitrate:J

    invoke-static {v1, v2}, Lkotlin/ResultKt;->saturatedCast(J)I

    move-result v1

    iput v1, v3, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    :cond_7f
    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v2, v35

    iput-object v1, v2, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    :goto_4e
    move v1, v8

    :goto_4f
    add-int v9, v33, v34

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v7, v20, 0x1

    move v8, v1

    move-object v4, v2

    move/from16 v3, v25

    const/16 v5, 0x8

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    goto/16 :goto_0

    :cond_80
    move-object v2, v4

    return-object v2
.end method

.method public static parseTraks(Landroidx/media3/extractor/mp4/Atom$ContainerAtom;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/ArrayList;
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_57

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    iget v6, v5, Landroidx/media3/decoder/Buffer;->flags:I

    const v7, 0x7472616b

    if-eq v6, v7, :cond_0

    move-object v0, v2

    move/from16 v37, v4

    goto/16 :goto_43

    :cond_0
    const v6, 0x6d766864

    invoke-virtual {v0, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x6d646961

    invoke-virtual {v5, v7}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, 0x68646c72    # 4.3148E24f

    invoke-virtual {v8, v9}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    const v11, 0x736f756e

    const/4 v13, -0x1

    if-ne v9, v11, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const v11, 0x76696465

    if-ne v9, v11, :cond_2

    const/4 v9, 0x2

    goto :goto_2

    :cond_2
    const v11, 0x74657874

    if-eq v9, v11, :cond_5

    const v11, 0x7362746c

    if-eq v9, v11, :cond_5

    const v11, 0x73756274

    if-eq v9, v11, :cond_5

    const v11, 0x636c6370

    if-ne v9, v11, :cond_3

    goto :goto_1

    :cond_3
    const v11, 0x6d657461

    if-ne v9, v11, :cond_4

    const/4 v9, 0x5

    goto :goto_2

    :cond_4
    move v9, v13

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v9, 0x3

    :goto_2
    const/4 v3, 0x4

    const-string v7, ""

    if-ne v9, v13, :cond_6

    move-object/from16 v38, v2

    move/from16 v37, v4

    move-object/from16 v36, v7

    goto/16 :goto_14

    :cond_6
    const v14, 0x746b6864

    invoke-virtual {v5, v14}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v14, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v17

    shr-int/lit8 v15, v17, 0x18

    and-int/lit16 v15, v15, 0xff

    if-nez v15, :cond_7

    const/16 v10, 0x8

    :cond_7
    invoke-virtual {v14, v10}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v10

    invoke-virtual {v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget v3, v14, Landroidx/media3/common/util/ParsableByteArray;->position:I

    if-nez v15, :cond_8

    const/4 v11, 0x4

    goto :goto_3

    :cond_8
    const/16 v11, 0x8

    :goto_3
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_a

    iget-object v13, v14, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int v19, v3, v12

    aget-byte v13, v13, v19

    const/4 v0, -0x1

    if-eq v13, v0, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    const/4 v13, -0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_b

    invoke-virtual {v14, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_7

    :cond_b
    if-nez v15, :cond_c

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    goto :goto_6

    :cond_c
    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v19

    :goto_6
    const-wide/16 v21, 0x0

    cmp-long v0, v19, v21

    if-nez v0, :cond_d

    :goto_7
    const/16 v0, 0x10

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_8

    :cond_d
    const/16 v0, 0x10

    :goto_8
    invoke-virtual {v14, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    invoke-virtual {v14}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    const/high16 v0, -0x10000

    const/high16 v12, 0x10000

    if-nez v3, :cond_e

    if-ne v11, v12, :cond_e

    if-ne v15, v0, :cond_e

    if-nez v14, :cond_e

    const/16 v0, 0x5a

    goto :goto_9

    :cond_e
    if-nez v3, :cond_f

    if-ne v11, v0, :cond_f

    if-ne v15, v12, :cond_f

    if-nez v14, :cond_f

    const/16 v0, 0x10e

    goto :goto_9

    :cond_f
    if-ne v3, v0, :cond_10

    if-nez v11, :cond_10

    if-nez v15, :cond_10

    if-ne v14, v0, :cond_10

    const/16 v0, 0xb4

    :goto_9
    move/from16 v21, v0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_a

    :cond_10
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x0

    :goto_a
    cmp-long v0, p2, v11

    if-nez v0, :cond_11

    move-wide/from16 v22, v19

    goto :goto_b

    :cond_11
    move-wide/from16 v22, p2

    :goto_b
    iget-object v0, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Landroidx/media3/extractor/mp4/AtomParsers;->parseMvhd(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/recyclerview/widget/ChildHelper$Bucket;

    move-result-object v0

    iget-wide v13, v0, Landroidx/recyclerview/widget/ChildHelper$Bucket;->mData:J

    cmp-long v0, v22, v11

    if-nez v0, :cond_12

    goto :goto_c

    :cond_12
    const-wide/32 v24, 0xf4240

    move-wide/from16 v26, v13

    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    :goto_c
    const v0, 0x6d696e66

    invoke-virtual {v8, v0}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7374626c

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x6d646864

    invoke-virtual {v8, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_13

    const/16 v15, 0x8

    goto :goto_d

    :cond_13
    const/16 v15, 0x10

    :goto_d
    invoke-virtual {v6, v15}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    if-nez v8, :cond_14

    const/4 v8, 0x4

    goto :goto_e

    :cond_14
    const/16 v8, 0x8

    :goto_e
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v17, v6, 0xa

    and-int/lit8 v17, v17, 0x1f

    add-int/lit8 v0, v17, 0x60

    int-to-char v0, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v6, 0x5

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v0, v6, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const v6, 0x73747364

    invoke-virtual {v3, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_56

    iget-object v3, v3, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v6

    check-cast v22, Ljava/lang/String;

    move-object/from16 v19, v3

    move/from16 v20, v10

    move-object/from16 v23, p4

    move/from16 v24, p6

    invoke-static/range {v19 .. v24}, Landroidx/media3/extractor/mp4/AtomParsers;->parseStsd(Landroidx/media3/common/util/ParsableByteArray;IILjava/lang/String;Landroidx/media3/common/DrmInitData;Z)Lcom/motorola/camera/saving/XmpData$GDepth;

    move-result-object v3

    if-nez p5, :cond_1a

    const v6, 0x65647473

    invoke-virtual {v5, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    if-eqz v6, :cond_1a

    const v8, 0x656c7374

    invoke-virtual {v6, v8}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    if-nez v6, :cond_15

    move-object/from16 v38, v2

    move/from16 v37, v4

    move-object/from16 v36, v7

    move-wide/from16 v22, v11

    const/4 v2, 0x0

    goto :goto_12

    :cond_15
    iget-object v6, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    move-object/from16 v36, v7

    new-array v7, v15, [J

    move/from16 v37, v4

    new-array v4, v15, [J

    move-object/from16 v38, v2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v15, :cond_19

    move/from16 v16, v15

    const/4 v15, 0x1

    if-ne v8, v15, :cond_16

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v17

    goto :goto_10

    :cond_16
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v17

    :goto_10
    aput-wide v17, v7, v2

    if-ne v8, v15, :cond_17

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v17

    move-wide/from16 v22, v11

    goto :goto_11

    :cond_17
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    move-wide/from16 v22, v11

    int-to-long v11, v15

    move-wide/from16 v17, v11

    :goto_11
    aput-wide v17, v4, v2

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readShort()S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_18

    const/4 v11, 0x2

    invoke-virtual {v6, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v16

    move-wide/from16 v11, v22

    goto :goto_f

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-wide/from16 v22, v11

    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_12
    if-eqz v2, :cond_1b

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [J

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [J

    move-object/from16 v29, v2

    move-object/from16 v28, v4

    goto :goto_13

    :cond_1a
    move-object/from16 v38, v2

    move/from16 v37, v4

    move-object/from16 v36, v7

    move-wide/from16 v22, v11

    :cond_1b
    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_13
    iget-object v2, v3, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/common/Format;

    if-nez v2, :cond_1c

    :goto_14
    move-object/from16 v0, p7

    const/4 v2, 0x0

    const v4, 0x6d696e66

    goto :goto_15

    :cond_1c
    new-instance v2, Landroidx/media3/extractor/mp4/Track;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v0, v3, Lcom/motorola/camera/saving/XmpData$GDepth;->mRoi:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroidx/media3/common/Format;

    iget v0, v3, Lcom/motorola/camera/saving/XmpData$GDepth;->mFar:I

    iget-object v4, v3, Lcom/motorola/camera/saving/XmpData$GDepth;->mData:Ljava/lang/Object;

    move-object/from16 v26, v4

    check-cast v26, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget v3, v3, Lcom/motorola/camera/saving/XmpData$GDepth;->mNear:I

    const v4, 0x6d696e66

    move-object v15, v2

    move/from16 v16, v10

    move/from16 v17, v9

    move-wide/from16 v20, v13

    move/from16 v25, v0

    move/from16 v27, v3

    invoke-direct/range {v15 .. v29}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object/from16 v0, p7

    :goto_15
    invoke-interface {v0, v2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/media3/extractor/mp4/Track;

    if-nez v7, :cond_1d

    move-object/from16 v0, v38

    goto/16 :goto_43

    :cond_1d
    const v2, 0x6d646961

    invoke-virtual {v5, v2}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v4}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7374626c

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7374737a

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v4, v7, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    if-eqz v3, :cond_1e

    new-instance v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v5, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;Landroidx/media3/common/Format;)V

    goto :goto_16

    :cond_1e
    const v3, 0x73747a32

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_55

    new-instance v5, Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-direct {v5, v3}, Lcom/adobe/xmp/impl/xpath/PathPosition;-><init>(Landroidx/media3/extractor/mp4/Atom$LeafAtom;)V

    :goto_16
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    if-nez v3, :cond_1f

    new-instance v2, Landroidx/media3/extractor/mp4/TrackSampleTable;

    const/4 v3, 0x0

    new-array v8, v3, [J

    new-array v9, v3, [I

    const/4 v10, 0x0

    new-array v11, v3, [J

    new-array v12, v3, [I

    const-wide/16 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v14}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    :goto_17
    move-object/from16 v0, v38

    goto/16 :goto_42

    :cond_1f
    const v6, 0x7374636f

    invoke-virtual {v2, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    if-nez v6, :cond_20

    const v6, 0x636f3634

    invoke-virtual {v2, v6}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    goto :goto_18

    :cond_20
    const/4 v8, 0x0

    :goto_18
    const v9, 0x73747363

    invoke-virtual {v2, v9}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x73747473

    invoke-virtual {v2, v10}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v11, 0x73747373

    invoke-virtual {v2, v11}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    if-eqz v11, :cond_21

    iget-object v11, v11, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_19

    :cond_21
    const/4 v11, 0x0

    :goto_19
    const v12, 0x63747473

    invoke-virtual {v2, v12}, Landroidx/media3/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media3/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_1a

    :cond_22
    const/4 v2, 0x0

    :goto_1a
    new-instance v12, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v12, v9, v6, v8}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    iget-object v6, v10, Landroidx/media3/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    if-eqz v2, :cond_23

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    goto :goto_1b

    :cond_23
    const/4 v14, 0x0

    :goto_1b
    if-eqz v11, :cond_25

    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    if-lez v8, :cond_24

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    const/4 v0, -0x1

    add-int/lit8 v35, v15, -0x1

    move v15, v8

    move/from16 v16, v35

    goto :goto_1c

    :cond_24
    const/4 v0, -0x1

    move/from16 v16, v0

    move v15, v8

    const/4 v11, 0x0

    goto :goto_1c

    :cond_25
    const/4 v0, -0x1

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_1c
    invoke-interface {v5}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v8

    move/from16 v17, v10

    iget-object v10, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v8, v0, :cond_27

    const-string v0, "audio/raw"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "audio/g711-mlaw"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "audio/g711-alaw"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    if-nez v9, :cond_27

    if-nez v14, :cond_27

    if-nez v15, :cond_27

    const/4 v0, 0x1

    goto :goto_1d

    :cond_27
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_2c

    iget v0, v12, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v2, v0, [J

    new-array v5, v0, [I

    :goto_1e
    invoke-virtual {v12}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v6

    if-eqz v6, :cond_28

    iget v6, v12, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v9, v12, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v9, v2, v6

    iget v9, v12, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v9, v5, v6

    goto :goto_1e

    :cond_28
    int-to-long v9, v13

    const/16 v6, 0x2000

    div-int/2addr v6, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1f
    if-ge v11, v0, :cond_29

    aget v13, v5, v11

    sget v14, Landroidx/media3/common/util/Util;->SDK_INT:I

    add-int/2addr v13, v6

    const/4 v14, -0x1

    add-int/2addr v13, v14

    div-int/2addr v13, v6

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_29
    new-array v11, v12, [J

    new-array v13, v12, [I

    new-array v14, v12, [J

    new-array v12, v12, [I

    const/4 v1, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_20
    if-ge v15, v0, :cond_2b

    aget v18, v5, v15

    aget-wide v19, v2, v15

    move/from16 v47, v17

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v16, v47

    move/from16 v48, v18

    move-object/from16 v18, v2

    move/from16 v2, v48

    :goto_21
    if-lez v2, :cond_2a

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v21

    aput-wide v19, v11, v16

    move-object/from16 v22, v5

    mul-int v5, v8, v21

    aput v5, v13, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v23, v6

    int-to-long v5, v1

    mul-long/2addr v5, v9

    aput-wide v5, v14, v16

    const/4 v5, 0x1

    aput v5, v12, v16

    aget v5, v13, v16

    int-to-long v5, v5

    add-long v19, v19, v5

    add-int v1, v1, v21

    sub-int v2, v2, v21

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v5, v22

    move/from16 v6, v23

    goto :goto_21

    :cond_2a
    move-object/from16 v22, v5

    move/from16 v23, v6

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v18

    move/from16 v47, v16

    move/from16 v16, v0

    move/from16 v0, v17

    move/from16 v17, v47

    goto :goto_20

    :cond_2b
    int-to-long v0, v1

    mul-long/2addr v9, v0

    move-object/from16 v17, v4

    move-object v8, v11

    move-object v11, v14

    move-object v14, v7

    goto/16 :goto_2d

    :cond_2c
    new-array v0, v3, [J

    new-array v1, v3, [I

    new-array v8, v3, [J

    new-array v10, v3, [I

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move/from16 v25, v9

    move/from16 v9, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v16, v14

    move/from16 v14, v17

    move-object/from16 v17, v4

    move v4, v15

    move v15, v13

    :goto_22
    const-string v13, "AtomParsers"

    if-ge v7, v3, :cond_35

    const/16 v26, 0x1

    :goto_23
    if-nez v19, :cond_2d

    invoke-virtual {v12}, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v26

    if-eqz v26, :cond_2d

    move/from16 v27, v14

    move/from16 v28, v15

    iget-wide v14, v12, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v29, v3

    iget v3, v12, Landroidx/media3/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v19, v3

    move-wide/from16 v23, v14

    move/from16 v14, v27

    move/from16 v15, v28

    move/from16 v3, v29

    goto :goto_23

    :cond_2d
    move/from16 v29, v3

    move/from16 v27, v14

    move/from16 v28, v15

    if-nez v26, :cond_2e

    const-string v3, "Unexpected end of chunk data"

    invoke-static {v13, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    move v3, v7

    goto/16 :goto_27

    :cond_2e
    if-eqz v2, :cond_30

    :goto_24
    if-nez v40, :cond_2f

    if-lez v16, :cond_2f

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v40

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v39

    add-int/lit8 v16, v16, -0x1

    goto :goto_24

    :cond_2f
    add-int/lit8 v40, v40, -0x1

    :cond_30
    move/from16 v3, v39

    aput-wide v23, v0, v7

    invoke-interface {v5}, Landroidx/media3/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v13

    aput v13, v1, v7

    if-le v13, v6, :cond_31

    move v6, v13

    :cond_31
    int-to-long v13, v3

    add-long v13, v21, v13

    aput-wide v13, v8, v7

    if-nez v11, :cond_32

    const/4 v13, 0x1

    goto :goto_25

    :cond_32
    const/4 v13, 0x0

    :goto_25
    aput v13, v10, v7

    if-ne v7, v9, :cond_33

    const/4 v13, 0x1

    aput v13, v10, v7

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_33

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    sub-int/2addr v9, v13

    :cond_33
    move/from16 v13, v28

    int-to-long v14, v13

    add-long v21, v21, v14

    add-int/lit8 v14, v27, -0x1

    if-nez v14, :cond_34

    if-lez v25, :cond_34

    invoke-virtual/range {v20 .. v20}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    invoke-virtual/range {v20 .. v20}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v14

    add-int/lit8 v25, v25, -0x1

    move v15, v14

    move v14, v13

    goto :goto_26

    :cond_34
    move v15, v13

    :goto_26
    aget v13, v1, v7

    move-object/from16 v26, v0

    move-object/from16 v28, v1

    int-to-long v0, v13

    add-long v23, v23, v0

    add-int/lit8 v19, v19, -0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v39, v3

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v3, v29

    goto/16 :goto_22

    :cond_35
    move-object/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v29, v3

    move/from16 v27, v14

    :goto_27
    move/from16 v5, v19

    move/from16 v7, v39

    int-to-long v11, v7

    add-long v11, v21, v11

    if-eqz v2, :cond_37

    :goto_28
    if-lez v16, :cond_37

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    if-eqz v7, :cond_36

    const/4 v2, 0x0

    goto :goto_29

    :cond_36
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_28

    :cond_37
    const/4 v2, 0x1

    :goto_29
    if-nez v4, :cond_39

    if-nez v27, :cond_39

    if-nez v5, :cond_39

    if-nez v25, :cond_39

    move/from16 v7, v40

    if-nez v7, :cond_3a

    if-nez v2, :cond_38

    goto :goto_2a

    :cond_38
    move-object/from16 v14, v18

    goto :goto_2c

    :cond_39
    move/from16 v7, v40

    :cond_3a
    :goto_2a
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "Inconsistent stbl box for track "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, v18

    iget v15, v14, Landroidx/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v27

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesInChunk "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingTimestampDeltaChanges "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v25

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3b

    const-string v7, ", ctts invalid"

    goto :goto_2b

    :cond_3b
    move-object/from16 v7, v36

    :goto_2b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    move-object v13, v1

    move/from16 v16, v6

    move-object/from16 v47, v8

    move-object v8, v0

    move-wide/from16 v48, v11

    move-object/from16 v11, v47

    move-object v12, v10

    move-wide/from16 v9, v48

    :goto_2d
    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    const-wide/32 v20, 0xf4240

    move-wide/from16 v18, v9

    move-wide/from16 v22, v0

    invoke-static/range {v18 .. v23}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    iget-wide v4, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    iget-object v2, v14, Landroidx/media3/extractor/mp4/Track;->editListDurations:[J

    if-nez v2, :cond_3c

    invoke-static {v11, v4, v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJ)V

    new-instance v2, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v6, v2

    move-object v7, v14

    move-object v9, v13

    move/from16 v10, v16

    move-wide v13, v0

    invoke-direct/range {v6 .. v14}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    move-object/from16 v15, p1

    :goto_2e
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_3c
    array-length v0, v2

    iget v1, v14, Landroidx/media3/extractor/mp4/Track;->type:I

    iget-object v6, v14, Landroidx/media3/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v7, 0x1

    if-ne v0, v7, :cond_41

    if-ne v1, v7, :cond_41

    array-length v0, v11

    const/4 v7, 0x2

    if-lt v0, v7, :cond_41

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget-wide v18, v6, v0

    aget-wide v20, v2, v0

    move v7, v1

    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-object v15, v6

    move/from16 v26, v7

    iget-wide v6, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v6

    invoke-static/range {v20 .. v25}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    add-long v0, v0, v18

    array-length v6, v11

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v20, v3

    const/4 v3, 0x0

    const/4 v7, 0x4

    invoke-static {v7, v3, v6}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v21

    move-object/from16 v22, v15

    array-length v15, v11

    sub-int/2addr v15, v7

    invoke-static {v15, v3, v6}, Landroidx/media3/common/util/Util;->constrainValue(III)I

    move-result v6

    aget-wide v23, v11, v3

    cmp-long v3, v23, v18

    if-gtz v3, :cond_3d

    aget-wide v27, v11, v21

    cmp-long v3, v18, v27

    if-gez v3, :cond_3d

    aget-wide v6, v11, v6

    cmp-long v3, v6, v0

    if-gez v3, :cond_3d

    cmp-long v3, v0, v9

    if-gtz v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_2f

    :cond_3d
    const/4 v3, 0x0

    :goto_2f
    if-eqz v3, :cond_40

    sub-long v39, v9, v0

    sub-long v41, v18, v23

    move-object/from16 v0, v17

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v6, v0

    move-wide/from16 v17, v9

    iget-wide v9, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v43, v6

    move-wide/from16 v45, v9

    invoke-static/range {v41 .. v46}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    int-to-long v0, v0

    iget-wide v9, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v41, v0

    move-wide/from16 v43, v9

    invoke-static/range {v39 .. v44}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v3, v6, v9

    if-nez v3, :cond_3e

    cmp-long v3, v0, v9

    if-eqz v3, :cond_3f

    :cond_3e
    const-wide/32 v9, 0x7fffffff

    cmp-long v3, v6, v9

    if-gtz v3, :cond_3f

    cmp-long v3, v0, v9

    if-gtz v3, :cond_3f

    long-to-int v3, v6

    move-object/from16 v15, p1

    iput v3, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v0

    iput v0, v15, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    invoke-static {v11, v4, v5}, Landroidx/media3/common/util/Util;->scaleLargeTimestampsInPlace([JJ)V

    const/4 v0, 0x0

    aget-wide v17, v2, v0

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v0

    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    new-instance v2, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v6, v2

    move-object v7, v14

    move-object v9, v13

    move/from16 v10, v16

    move-wide v13, v0

    invoke-direct/range {v6 .. v14}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_2e

    :cond_3f
    move-object/from16 v15, p1

    goto :goto_31

    :cond_40
    move-object/from16 v15, p1

    :goto_30
    move-wide/from16 v17, v9

    goto :goto_31

    :cond_41
    move-object/from16 v15, p1

    move/from16 v26, v1

    move/from16 v20, v3

    move-object/from16 v22, v6

    goto :goto_30

    :goto_31
    array-length v0, v2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    const/4 v0, 0x0

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_43

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v1, v22, v0

    move v3, v0

    :goto_32
    array-length v4, v11

    if-ge v3, v4, :cond_42

    aget-wide v4, v11, v3

    sub-long v19, v4, v1

    const-wide/32 v21, 0xf4240

    iget-wide v4, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v23, v4

    invoke-static/range {v19 .. v24}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    aput-wide v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_42
    sub-long v19, v17, v1

    const-wide/32 v21, 0xf4240

    iget-wide v1, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v23, v1

    invoke-static/range {v19 .. v24}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    new-instance v3, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v6, v3

    move-object v7, v14

    move-object v9, v13

    move/from16 v10, v16

    move-wide v13, v1

    invoke-direct/range {v6 .. v14}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    goto/16 :goto_41

    :cond_43
    move/from16 v3, v26

    const/4 v1, 0x1

    goto :goto_33

    :cond_44
    const/4 v0, 0x0

    move/from16 v3, v26

    :goto_33
    if-ne v3, v1, :cond_45

    const/4 v1, 0x1

    goto :goto_34

    :cond_45
    move v1, v0

    :goto_34
    array-length v4, v2

    new-array v4, v4, [I

    array-length v5, v2

    new-array v5, v5, [I

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v0

    move v7, v6

    move v9, v7

    move v10, v9

    :goto_35
    array-length v0, v2

    if-ge v6, v0, :cond_49

    move/from16 v17, v7

    move-object v0, v8

    aget-wide v7, v22, v6

    const-wide/16 v18, -0x1

    cmp-long v18, v7, v18

    if-eqz v18, :cond_48

    aget-wide v23, v2, v6

    move-object/from16 v18, v2

    move/from16 v19, v3

    iget-wide v2, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move/from16 v21, v9

    move/from16 v29, v10

    iget-wide v9, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v2

    move-wide/from16 v27, v9

    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    const/4 v9, 0x1

    invoke-static {v11, v7, v8, v9}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZ)I

    move-result v10

    aput v10, v4, v6

    add-long/2addr v7, v2

    invoke-static {v11, v7, v8, v1}, Landroidx/media3/common/util/Util;->binarySearchCeil([JJZ)I

    move-result v2

    aput v2, v5, v6

    :goto_36
    aget v2, v4, v6

    aget v3, v5, v6

    if-ge v2, v3, :cond_46

    aget v7, v12, v2

    and-int/2addr v7, v9

    if-nez v7, :cond_46

    add-int/lit8 v2, v2, 0x1

    aput v2, v4, v6

    const/4 v9, 0x1

    goto :goto_36

    :cond_46
    sub-int v7, v3, v2

    add-int v7, v7, v21

    move/from16 v8, v29

    if-eq v8, v2, :cond_47

    const/4 v2, 0x1

    goto :goto_37

    :cond_47
    const/4 v2, 0x0

    :goto_37
    or-int v2, v17, v2

    move v10, v3

    move v9, v7

    move v7, v2

    goto :goto_38

    :cond_48
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v21, v9

    move v8, v10

    move/from16 v7, v17

    :goto_38
    add-int/lit8 v6, v6, 0x1

    move-object v8, v0

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto :goto_35

    :cond_49
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v17, v7

    move-object v0, v8

    move/from16 v3, v20

    if-eq v9, v3, :cond_4a

    const/4 v1, 0x1

    goto :goto_39

    :cond_4a
    const/4 v1, 0x0

    :goto_39
    or-int v1, v17, v1

    if-eqz v1, :cond_4b

    new-array v2, v9, [J

    move-object v8, v2

    goto :goto_3a

    :cond_4b
    move-object v8, v0

    :goto_3a
    if-eqz v1, :cond_4c

    new-array v2, v9, [I

    goto :goto_3b

    :cond_4c
    move-object v2, v13

    :goto_3b
    if-eqz v1, :cond_4d

    const/4 v3, 0x0

    goto :goto_3c

    :cond_4d
    move/from16 v3, v16

    :goto_3c
    if-eqz v1, :cond_4e

    new-array v6, v9, [I

    move-object v10, v6

    goto :goto_3d

    :cond_4e
    move-object v10, v12

    :goto_3d
    new-array v9, v9, [J

    move/from16 v16, v3

    move-object/from16 v7, v18

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-wide/16 v17, 0x0

    :goto_3e
    array-length v15, v7

    if-ge v3, v15, :cond_54

    aget-wide v20, v22, v3

    aget v15, v4, v3

    move-object/from16 v29, v4

    aget v4, v5, v3

    move-object/from16 v30, v5

    if-eqz v1, :cond_4f

    sub-int v5, v4, v15

    invoke-static {v0, v15, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v13, v15, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12, v15, v10, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4f
    move/from16 v5, v16

    :goto_3f
    if-ge v15, v4, :cond_53

    const-wide/32 v31, 0xf4240

    move/from16 v33, v3

    move/from16 v34, v4

    iget-wide v3, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    const-wide/32 v25, 0xf4240

    move-wide/from16 v23, v17

    move-wide/from16 v27, v3

    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    aget-wide v23, v11, v15

    sub-long v23, v23, v20

    move-object/from16 v36, v10

    move-object/from16 v35, v11

    iget-wide v10, v14, Landroidx/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v25, v31

    move-wide/from16 v27, v10

    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    move-object/from16 v23, v0

    const/4 v0, 0x1

    move/from16 v47, v19

    move-object/from16 v19, v12

    move/from16 v12, v47

    if-eq v12, v0, :cond_50

    move/from16 v16, v0

    goto :goto_40

    :cond_50
    const/16 v16, 0x0

    :goto_40
    move/from16 v24, v1

    const-wide/16 v0, 0x0

    if-eqz v16, :cond_51

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_51
    add-long/2addr v3, v10

    aput-wide v3, v9, v6

    if-eqz v24, :cond_52

    aget v3, v2, v6

    if-le v3, v5, :cond_52

    aget v3, v13, v15

    move v5, v3

    :cond_52
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v3, v33

    move/from16 v4, v34

    move-object/from16 v11, v35

    move-object/from16 v10, v36

    move-object/from16 v47, v19

    move/from16 v19, v12

    move-object/from16 v12, v47

    goto :goto_3f

    :cond_53
    move-object/from16 v23, v0

    move/from16 v24, v1

    move/from16 v33, v3

    move-object/from16 v36, v10

    move-object/from16 v35, v11

    const-wide/16 v0, 0x0

    move/from16 v47, v19

    move-object/from16 v19, v12

    move/from16 v12, v47

    aget-wide v3, v7, v33

    add-long v17, v17, v3

    add-int/lit8 v3, v33, 0x1

    move/from16 v16, v5

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v47, v19

    move/from16 v19, v12

    move-object/from16 v12, v47

    goto/16 :goto_3e

    :cond_54
    move-object/from16 v36, v10

    const-wide/32 v25, 0xf4240

    iget-wide v0, v14, Landroidx/media3/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v23, v17

    move-wide/from16 v27, v0

    invoke-static/range {v23 .. v28}, Landroidx/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    new-instance v3, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object v6, v3

    move-object v7, v14

    move-object v4, v9

    move-object v9, v2

    move-object/from16 v12, v36

    move/from16 v10, v16

    move-object v11, v4

    move-wide v13, v0

    invoke-direct/range {v6 .. v14}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[IJ)V

    :goto_41
    move-object v2, v3

    goto/16 :goto_17

    :goto_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_43
    add-int/lit8 v4, v37, 0x1

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_55
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_56
    const/4 v1, 0x0

    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_57
    move-object v0, v2

    return-object v0
.end method
