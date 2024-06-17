.class public final Landroidx/media3/common/util/ParsableByteArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CR_AND_LF:[C

.field public static final LF:[C

.field public static final SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;


# instance fields
.field public data:[B

.field public limit:I

.field public position:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/ParsableByteArray;->CR_AND_LF:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-char v2, v0, v1

    sput-object v0, Landroidx/media3/common/util/ParsableByteArray;->LF:[C

    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    sget-object v3, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const/4 v5, 0x5

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    return-void

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length p1, p1

    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iput p2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method


# virtual methods
.method public final ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    :cond_0
    return-void
.end method

.method public final peekChar(Ljava/nio/charset/Charset;)C
    .locals 3

    sget-object v0, Landroidx/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    int-to-char p0, p0

    return p0
.end method

.method public final peekCharacterAndSize(Ljava/nio/charset/Charset;)I
    .locals 7

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Out of range: %s"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v4, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v4

    if-lt v0, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    long-to-int v0, p0

    int-to-char v0, v0

    int-to-long v4, v0

    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-static {p0, p1, v1, v4}, Lkotlin/collections/ArraysUtilJVM;->checkArgument(JLjava/lang/String;Z)V

    int-to-byte p0, v0

    move v4, v3

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v5

    if-lt v0, v4, :cond_4

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte p1, p0, v5

    add-int/2addr v5, v3

    aget-byte p0, p0, v5

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr p1, v0

    if-lt p1, v4, :cond_6

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 p1, v0, 0x1

    aget-byte p1, p0, p1

    aget-byte p0, p0, v0

    :goto_1
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->fromBytes(BB)C

    move-result p0

    int-to-byte p0, p0

    :goto_2
    int-to-long p0, p0

    long-to-int v0, p0

    int-to-char v0, v0

    int-to-long v5, v0

    cmp-long v5, v5, p0

    if-nez v5, :cond_5

    move v2, v3

    :cond_5
    invoke-static {p0, p1, v1, v2}, Lkotlin/collections/ArraysUtilJVM;->checkArgument(JLjava/lang/String;Z)V

    shl-int/lit8 p0, v0, 0x10

    add-int/2addr p0, v4

    return p0

    :cond_6
    return v2
.end method

.method public final readBytes(II[B)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v0, v1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return-void
.end method

.method public final readCharacterIfInList(Ljava/nio/charset/Charset;[C)C
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->peekCharacterAndSize(Ljava/nio/charset/Charset;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, p2, v3

    if-ne v4, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_1
    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    const v0, 0xffff

    and-int/2addr p1, v0

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return v1

    :cond_2
    return v0
.end method

.method public final readInt()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    return p0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8

    sget-object v0, Landroidx/media3/common/util/ParsableByteArray;->SUPPORTED_CHARSETS_FOR_READLINE:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Ljava/lang/String;Z)V

    .line 2
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    .line 4
    :cond_1
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v3

    :goto_2
    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_3
    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    add-int/lit8 v4, v0, -0x1

    sub-int v4, v2, v4

    const/16 v5, 0xd

    if-ge v1, v4, :cond_11

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/16 v6, 0xa

    if-nez v2, :cond_6

    sget-object v2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v2, v1

    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-eq v2, v6, :cond_8

    if-ne v2, v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    :goto_4
    move v2, v3

    :goto_5
    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v7, v2, v1

    if-nez v7, :cond_d

    add-int/lit8 v7, v1, 0x1

    aget-byte v2, v2, v7

    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-eq v2, v6, :cond_c

    if-ne v2, v5, :cond_b

    goto :goto_6

    :cond_b
    move v2, v4

    goto :goto_7

    :cond_c
    :goto_6
    move v2, v3

    :goto_7
    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v2, v7

    if-nez v7, :cond_10

    aget-byte v2, v2, v1

    sget v7, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-eq v2, v6, :cond_e

    if-ne v2, v5, :cond_f

    :cond_e
    move v4, v3

    :cond_f
    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    add-int/2addr v1, v0

    goto :goto_3

    :cond_11
    move v1, v2

    .line 5
    :goto_8
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ne v1, v2, :cond_12

    return-object v0

    .line 6
    :cond_12
    sget-object v1, Landroidx/media3/common/util/ParsableByteArray;->CR_AND_LF:[C

    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    move-result v1

    if-ne v1, v5, :cond_13

    sget-object v1, Landroidx/media3/common/util/ParsableByteArray;->LF:[C

    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->readCharacterIfInList(Ljava/nio/charset/Charset;[C)C

    :cond_13
    return-object v0
.end method

.method public final readLittleEndianInt()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v1

    return p0
.end method

.method public final readLittleEndianLong()J
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x20

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x30

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    int-to-long v3, p0

    and-long/2addr v3, v5

    const/16 p0, 0x38

    shl-long/2addr v3, p0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final readLittleEndianShort()S
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    int-to-short p0, p0

    return p0
.end method

.method public final readLittleEndianUnsignedInt()J
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    int-to-long v3, p0

    and-long/2addr v3, v5

    const/16 p0, 0x18

    shl-long/2addr v3, p0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final readLittleEndianUnsignedIntToInt()I
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Top bit not zero: "

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readLittleEndianUnsignedShort()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    return p0
.end method

.method public final readLong()J
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    int-to-long v3, p0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final readNullTerminatedString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, v1

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v3, v1, v2

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4
    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :cond_2
    move-object p0, v4

    :goto_1
    return-object p0
.end method

.method public final readNullTerminatedString(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 5
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 6
    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return-object v3
.end method

.method public final readShort()S
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    int-to-short p0, p0

    return p0
.end method

.method public final readString(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget p2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return-object v0
.end method

.method public final readSynchSafeInt()I
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public final readUnsignedByte()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final readUnsignedInt()J
    .locals 9

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v4

    int-to-long v3, p0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final readUnsignedInt24()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    return p0
.end method

.method public final readUnsignedIntToInt()I
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Top bit not zero: "

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readUnsignedLongToLong()J
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Top bit not zero: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readUnsignedShort()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    return p0
.end method

.method public final readUtf8EncodedLong()J
    .locals 11

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    if-ge v3, v4, :cond_0

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    if-ge v5, v2, :cond_4

    iget-object v3, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v6, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UTF-8 sequence continuation byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return-wide v0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UTF-8 sequence first byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readUtfCharsetFromBom()Ljava/nio/charset/Charset;
    .locals 7

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v4, v2, v1

    const/16 v5, -0x11

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v2, v4

    const/16 v5, -0x45

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v1, 0x2

    aget-byte v2, v2, v4

    const/16 v4, -0x41

    if-ne v2, v4, :cond_0

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sget-object p0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    :cond_0
    sub-int/2addr v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v3, v0, v1

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-ne v3, v5, :cond_1

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v4, :cond_1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sget-object p0, Lcom/google/common/base/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_1
    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v0, v0, v3

    if-ne v0, v5, :cond_2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sget-object p0, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final reset(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 2
    new-array v0, p1, [B

    :cond_0
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    return-void
.end method

.method public final reset([BI)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iput p2, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return-void
.end method

.method public final setLimit(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    return-void
.end method

.method public final setPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    return-void
.end method

.method public final skipBytes(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->position:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method
