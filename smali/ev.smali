.class final Lev;
.super Leu;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leu;-><init>()V

    return-void
.end method

.method private static a([BIJI)I
    .locals 2

    .line 3
    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    invoke-static {p0, p2, p3}, Lep;->a([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lep;->a([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Les;->a(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-static {p0, p2, p3}, Lep;->a([BJ)B

    move-result p0

    invoke-static {p1, p0}, Les;->a(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Les;->a(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I[BII)I
    .locals 8

    .line 1
    or-int p0, p3, p4

    array-length p1, p2

    sub-int/2addr p1, p4

    or-int/2addr p0, p1

    if-ltz p0, :cond_12

    int-to-long p0, p3

    int-to-long p3, p4

    sub-long/2addr p3, p0

    long-to-int p3, p3

    const/16 p4, 0x10

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    if-ge p3, p4, :cond_0

    move p4, v0

    goto :goto_1

    :cond_0
    move-wide v3, p0

    move p4, v0

    :goto_0
    if-ge p4, p3, :cond_2

    add-long v5, v3, v1

    invoke-static {p2, v3, v4}, Lep;->a([BJ)B

    move-result v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    move-wide v3, v5

    goto :goto_0

    :cond_2
    move p4, p3

    :goto_1
    sub-int/2addr p3, p4

    int-to-long v3, p4

    add-long/2addr p0, v3

    :cond_3
    :goto_2
    move p4, v0

    :goto_3
    if-lez p3, :cond_5

    add-long v3, p0, v1

    invoke-static {p2, p0, p1}, Lep;->a([BJ)B

    move-result p4

    if-ltz p4, :cond_4

    add-int/lit8 p3, p3, -0x1

    move-wide p0, v3

    goto :goto_3

    :cond_4
    move-wide p0, v3

    :cond_5
    if-nez p3, :cond_6

    return v0

    :cond_6
    add-int/lit8 p3, p3, -0x1

    const/16 v3, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge p4, v3, :cond_a

    if-nez p3, :cond_7

    return p4

    :cond_7
    add-int/lit8 p3, p3, -0x1

    const/16 v3, -0x3e

    if-lt p4, v3, :cond_9

    add-long v6, p0, v1

    invoke-static {p2, p0, p1}, Lep;->a([BJ)B

    move-result p0

    if-le p0, v4, :cond_8

    goto :goto_4

    :cond_8
    move-wide p0, v6

    goto :goto_2

    :cond_9
    :goto_4
    return v5

    :cond_a
    const/16 v6, -0x10

    if-ge p4, v6, :cond_f

    const/4 v6, 0x2

    if-ge p3, v6, :cond_b

    invoke-static {p2, p4, p0, p1, p3}, Lev;->a([BIJI)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 p3, p3, -0x2

    add-long v6, p0, v1

    invoke-static {p2, p0, p1}, Lep;->a([BJ)B

    move-result p0

    if-gt p0, v4, :cond_e

    const/16 p1, -0x60

    if-ne p4, v3, :cond_c

    if-lt p0, p1, :cond_e

    :cond_c
    const/16 v3, -0x13

    if-ne p4, v3, :cond_d

    if-ge p0, p1, :cond_e

    :cond_d
    add-long p0, v6, v1

    invoke-static {p2, v6, v7}, Lep;->a([BJ)B

    move-result p4

    if-le p4, v4, :cond_3

    :cond_e
    return v5

    :cond_f
    const/4 v3, 0x3

    if-ge p3, v3, :cond_10

    invoke-static {p2, p4, p0, p1, p3}, Lev;->a([BIJI)I

    move-result p0

    return p0

    :cond_10
    add-int/lit8 p3, p3, -0x3

    add-long v6, p0, v1

    invoke-static {p2, p0, p1}, Lep;->a([BJ)B

    move-result p0

    if-gt p0, v4, :cond_11

    shl-int/lit8 p1, p4, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1e

    if-nez p0, :cond_11

    add-long p0, v6, v1

    invoke-static {p2, v6, v7}, Lep;->a([BJ)B

    move-result p4

    if-gt p4, v4, :cond_11

    add-long v6, p0, v1

    invoke-static {p2, p0, p1}, Lep;->a([BJ)B

    move-result p0

    if-le p0, v4, :cond_8

    :cond_11
    return v5

    :cond_12
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Ljava/lang/CharSequence;[BII)I
    .locals 20

    .line 2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lep;->a([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-ne v2, v8, :cond_1

    long-to-int v0, v4

    return v0

    :cond_1
    :goto_1
    if-ge v2, v8, :cond_b

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2

    cmp-long v14, v4, v6

    if-gez v14, :cond_2

    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lep;->a([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    move v11, v3

    goto/16 :goto_2

    :cond_2
    const/16 v14, 0x800

    if-ge v13, v14, :cond_3

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_3

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lep;->a([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lep;->a([BJB)V

    move-wide/from16 v18, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v18

    goto/16 :goto_2

    :cond_3
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_4

    if-ge v3, v13, :cond_5

    :cond_4
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v15, v4, v15

    if-gtz v15, :cond_5

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v1, v4, v5, v3}, Lep;->a([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v14, v15, v5}, Lep;->a([BJB)V

    const-wide/16 v14, 0x1

    add-long v16, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    invoke-static {v1, v3, v4, v5}, Lep;->a([BJB)V

    move-wide/from16 v12, v16

    const-wide/16 v4, 0x1

    const/16 v11, 0x80

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v11, v4, v11

    if-gtz v11, :cond_8

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_7

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    invoke-static {v1, v4, v5, v15}, Lep;->a([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    invoke-static {v1, v13, v14, v12}, Lep;->a([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lep;->a([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    invoke-static {v1, v14, v15, v2}, Lep;->a([BJB)V

    move v2, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v11

    move-wide/from16 v18, v4

    move-wide v4, v12

    move-wide/from16 v11, v18

    goto/16 :goto_1

    :cond_6
    move v2, v3

    :cond_7
    new-instance v0, Lew;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lew;-><init>(II)V

    throw v0

    :cond_8
    if-gt v14, v13, :cond_a

    if-gt v13, v3, :cond_a

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_9

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Lew;

    invoke-direct {v0, v2, v8}, Lew;-><init>(II)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    long-to-int v0, v4

    return v0

    :cond_c
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a([BII)Ljava/lang/String;
    .locals 9

    .line 4
    or-int p0, p2, p3

    array-length v0, p1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    or-int/2addr p0, v0

    if-ltz p0, :cond_9

    add-int p0, p2, p3

    new-array p3, p3, [C

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    if-ge p2, p0, :cond_0

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lep;->a([BJ)B

    move-result v1

    invoke-static {v1}, Lbe;->f(B)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, p3, v0}, Lbe;->b(B[CI)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_1
    if-ge p2, p0, :cond_8

    add-int/lit8 v0, p2, 0x1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lep;->a([BJ)B

    move-result p2

    invoke-static {p2}, Lbe;->f(B)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v5, 0x1

    invoke-static {p2, p3, v5}, Lbe;->b(B[CI)V

    :goto_2
    if-ge v0, p0, :cond_1

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lep;->a([BJ)B

    move-result p2

    invoke-static {p2}, Lbe;->f(B)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-static {p2, p3, v1}, Lbe;->b(B[CI)V

    move v1, v2

    goto :goto_2

    :cond_1
    move p2, v0

    move v5, v1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lbe;->g(B)Z

    move-result v1

    if-eqz v1, :cond_4

    if-ge v0, p0, :cond_3

    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lep;->a([BJ)B

    move-result v0

    add-int/lit8 v2, v5, 0x1

    invoke-static {p2, v0, p3, v5}, Lbe;->b(BB[CI)V

    move p2, v1

    move v5, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcm;->f()Lcm;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p2}, Lbe;->h(B)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, p0, -0x1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lep;->a([BJ)B

    move-result v0

    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lep;->a([BJ)B

    move-result v1

    add-int/lit8 v3, v5, 0x1

    invoke-static {p2, v0, v1, p3, v5}, Lbe;->b(BBB[CI)V

    move p2, v2

    move v5, v3

    goto :goto_1

    :cond_5
    invoke-static {}, Lcm;->f()Lcm;

    move-result-object p0

    throw p0

    :cond_6
    add-int/lit8 v1, p0, -0x2

    if-ge v0, v1, :cond_7

    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lep;->a([BJ)B

    move-result v2

    add-int/lit8 v0, v1, 0x1

    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lep;->a([BJ)B

    move-result v3

    add-int/lit8 v7, v0, 0x1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lep;->a([BJ)B

    move-result v4

    add-int/lit8 v8, v5, 0x1

    move v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lbe;->b(BBBB[CI)V

    add-int/lit8 v8, v8, 0x1

    move p2, v7

    move v5, v8

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcm;->f()Lcm;

    move-result-object p0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p3, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
