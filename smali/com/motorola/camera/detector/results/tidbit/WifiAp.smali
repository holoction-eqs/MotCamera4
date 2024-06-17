.class public final Lcom/motorola/camera/detector/results/tidbit/WifiAp;
.super Landroidx/loader/app/LoaderManager;
.source "SourceFile"


# instance fields
.field public hidden:Z

.field public networkEncryption:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public static escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "\\"

    const-string v1, ":"

    const-string v2, ";"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static generateQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 33

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const-string v2, "Shift_JIS"

    const-string v3, "ISO-8859-1"

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    sget-object v9, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    const/16 v10, 0x60

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ge v5, v8, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v13, 0x30

    if-lt v8, v13, :cond_0

    const/16 v13, 0x39

    if-gt v8, v13, :cond_0

    move v7, v12

    goto :goto_2

    :cond_0
    if-ge v8, v10, :cond_1

    aget v6, v9, v8

    goto :goto_1

    :cond_1
    move v6, v11

    :goto_1
    if-eq v6, v11, :cond_4

    move v6, v12

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_3

    :cond_3
    if-eqz v7, :cond_4

    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    new-instance v6, Lcom/google/zxing/common/BitArray;

    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget v7, v5, Lcom/google/zxing/qrcode/decoder/Mode;->bits:I

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v7, Lcom/google/zxing/common/BitArray;

    invoke-direct {v7}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v14, 0x2

    const/16 v15, 0x8

    if-eq v13, v12, :cond_11

    const/4 v12, 0x6

    if-eq v13, v14, :cond_b

    if-eq v13, v8, :cond_a

    if-ne v13, v12, :cond_9

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v3, v2

    rem-int/2addr v3, v14

    if-nez v3, :cond_8

    array-length v3, v2

    add-int/2addr v3, v11

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v3, :cond_14

    aget-byte v9, v2, v8

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v9, v15

    or-int/2addr v9, v10

    const v10, 0x8140

    if-lt v9, v10, :cond_5

    const v10, 0x9ffc

    if-gt v9, v10, :cond_5

    const v10, 0x8140

    goto :goto_5

    :cond_5
    const v10, 0xe040

    if-lt v9, v10, :cond_6

    const v10, 0xebbf

    if-gt v9, v10, :cond_6

    const v10, 0xc140

    :goto_5
    sub-int/2addr v9, v10

    goto :goto_6

    :cond_6
    move v9, v11

    :goto_6
    if-eq v9, v11, :cond_7

    shr-int/lit8 v10, v9, 0x8

    mul-int/lit16 v10, v10, 0xc0

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v10, v9

    const/16 v9, 0xd

    invoke-virtual {v7, v10, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Kanji byte size not even"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/io/UnsupportedEncodingException;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid mode: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    array-length v3, v2

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_14

    aget-byte v9, v2, v8

    invoke-virtual {v7, v9, v15}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/io/UnsupportedEncodingException;)V

    throw v0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_14

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ge v8, v10, :cond_c

    aget v8, v9, v8

    goto :goto_9

    :cond_c
    move v8, v11

    :goto_9
    if-eq v8, v11, :cond_10

    add-int/lit8 v13, v3, 0x1

    if-ge v13, v2, :cond_f

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ge v13, v10, :cond_d

    aget v13, v9, v13

    goto :goto_a

    :cond_d
    move v13, v11

    :goto_a
    if-eq v13, v11, :cond_e

    mul-int/lit8 v8, v8, 0x2d

    add-int/2addr v8, v13

    const/16 v13, 0xb

    invoke-virtual {v7, v8, v13}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    :cond_e
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_f
    invoke-virtual {v7, v8, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v3, v13

    goto :goto_8

    :cond_10
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_14

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int/lit8 v10, v3, 0x2

    if-ge v10, v2, :cond_12

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v11, v11, -0x30

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    mul-int/lit8 v9, v9, 0x64

    const/16 v12, 0xa

    mul-int/2addr v11, v12

    add-int/2addr v11, v9

    add-int/2addr v11, v10

    invoke-virtual {v7, v11, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_b

    :cond_12
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_13

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v3

    const/4 v3, 0x7

    invoke-virtual {v7, v9, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v3, v10

    goto :goto_b

    :cond_13
    invoke-virtual {v7, v9, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_b

    :cond_14
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v3, v6, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, v2, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/16 v8, 0x1a

    const/16 v9, 0x9

    if-gt v2, v9, :cond_15

    const/4 v2, 0x0

    goto :goto_c

    :cond_15
    if-gt v2, v8, :cond_16

    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    const/4 v2, 0x2

    :goto_c
    iget-object v8, v5, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    aget v2, v8, v2

    add-int/2addr v2, v3

    iget v3, v7, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    :goto_d
    const/16 v9, 0x28

    if-gt v3, v9, :cond_84

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    if-lez v3, :cond_83

    if-gt v3, v9, :cond_83

    add-int/lit8 v9, v3, -0x1

    sget-object v10, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    aget-object v9, v10, v9

    iget v10, v9, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    iget-object v11, v9, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/adobe/xmp/impl/ParseState;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget v12, v11, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v11, v11, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v11, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v13, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_e
    if-ge v14, v13, :cond_17

    aget-object v0, v11, v14

    iget v0, v0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v15, v0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_e

    :cond_17
    mul-int/2addr v15, v12

    sub-int/2addr v10, v15

    add-int/lit8 v0, v2, 0x7

    div-int/lit8 v0, v0, 0x8

    if-lt v10, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_f

    :cond_18
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_82

    iget v0, v6, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, v9, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/16 v3, 0x9

    if-gt v2, v3, :cond_19

    const/4 v2, 0x0

    goto :goto_10

    :cond_19
    const/16 v3, 0x1a

    if-gt v2, v3, :cond_1a

    const/4 v2, 0x1

    goto :goto_10

    :cond_1a
    const/4 v2, 0x2

    :goto_10
    aget v2, v8, v2

    add-int/2addr v2, v0

    iget v0, v7, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v2, v0

    const/4 v0, 0x1

    :goto_11
    const/16 v3, 0x28

    if-gt v0, v3, :cond_81

    sget-object v9, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    if-lez v0, :cond_80

    if-gt v0, v3, :cond_80

    add-int/lit8 v3, v0, -0x1

    sget-object v9, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    aget-object v3, v9, v3

    iget v9, v3, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    iget-object v10, v3, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/adobe/xmp/impl/ParseState;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v11, v10, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v10, v10, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v10, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    if-ge v13, v12, :cond_1b

    aget-object v15, v10, v13

    iget v15, v15, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_1b
    mul-int/2addr v14, v11

    sub-int/2addr v9, v14

    add-int/lit8 v10, v2, 0x7

    div-int/lit8 v10, v10, 0x8

    if-lt v9, v10, :cond_1c

    const/4 v9, 0x1

    goto :goto_13

    :cond_1c
    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_7f

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    iget v2, v6, Lcom/google/zxing/common/BitArray;->size:I

    iget v9, v0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v9, v2

    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v2, :cond_1d

    invoke-virtual {v6, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    invoke-virtual {v0, v10}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_1d
    if-ne v5, v4, :cond_1e

    iget v2, v7, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    goto :goto_15

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_15
    iget v4, v3, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    const/16 v5, 0x9

    if-gt v4, v5, :cond_1f

    const/4 v4, 0x0

    goto :goto_16

    :cond_1f
    const/16 v5, 0x1a

    if-gt v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_16

    :cond_20
    const/4 v4, 0x2

    :goto_16
    aget v4, v8, v4

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    if-ge v2, v5, :cond_7e

    invoke-virtual {v0, v2, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v2, v7, Lcom/google/zxing/common/BitArray;->size:I

    iget v4, v0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_21

    invoke-virtual {v7, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_21
    iget-object v2, v3, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/adobe/xmp/impl/ParseState;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget v4, v2, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v5, v2, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v5, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_18
    if-ge v7, v6, :cond_22

    aget-object v9, v5, v7

    iget v9, v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_22
    mul-int/2addr v8, v4

    iget v4, v3, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    sub-int v5, v4, v8

    shl-int/lit8 v6, v5, 0x3

    iget v7, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt v7, v6, :cond_7d

    const/4 v7, 0x0

    :goto_19
    const/4 v8, 0x4

    if-ge v7, v8, :cond_23

    iget v8, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v8, v6, :cond_23

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_23
    const/4 v7, 0x0

    iget v8, v0, Lcom/google/zxing/common/BitArray;->size:I

    and-int/lit8 v8, v8, 0x7

    const/16 v9, 0x8

    if-lez v8, :cond_24

    :goto_1a
    if-ge v8, v9, :cond_24

    invoke-virtual {v0, v7}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_1a

    :cond_24
    iget v7, v0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v7, v7, 0x7

    div-int/2addr v7, v9

    sub-int v7, v5, v7

    const/4 v8, 0x0

    :goto_1b
    if-ge v8, v7, :cond_26

    and-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_25

    const/16 v9, 0xec

    goto :goto_1c

    :cond_25
    const/16 v9, 0x11

    :goto_1c
    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_26
    iget v7, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v7, v6, :cond_7c

    iget-object v2, v2, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v2, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1d
    if-ge v7, v6, :cond_27

    aget-object v9, v2, v7

    iget v9, v9, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_27
    iget v2, v0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-ne v2, v5, :cond_7b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1e
    if-ge v6, v8, :cond_4f

    const/4 v11, 0x1

    new-array v12, v11, [I

    new-array v11, v11, [I

    if-ge v6, v8, :cond_4e

    rem-int v13, v4, v8

    sub-int v14, v8, v13

    div-int v15, v4, v8

    add-int/lit8 v16, v15, 0x1

    div-int v17, v5, v8

    add-int/lit8 v18, v17, 0x1

    sub-int v15, v15, v17

    move-object/from16 v19, v1

    sub-int v1, v16, v18

    if-ne v15, v1, :cond_4d

    move-object/from16 v16, v3

    add-int v3, v14, v13

    if-ne v8, v3, :cond_4c

    add-int v3, v17, v15

    mul-int/2addr v3, v14

    add-int v20, v18, v1

    mul-int v20, v20, v13

    add-int v3, v20, v3

    if-ne v4, v3, :cond_4b

    const/4 v3, 0x0

    if-ge v6, v14, :cond_28

    aput v17, v12, v3

    aput v15, v11, v3

    goto :goto_1f

    :cond_28
    aput v18, v12, v3

    aput v1, v11, v3

    :goto_1f
    aget v1, v12, v3

    new-array v3, v1, [B

    shl-int/lit8 v13, v10, 0x3

    const/4 v14, 0x0

    :goto_20
    if-ge v14, v1, :cond_2b

    const/16 v15, 0x8

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 p0, v8

    move/from16 v8, v17

    move/from16 v17, v4

    move/from16 v4, v18

    :goto_21
    if-ge v4, v15, :cond_2a

    invoke-virtual {v0, v13}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_29

    rsub-int/lit8 v15, v4, 0x7

    const/16 v18, 0x1

    shl-int v15, v18, v15

    or-int/2addr v8, v15

    :cond_29
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v4, v4, 0x1

    const/16 v15, 0x8

    goto :goto_21

    :cond_2a
    add-int/lit8 v4, v14, 0x0

    int-to-byte v8, v8

    aput-byte v8, v3, v4

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, p0

    move/from16 v4, v17

    goto :goto_20

    :cond_2b
    move/from16 v17, v4

    move/from16 p0, v8

    const/4 v4, 0x0

    aget v4, v11, v4

    add-int v8, v1, v4

    new-array v11, v8, [I

    const/4 v13, 0x0

    :goto_22
    if-ge v13, v1, :cond_2c

    aget-byte v14, v3, v13

    and-int/lit16 v14, v14, 0xff

    aput v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    :cond_2c
    sget-object v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/16 v18, 0x1

    move-object/from16 v20, v0

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v0

    invoke-direct {v15, v13, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_4a

    sub-int/2addr v8, v4

    if-lez v8, :cond_49

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v15, "GenericGFPolys do not have same GenericGF field"

    if-lt v4, v0, :cond_37

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v32, v18

    move/from16 v18, v5

    move/from16 v5, v32

    :goto_23
    if-gt v5, v4, :cond_36

    add-int/lit8 v21, v5, -0x1

    move/from16 v22, v6

    iget v6, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    add-int v21, v21, v6

    iget-object v6, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v6, v6, v21

    move/from16 v21, v10

    const/4 v10, 0x1

    filled-new-array {v10, v6}, [I

    move-result-object v6

    const/4 v10, 0x0

    aget v10, v6, v10

    if-nez v10, :cond_2f

    const/4 v10, 0x2

    move-object/from16 v24, v12

    const/4 v12, 0x1

    :goto_24
    if-ge v12, v10, :cond_2d

    aget v23, v6, v12

    if-nez v23, :cond_2d

    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    :cond_2d
    if-ne v12, v10, :cond_2e

    const/4 v6, 0x0

    filled-new-array {v6}, [I

    move-result-object v10

    move/from16 v23, v7

    move/from16 v25, v9

    move v7, v6

    move-object v6, v10

    goto :goto_25

    :cond_2e
    const/4 v10, 0x0

    move/from16 v23, v7

    rsub-int/lit8 v7, v12, 0x2

    move/from16 v25, v9

    new-array v9, v7, [I

    invoke-static {v6, v12, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v9

    move v7, v10

    goto :goto_25

    :cond_2f
    move/from16 v23, v7

    move/from16 v25, v9

    move-object/from16 v24, v12

    const/4 v7, 0x0

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v10

    if-nez v10, :cond_34

    aget v7, v6, v7

    if-nez v7, :cond_30

    const/4 v7, 0x1

    goto :goto_26

    :cond_30
    const/4 v7, 0x0

    :goto_26
    if-eqz v7, :cond_31

    goto :goto_29

    :cond_31
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v7, v0

    array-length v10, v6

    add-int v12, v7, v10

    add-int/lit8 v12, v12, -0x1

    new-array v12, v12, [I

    const/16 v26, 0x0

    move-object/from16 v27, v2

    move/from16 v2, v26

    :goto_27
    if-ge v2, v7, :cond_33

    move/from16 v26, v7

    aget v7, v0, v2

    const/16 v28, 0x0

    move-object/from16 v29, v0

    move/from16 v0, v28

    :goto_28
    if-ge v0, v10, :cond_32

    add-int v28, v2, v0

    aget v30, v12, v28

    move/from16 v31, v10

    aget v10, v6, v0

    invoke-virtual {v9, v7, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    xor-int v10, v10, v30

    aput v10, v12, v28

    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v31

    goto :goto_28

    :cond_32
    move/from16 v31, v10

    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v26

    move-object/from16 v0, v29

    goto :goto_27

    :cond_33
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v0, v9, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_2a

    :cond_34
    :goto_29
    move-object/from16 v27, v2

    iget-object v0, v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    :goto_2a
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move-object/from16 v12, v24

    move/from16 v9, v25

    move-object/from16 v2, v27

    goto/16 :goto_23

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object/from16 v27, v2

    goto :goto_2b

    :cond_37
    move-object/from16 v27, v2

    move/from16 v18, v5

    :goto_2b
    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v25, v9

    move/from16 v21, v10

    move-object/from16 v24, v12

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v2, v8, [I

    const/4 v5, 0x0

    invoke-static {v11, v5, v2, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v8, :cond_48

    const/4 v6, 0x1

    if-le v8, v6, :cond_3a

    aget v5, v2, v5

    if-nez v5, :cond_3a

    const/4 v5, 0x1

    :goto_2c
    if-ge v5, v8, :cond_38

    aget v6, v2, v5

    if-nez v6, :cond_38

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_38
    const/4 v6, 0x0

    if-ne v5, v8, :cond_39

    filled-new-array {v6}, [I

    move-result-object v2

    goto :goto_2d

    :cond_39
    sub-int v7, v8, v5

    new-array v9, v7, [I

    invoke-static {v2, v5, v9, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v9

    :cond_3a
    :goto_2d
    if-ltz v4, :cond_47

    array-length v5, v2

    add-int v6, v4, v5

    new-array v6, v6, [I

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v5, :cond_3b

    aget v9, v2, v7

    const/4 v10, 0x1

    invoke-virtual {v13, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v9

    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_3b
    new-instance v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v2, v13, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iget-object v5, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v13, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v5

    if-nez v5, :cond_45

    iget-object v5, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v6

    aget v6, v5, v7

    if-eqz v6, :cond_44

    iget-object v7, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    aget v6, v7, v6

    iget v7, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    iget-object v6, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    aget v6, v6, v7

    iget-object v7, v13, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v9, v7

    :goto_2f
    iget-object v10, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    array-length v12, v5

    add-int/lit8 v12, v12, -0x1

    if-lt v10, v12, :cond_41

    invoke-virtual {v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v10

    if-nez v10, :cond_41

    iget-object v10, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v12, v10

    add-int/lit8 v12, v12, -0x1

    array-length v14, v5

    add-int/lit8 v14, v14, -0x1

    sub-int/2addr v12, v14

    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    array-length v15, v10

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v14

    aget v10, v10, v15

    invoke-virtual {v13, v10, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    if-ltz v12, :cond_40

    iget-object v14, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    if-nez v10, :cond_3c

    iget-object v14, v14, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v26, v0

    move-object/from16 v28, v5

    move/from16 v30, v6

    goto :goto_31

    :cond_3c
    iget-object v15, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object/from16 v26, v0

    array-length v0, v15

    move-object/from16 v28, v5

    add-int v5, v12, v0

    new-array v5, v5, [I

    const/16 v29, 0x0

    move/from16 v30, v6

    move/from16 v6, v29

    :goto_30
    if-ge v6, v0, :cond_3d

    move/from16 v29, v0

    aget v0, v15, v6

    invoke-virtual {v14, v0, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v0

    aput v0, v5, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v29

    goto :goto_30

    :cond_3d
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v0, v14, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v14, v0

    :goto_31
    if-ltz v12, :cond_3f

    if-nez v10, :cond_3e

    move-object v5, v7

    goto :goto_32

    :cond_3e
    add-int/lit8 v12, v12, 0x1

    new-array v0, v12, [I

    const/4 v5, 0x0

    aput v10, v0, v5

    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v5, v13, v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    :goto_32
    invoke-virtual {v9, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v9

    invoke-virtual {v2, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v5, v28

    move/from16 v6, v30

    goto :goto_2f

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_41
    filled-new-array {v9, v2}, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v2, v0

    sub-int v2, v4, v2

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v2, :cond_42

    add-int v6, v8, v5

    const/4 v7, 0x0

    aput v7, v11, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_42
    const/4 v5, 0x0

    add-int/2addr v8, v2

    array-length v2, v0

    invoke-static {v0, v5, v11, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v4, [B

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v4, :cond_43

    add-int v5, v1, v2

    aget v5, v11, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_43
    new-instance v2, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v2, v3, v0}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v9, v25

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v7, v23

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v1, 0x0

    aget v1, v24, v1

    add-int v10, v21, v1

    add-int/lit8 v6, v22, 0x1

    move/from16 v8, p0

    move-object v2, v0

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    goto/16 :goto_1e

    :cond_44
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    move-object/from16 v19, v1

    move-object v0, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v21, v10

    move/from16 v4, v18

    if-ne v4, v10, :cond_7a

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v9, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_50
    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v5, v5, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    array-length v6, v5

    if-ge v3, v6, :cond_50

    aget-byte v5, v5, v3

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_36

    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_52
    const/4 v3, 0x0

    :goto_37
    if-ge v3, v7, :cond_55

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_53
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/encoder/BlockPair;

    iget-object v5, v5, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    array-length v6, v5

    if-ge v3, v6, :cond_53

    aget-byte v5, v5, v3

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_38

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_55
    iget v0, v2, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    move/from16 v3, v17

    if-ne v3, v0, :cond_79

    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x11

    new-instance v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v3, v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(III)V

    const v3, 0x7fffffff

    move v6, v5

    const/4 v7, -0x1

    :goto_39
    iget v8, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    iget v9, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    const/16 v10, 0x8

    if-ge v5, v10, :cond_6c

    move-object/from16 v10, v19

    invoke-static {v2, v10, v0, v5, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v11, 0x1

    invoke-static {v4, v11}, Lkotlin/ExceptionsKt;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v11

    invoke-static {v4, v6}, Lkotlin/ExceptionsKt;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v6

    add-int/2addr v6, v11

    iget-object v11, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3a
    add-int/lit8 v14, v8, -0x1

    if-ge v12, v14, :cond_58

    aget-object v14, v11, v12

    const/4 v15, 0x0

    :goto_3b
    add-int/lit8 v1, v9, -0x1

    if-ge v15, v1, :cond_57

    aget-byte v1, v14, v15

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v17, v0

    aget-byte v0, v14, v16

    if-ne v1, v0, :cond_56

    add-int/lit8 v0, v12, 0x1

    aget-object v0, v11, v0

    aget-byte v15, v0, v15

    if-ne v1, v15, :cond_56

    aget-byte v0, v0, v16

    if-ne v1, v0, :cond_56

    add-int/lit8 v13, v13, 0x1

    :cond_56
    move/from16 v15, v16

    move-object/from16 v0, v17

    goto :goto_3b

    :cond_57
    move-object/from16 v17, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    :cond_58
    move-object/from16 v17, v0

    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3c
    if-ge v0, v8, :cond_67

    const/4 v6, 0x0

    :goto_3d
    if-ge v6, v9, :cond_66

    aget-object v12, v11, v0

    add-int/lit8 v14, v6, 0x6

    if-ge v14, v9, :cond_5e

    aget-byte v15, v12, v6

    move-object/from16 v16, v2

    const/4 v2, 0x1

    if-ne v15, v2, :cond_5f

    add-int/lit8 v15, v6, 0x1

    aget-byte v15, v12, v15

    if-nez v15, :cond_5f

    add-int/lit8 v15, v6, 0x2

    aget-byte v15, v12, v15

    if-ne v15, v2, :cond_5f

    add-int/lit8 v15, v6, 0x3

    aget-byte v15, v12, v15

    if-ne v15, v2, :cond_5f

    add-int/lit8 v15, v6, 0x4

    aget-byte v15, v12, v15

    if-ne v15, v2, :cond_5f

    add-int/lit8 v15, v6, 0x5

    aget-byte v15, v12, v15

    if-nez v15, :cond_5f

    aget-byte v14, v12, v14

    if-ne v14, v2, :cond_5f

    add-int/lit8 v14, v6, -0x4

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    array-length v15, v12

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_3e
    if-ge v14, v15, :cond_5a

    move/from16 v18, v15

    aget-byte v15, v12, v14

    if-ne v15, v2, :cond_59

    const/4 v2, 0x0

    goto :goto_3f

    :cond_59
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    move/from16 v15, v18

    goto :goto_3e

    :cond_5a
    const/4 v2, 0x1

    :goto_3f
    if-nez v2, :cond_5d

    add-int/lit8 v2, v6, 0x7

    add-int/lit8 v14, v6, 0xb

    const/4 v15, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_40
    if-ge v2, v14, :cond_5c

    aget-byte v15, v12, v2

    move-object/from16 v18, v12

    const/4 v12, 0x1

    if-ne v15, v12, :cond_5b

    const/4 v2, 0x0

    goto :goto_41

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v18

    goto :goto_40

    :cond_5c
    const/4 v2, 0x1

    :goto_41
    if-eqz v2, :cond_5f

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_5e
    move-object/from16 v16, v2

    :cond_5f
    :goto_42
    add-int/lit8 v2, v0, 0x6

    if-ge v2, v8, :cond_65

    aget-object v12, v11, v0

    aget-byte v12, v12, v6

    const/4 v14, 0x1

    if-ne v12, v14, :cond_65

    add-int/lit8 v12, v0, 0x1

    aget-object v12, v11, v12

    aget-byte v12, v12, v6

    if-nez v12, :cond_65

    add-int/lit8 v12, v0, 0x2

    aget-object v12, v11, v12

    aget-byte v12, v12, v6

    if-ne v12, v14, :cond_65

    add-int/lit8 v12, v0, 0x3

    aget-object v12, v11, v12

    aget-byte v12, v12, v6

    if-ne v12, v14, :cond_65

    add-int/lit8 v12, v0, 0x4

    aget-object v12, v11, v12

    aget-byte v12, v12, v6

    if-ne v12, v14, :cond_65

    add-int/lit8 v12, v0, 0x5

    aget-object v12, v11, v12

    aget-byte v12, v12, v6

    if-nez v12, :cond_65

    aget-object v2, v11, v2

    aget-byte v2, v2, v6

    if-ne v2, v14, :cond_65

    add-int/lit8 v2, v0, -0x4

    const/4 v12, 0x0

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v12, v11

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_43
    if-ge v2, v12, :cond_61

    aget-object v15, v11, v2

    aget-byte v15, v15, v6

    if-ne v15, v14, :cond_60

    const/4 v2, 0x0

    goto :goto_44

    :cond_60
    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x1

    goto :goto_43

    :cond_61
    const/4 v2, 0x1

    :goto_44
    if-nez v2, :cond_64

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v12, v0, 0xb

    const/4 v14, 0x0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v14, v11

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_45
    if-ge v2, v12, :cond_63

    aget-object v14, v11, v2

    aget-byte v14, v14, v6

    const/4 v15, 0x1

    if-ne v14, v15, :cond_62

    const/4 v2, 0x0

    goto :goto_46

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_63
    const/4 v2, 0x1

    :goto_46
    if-eqz v2, :cond_65

    :cond_64
    add-int/lit8 v1, v1, 0x1

    :cond_65
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_3d

    :cond_66
    move-object/from16 v16, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3c

    :cond_67
    move-object/from16 v16, v2

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v1, v13

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_47
    if-ge v0, v8, :cond_6a

    aget-object v6, v11, v0

    const/4 v12, 0x0

    :goto_48
    if-ge v12, v9, :cond_69

    aget-byte v13, v6, v12

    const/4 v14, 0x1

    if-ne v13, v14, :cond_68

    add-int/lit8 v2, v2, 0x1

    :cond_68
    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    :cond_6a
    mul-int/2addr v9, v8

    shl-int/lit8 v0, v2, 0x1

    sub-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    if-ge v0, v3, :cond_6b

    move v3, v0

    move v7, v5

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v19, v10

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto/16 :goto_39

    :cond_6c
    move-object v1, v2

    move-object/from16 v10, v19

    invoke-static {v1, v10, v0, v7, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    add-int/lit8 v0, v9, 0x8

    add-int/lit8 v1, v8, 0x8

    const/16 v2, 0x15e

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x15e

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v0, v2, v0

    div-int v1, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v1, v9, v0

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    mul-int v5, v8, v0

    sub-int v5, v3, v5

    div-int/lit8 v5, v5, 0x2

    if-lez v2, :cond_78

    if-lez v3, :cond_78

    add-int/lit8 v6, v2, 0x1f

    div-int/lit8 v6, v6, 0x20

    mul-int v7, v6, v3

    new-array v7, v7, [I

    const/4 v10, 0x0

    :goto_49
    if-ge v10, v8, :cond_73

    const/4 v11, 0x0

    move v12, v1

    :goto_4a
    if-ge v11, v9, :cond_72

    invoke-virtual {v4, v11, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_71

    if-ltz v5, :cond_70

    if-ltz v12, :cond_70

    if-lez v0, :cond_6f

    if-lez v0, :cond_6f

    add-int v13, v0, v12

    add-int v14, v0, v5

    if-gt v14, v3, :cond_6e

    if-gt v13, v2, :cond_6e

    move v15, v5

    :goto_4b
    if-ge v15, v14, :cond_71

    mul-int v16, v6, v15

    move/from16 v17, v1

    move v1, v12

    :goto_4c
    if-ge v1, v13, :cond_6d

    div-int/lit8 v18, v1, 0x20

    add-int v18, v18, v16

    aget v19, v7, v18

    and-int/lit8 v20, v1, 0x1f

    const/16 v21, 0x1

    shl-int v20, v21, v20

    or-int v19, v19, v20

    aput v19, v7, v18

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_6d
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v17

    goto :goto_4b

    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    move/from16 v17, v1

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v12, v0

    move/from16 v1, v17

    goto :goto_4a

    :cond_72
    move/from16 v17, v1

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v5, v0

    goto :goto_49

    :cond_73
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x15e

    const/16 v2, 0x15e

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v3, 0x0

    :goto_4d
    if-ge v3, v1, :cond_77

    const/4 v4, 0x0

    :goto_4e
    if-ge v4, v2, :cond_76

    mul-int v5, v4, v6

    div-int/lit8 v8, v3, 0x20

    add-int/2addr v8, v5

    aget v5, v7, v8

    and-int/lit8 v8, v3, 0x1f

    ushr-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_74

    const/4 v5, 0x1

    goto :goto_4f

    :cond_74
    const/4 v5, 0x0

    :goto_4f
    if-eqz v5, :cond_75

    const/high16 v5, -0x1000000

    goto :goto_50

    :cond_75
    const/4 v5, -0x1

    :goto_50
    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_77
    return-object v0

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    move-object v1, v2

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v2, "Interleaving error: "

    const-string v4, " and "

    invoke-static {v2, v3, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " differ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    move-object/from16 v20, v0

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v20

    iget v2, v2, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is bigger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    move-object v10, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_81
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    move-object v10, v1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_d

    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_84
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAllActions()Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v2, "hidden"

    const-string v3, "enctype"

    const-string v4, "password"

    const-string v5, "ssid"

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v7, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;

    invoke-direct {v7, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/WiFiAction;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120035

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_2

    new-instance v8, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;

    invoke-static {v7, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/motorola/camera/detector/results/tidbit/actions/ClipboardAction;-><init>(Landroid/content/ClipData;)V

    goto :goto_1

    :cond_2
    move-object v8, v6

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "android.intent.extra.TEXT"

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.action.SEND"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v4, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->escapeMetaCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI:S:"

    const-string v5, ";"

    invoke-static {v4, v2, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "P:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "T:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_6

    const-string v3, "H:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "./"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const-string v9, ".jpg"

    invoke-static {v5, p0, v9}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->generateQRCodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v5

    invoke-virtual {v2, v4, v5, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    invoke-static {v7, v3}, Lcom/motorola/camera/Util;->getUriForFile(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v2, "WifiAp"

    const-string v3, "Error generating QR code"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "text/plain"

    invoke-virtual {v7, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    invoke-static {v7, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;->SHARE:Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getCopyString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f12006c

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const v2, 0x7f120067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    if-eqz v3, :cond_0

    const v3, 0x7f120069

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f120068

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const v2, 0x7f12006b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const v2, 0x7f12006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;->addToCopyString(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDetailsString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->getCopyString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getFieldsCount()I
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    iget-object p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;
    .locals 0

    sget-object p0, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->WifiAp:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v0, 0x7f120074

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiAp{ssid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', networkEncryption=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->networkEncryption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/detector/results/tidbit/WifiAp;->hidden:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
