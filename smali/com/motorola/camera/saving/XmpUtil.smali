.class public abstract Lcom/motorola/camera/saving/XmpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addAppXSegments(I[BLjava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/ByteArrayInputStream;Z)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v2}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    add-int/lit16 p0, p0, 0xe0

    iput p0, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    array-length p0, p1

    iput p0, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    iput-object p1, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    iput-boolean v1, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->isBlob:Z

    move-object p0, v2

    :goto_0
    if-nez p0, :cond_2

    return v0

    :cond_2
    move p1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xe1

    if-ge p1, v2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v2}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget p1, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne p1, v3, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p1, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p2, v2

    :goto_3
    :try_start_0
    invoke-static {p3, p2}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method

.method public static createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;
    .locals 4

    array-length v0, p0

    const v1, 0xfde8

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4b

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v2, p0

    invoke-static {p0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {p0}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    const/16 p1, 0xe1

    iput p1, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    iput-object v1, p0, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static hasXmpHeader([B)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-array v0, v2, [B

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static parse(Ljava/io/ByteArrayInputStream;Z)Ljava/util/ArrayList;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_b

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v3, 0xd8

    if-eq v1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    if-eq v3, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_3

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v0

    :cond_3
    const/16 v5, 0xda

    const/4 v6, 0x0

    if-ne v3, v5, :cond_5

    if-nez p1, :cond_4

    :try_start_4
    new-instance p1, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {p1}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    iput v3, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    iput v4, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    iput-object v3, p1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v3, v6, v2}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-object v1

    :cond_5
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v5, v4, :cond_9

    if-ne v7, v4, :cond_6

    goto :goto_3

    :cond_6
    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v4, v7

    if-eqz p1, :cond_8

    const/16 v5, 0xe1

    if-ne v3, v5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, -0x2

    int-to-long v3, v4

    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    :cond_8
    :goto_2
    new-instance v5, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v5}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    iput v3, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    iput v4, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    add-int/lit8 v4, v4, -0x2

    new-array v3, v4, [B

    iput-object v3, v5, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :cond_9
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object v0

    :cond_a
    :try_start_8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    return-object v1

    :cond_b
    :goto_4
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    throw p1

    :catch_7
    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    return-object v0
.end method

.method public static stripAppSegments(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/ByteArrayInputStream;Z)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v2, v2, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    const/16 v3, 0xe1

    if-gt v3, v2, :cond_1

    const/16 v3, 0xef

    if-gt v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p1, p0}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    .locals 4

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xd8

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-boolean v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->isBlob:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    iget v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    iget v2, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    if-lez v2, :cond_0

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    iget-object v1, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeXmpMeta(Ljava/io/ByteArrayInputStream;Ljava/io/ByteArrayOutputStream;Lcom/motorola/camera/saving/XmpData;)Z
    .locals 16

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/motorola/camera/saving/XmpData;->mMetadata:Lcom/adobe/xmp/XMPMeta;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    return v2

    :cond_1
    iget-object v0, v0, Lcom/motorola/camera/saving/XmpData;->mExtMetadata:Lcom/adobe/xmp/XMPMeta;

    const/16 v4, 0x10

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    :try_start_0
    new-instance v7, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v7}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    invoke-virtual {v7, v5, v3}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    invoke-virtual {v7, v4, v3}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    invoke-static {v0, v7}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v6

    :goto_1
    if-nez v0, :cond_2

    return v2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    new-instance v9, Ljava/util/Formatter;

    invoke-direct {v9, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    array-length v10, v8

    move v11, v2

    :goto_2
    if-ge v11, v10, :cond_3

    aget-byte v12, v8, v11

    const-string v13, "%02x"

    new-array v14, v3, [Ljava/lang/Object;

    add-int/lit16 v12, v12, 0x100

    rem-int/lit16 v12, v12, 0x100

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v2

    invoke-virtual {v9, v13, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :catch_1
    move-object v7, v6

    :goto_3
    :try_start_2
    const-string v8, "http://ns.adobe.com/xmp/note/"

    const-string v9, "HasExtendedXMP"

    move-object v10, v1

    check-cast v10, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v10, v8, v9, v7, v6}, Lcom/adobe/xmp/impl/XMPMetaImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/adobe/xmp/options/PropertyOptions;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v0

    const v10, 0xfde8

    div-int/2addr v9, v10

    new-array v11, v10, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    const/16 v13, 0x4b

    new-array v13, v13, [B

    const-string v14, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x23

    invoke-static {v14, v2, v13, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v14, v2, v13, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v15

    const/4 v7, 0x4

    new-array v14, v7, [B

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    array-length v4, v0

    invoke-virtual {v15, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-static {v14, v2, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v7

    new-array v4, v7, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    move v15, v2

    :goto_4
    if-ge v15, v9, :cond_4

    mul-int v3, v15, v10

    invoke-virtual {v14, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-static {v4, v2, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v11, v13}, Lcom/motorola/camera/saving/XmpUtil;->createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    array-length v0, v0

    mul-int/2addr v9, v10

    sub-int/2addr v0, v9

    if-lez v0, :cond_6

    invoke-virtual {v14, v2, v9}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-static {v4, v2, v13, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v0, [B

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0, v13}, Lcom/motorola/camera/saving/XmpUtil;->createSection([B[B)Lcom/motorola/camera/saving/XmpUtil$Section;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_2
    return v2

    :cond_5
    const/4 v8, 0x0

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/motorola/camera/saving/XmpUtil;->parse(Ljava/io/ByteArrayInputStream;Z)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_3
    new-instance v3, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-direct {v3}, Lcom/adobe/xmp/options/SerializeOptions;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    invoke-static {v1, v3}, Lcom/adobe/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/adobe/xmp/XMPMeta;Lcom/adobe/xmp/options/SerializeOptions;)[B

    move-result-object v1
    :try_end_3
    .catch Lcom/adobe/xmp/XMPException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    const/4 v1, 0x0

    :goto_6
    const/16 v3, 0xe1

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    array-length v4, v1

    const v5, 0xffde

    if-le v4, v5, :cond_8

    :goto_7
    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    array-length v4, v1

    const/16 v5, 0x1d

    add-int/2addr v4, v5

    new-array v6, v4, [B

    const-string v7, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v1

    invoke-static {v1, v2, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/motorola/camera/saving/XmpUtil$Section;

    invoke-direct {v1}, Lcom/motorola/camera/saving/XmpUtil$Section;-><init>()V

    iput v3, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    add-int/lit8 v4, v4, 0x2

    iput v4, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->length:I

    iput-object v6, v1, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    :goto_8
    if-nez v1, :cond_9

    return v2

    :cond_9
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_a

    goto :goto_b

    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget v4, v4, Lcom/motorola/camera/saving/XmpUtil$Section;->marker:I

    if-ne v4, v3, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v3, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_b

    move v3, v2

    goto :goto_9

    :cond_b
    new-array v4, v5, [B

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "Exif\u0000\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_9
    if-eqz v3, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    move v4, v2

    :goto_a
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/XmpUtil$Section;

    iget-object v3, v3, Lcom/motorola/camera/saving/XmpUtil$Section;->data:[B

    invoke-static {v3}, Lcom/motorola/camera/saving/XmpUtil;->hasXmpHeader([B)Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v4, v4, 0x1

    :cond_d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_e

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v6, 0x0

    :goto_c
    if-nez v6, :cond_10

    return v2

    :cond_10
    move-object/from16 v1, p1

    :try_start_4
    invoke-static {v1, v6}, Lcom/motorola/camera/saving/XmpUtil;->writeJpegToStream(Ljava/io/ByteArrayOutputStream;Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :catch_4
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    return v2
.end method
