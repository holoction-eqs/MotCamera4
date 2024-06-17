.class public final Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    iput-object p3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    return-void
.end method

.method public static createString(Ljava/lang/String;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 3

    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 2

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 5

    .line 2
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createURational([Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;Ljava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 6

    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    iget-wide v4, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v3, v3, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 0

    .line 1
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;
    .locals 4

    .line 2
    sget-object v0, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method


# virtual methods
.method public final getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    instance-of p1, p0, [J

    const/4 v0, 0x0

    const-string v1, "There are more than one component"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    check-cast p0, [J

    array-length p1, p0

    if-ne p1, v2, :cond_1

    aget-wide p0, p0, v0

    long-to-double p0, p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of p1, p0, [I

    if-eqz p1, :cond_4

    check-cast p0, [I

    array-length p1, p0

    if-ne p1, v2, :cond_3

    aget p0, p0, v0

    int-to-double p0, p0

    return-wide p0

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of p1, p0, [D

    if-eqz p1, :cond_6

    check-cast p0, [D

    array-length p1, p0

    if-ne p1, v2, :cond_5

    aget-wide p0, p0, v0

    return-wide p0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of p1, p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    if-eqz p1, :cond_8

    check-cast p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    array-length p1, p0

    if-ne p1, v2, :cond_7

    aget-object p0, p0, v0

    iget-wide v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    long-to-double v0, v0

    iget-wide p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    long-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0

    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Couldn\'t find a double value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "NULL can\'t be converted to a double value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getIntValue(Ljava/nio/ByteOrder;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p0

    if-eqz p0, :cond_5

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    instance-of p1, p0, [J

    const/4 v0, 0x0

    const-string v1, "There are more than one component"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    check-cast p0, [J

    array-length p1, p0

    if-ne p1, v2, :cond_1

    aget-wide p0, p0, v0

    long-to-int p0, p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of p1, p0, [I

    if-eqz p1, :cond_4

    check-cast p0, [I

    array-length p1, p0

    if-ne p1, v2, :cond_3

    aget p0, p0, v0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "Couldn\'t find a integer value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "NULL can\'t be converted to a integer value"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, [J

    const-string v2, ","

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast p0, [J

    :cond_2
    :goto_0
    array-length p1, p0

    if-ge v3, p1, :cond_3

    aget-wide v4, p0, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    array-length p1, p0

    if-eq v3, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v1, p0, [I

    if-eqz v1, :cond_7

    check-cast p0, [I

    :cond_5
    :goto_1
    array-length p1, p0

    if-ge v3, p1, :cond_6

    aget p1, p0, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    array-length p1, p0

    if-eq v3, p1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    instance-of v1, p0, [D

    if-eqz v1, :cond_a

    check-cast p0, [D

    :cond_8
    :goto_2
    array-length p1, p0

    if-ge v3, p1, :cond_9

    aget-wide v4, p0, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    array-length p1, p0

    if-eq v3, p1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v1, p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    if-eqz v1, :cond_d

    check-cast p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    :cond_b
    :goto_3
    array-length p1, p0

    if-ge v3, p1, :cond_c

    aget-object p1, p0, v3

    iget-wide v4, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->numerator:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p1, p0, v3

    iget-wide v4, p1, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;->denominator:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    array-length p1, p0

    if-eq v3, p1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1
.end method

.method public final getValue(Ljava/nio/ByteOrder;)Ljava/io/Serializable;
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v2, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    iput-object p1, v2, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    iget p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v3, 0xffffffffL

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->numberOfComponents:I

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    :try_start_1
    new-array p1, p0, [D

    :goto_0
    if-ge v6, p0, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v3

    aput-wide v3, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :pswitch_1
    new-array p1, p0, [D

    :goto_1
    if-ge v6, p0, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFloat()F

    move-result v0

    float-to-double v3, v0

    aput-wide v3, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :pswitch_2
    new-array p1, p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    :goto_2
    if-ge v6, p0, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v7, v0

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    invoke-direct {v0, v3, v4, v7, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    return-object p1

    :pswitch_3
    new-array p1, p0, [I

    :goto_3
    if-ge v6, p0, :cond_3

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    aput v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    return-object p1

    :pswitch_4
    new-array p1, p0, [I

    :goto_4
    if-ge v6, p0, :cond_4

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v0

    aput v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    return-object p1

    :pswitch_5
    new-array p1, p0, [Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    :goto_5
    if-ge v6, p0, :cond_5

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v7, v0

    and-long/2addr v7, v3

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v9, v3

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata$Rational;-><init>(JJ)V

    aput-object v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    return-object p1

    :pswitch_6
    new-array p1, p0, [J

    :goto_6
    if-ge v6, p0, :cond_6

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v7, v0

    and-long/2addr v7, v3

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    return-object p1

    :pswitch_7
    new-array p1, p0, [I

    :goto_7
    if-ge v6, p0, :cond_7

    invoke-virtual {v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    aput v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    return-object p1

    :pswitch_8
    sget-object p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->JPEG_SIGNATURE:[B

    const/16 p1, 0x8

    if-lt p0, p1, :cond_a

    move v2, v6

    :goto_8
    sget-object v3, Lcom/motorola/camera/photometadata/PhotoMetadata;->EXIF_ASCII_PREFIX:[B

    if-ge v2, p1, :cond_9

    aget-byte v4, v0, v2

    aget-byte v3, v3, v2

    if-eq v4, v3, :cond_8

    move v5, v6

    goto :goto_9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    if-eqz v5, :cond_a

    move v6, p1

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a
    if-ge v6, p0, :cond_d

    aget-byte v2, v0, v6

    if-nez v2, :cond_b

    goto :goto_c

    :cond_b
    const/16 v3, 0x20

    if-lt v2, v3, :cond_c

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_c
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_d
    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    array-length p0, v0

    if-ne p0, v5, :cond_e

    aget-byte p0, v0, v6

    if-ltz p0, :cond_e

    if-gt p0, v5, :cond_e

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/photometadata/PhotoMetadata;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "PhotoMetadata"

    const-string v0, "IOException occurred during reading a value"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/photometadata/PhotoMetadata;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->bytes:[B

    array-length p0, p0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
