.class public final Lcom/motorola/camera/editor/parser/XMPStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public chunk:I

.field public extended:Ljava/lang/String;

.field public status:I

.field public final stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    new-instance v0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/editor/parser/XMPStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-byte p0, v1, v2

    :goto_0
    return p0
.end method

.method public final read([BII)I
    .locals 10

    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    iget-object v1, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    if-lez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v5, -0x28

    if-eq v0, v5, :cond_1

    return v3

    :cond_1
    iput v4, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    goto :goto_0

    :cond_2
    if-eq v0, v4, :cond_12

    if-ne v0, v2, :cond_3

    goto/16 :goto_9

    .line 2
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v5, -0x27

    const/4 v6, 0x0

    if-eq v0, v5, :cond_11

    const/16 v5, -0x40

    if-lt v0, v5, :cond_4

    const/16 v5, -0x31

    if-gt v0, v5, :cond_4

    const/16 v5, -0x3c

    if-eq v0, v5, :cond_4

    const/16 v5, -0x38

    if-eq v0, v5, :cond_4

    const/16 v5, -0x34

    if-eq v0, v5, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    if-eqz v5, :cond_5

    goto/16 :goto_5

    :cond_5
    const/16 v5, -0x1f

    if-ne v0, v5, :cond_3

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const v5, 0xffff

    and-int/2addr v0, v5

    .line 4
    iget v5, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    if-ne v5, v4, :cond_8

    const/16 v5, 0x1d

    if-ge v0, v5, :cond_6

    goto :goto_2

    :cond_6
    new-array v7, v5, [B

    .line 5
    invoke-virtual {v1, v7, v6, v5}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result v6

    if-ne v6, v5, :cond_7

    .line 6
    new-instance v6, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v7, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    .line 8
    :cond_7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_8
    const/16 v5, 0x23

    if-ge v0, v5, :cond_9

    :goto_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_4

    :cond_9
    new-array v7, v5, [B

    invoke-virtual {v1, v7, v6, v5}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result v8

    if-ne v8, v5, :cond_10

    .line 9
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v7, "http://ns.adobe.com/xmp/extension/\u0000"

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    if-nez v7, :cond_a

    goto :goto_6

    :cond_a
    const/16 v7, 0x20

    new-array v8, v7, [B

    .line 11
    invoke-virtual {v1, v8, v6, v7}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result v6

    if-ne v6, v7, :cond_d

    .line 12
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 13
    iget-object v7, p0, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_0

    :cond_b
    const-wide/16 v6, 0x8

    .line 14
    invoke-virtual {v1, v6, v7}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skip(J)J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-nez v2, :cond_c

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2a

    .line 15
    :goto_3
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    goto :goto_7

    .line 16
    :cond_c
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 17
    :cond_d
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_e
    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v5

    :goto_4
    int-to-long v5, v0

    .line 18
    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skip(J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 19
    :cond_10
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 20
    :cond_11
    :goto_5
    iput v2, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    :goto_6
    move v4, v6

    :goto_7
    if-eqz v4, :cond_12

    .line 21
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    if-lez v0, :cond_12

    :goto_8
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    invoke-virtual {v1, p1, p2, p3}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result p0

    return p0

    :cond_12
    :goto_9
    return v3
.end method
