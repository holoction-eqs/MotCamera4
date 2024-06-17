.class public Lat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;


# instance fields
.field public final a:Ldb;

.field public final b:Lac;


# direct methods
.method public constructor <init>(Ldb;Lac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lat;->a:Ldb;

    iput-object p2, p0, Lat;->b:Lac;

    return-void
.end method

.method public static a(I[BIILaw;)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_7

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Lcm;->c()Lcm;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-static {p1, p2, p4}, Lat;->a([BILaw;)I

    move-result p2

    iget v0, p4, Law;->a:I

    if-eq v0, p0, :cond_2

    invoke-static {v0, p1, p2, p3, p4}, Lat;->a(I[BIILaw;)I

    move-result p2

    goto :goto_0

    :cond_2
    if-gt p2, p3, :cond_3

    if-ne v0, p0, :cond_3

    return p2

    :cond_3
    invoke-static {}, Lcm;->e()Lcm;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p1, p2, p4}, Lat;->a([BILaw;)I

    move-result p0

    iget p1, p4, Law;->a:I

    add-int/2addr p0, p1

    return p0

    :cond_5
    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_6
    invoke-static {p1, p2, p4}, Lat;->b([BILaw;)I

    move-result p0

    return p0

    :cond_7
    invoke-static {}, Lcm;->c()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static a(I[BIILcj;Law;)I
    .locals 2

    .line 2
    check-cast p4, Lca;

    invoke-static {p1, p2, p5}, Lat;->a([BILaw;)I

    move-result p2

    :goto_0
    iget v0, p5, Law;->a:I

    invoke-virtual {p4, v0}, Lca;->c(I)V

    if-ge p2, p3, :cond_0

    invoke-static {p1, p2, p5}, Lat;->a([BILaw;)I

    move-result v0

    iget v1, p5, Law;->a:I

    if-ne p0, v1, :cond_0

    invoke-static {p1, v0, p5}, Lat;->a([BILaw;)I

    move-result p2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static a(I[BIILel;Law;)I
    .locals 9

    .line 3
    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    invoke-static {p1, p2}, Lat;->a([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lel;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    invoke-static {}, Lcm;->c()Lcm;

    move-result-object p0

    throw p0

    :cond_1
    new-instance v6, Lel;

    invoke-direct {v6}, Lel;-><init>()V

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    invoke-static {p1, p2, p5}, Lat;->a([BILaw;)I

    move-result v2

    iget p2, p5, Law;->a:I

    move v0, p2

    if-eq p2, v7, :cond_2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lat;->a(I[BIILel;Law;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    :cond_2
    move p2, v2

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v0, v7, :cond_4

    invoke-virtual {p4, p0, v6}, Lel;->a(ILjava/lang/Object;)V

    return p2

    :cond_4
    invoke-static {}, Lcm;->e()Lcm;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {p1, p2, p5}, Lat;->a([BILaw;)I

    move-result p2

    iget p3, p5, Law;->a:I

    if-ltz p3, :cond_8

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    sget-object p1, Lba;->a:Lba;

    goto :goto_1

    :cond_6
    invoke-static {p1, p2, p3}, Lba;->a([BII)Lba;

    move-result-object p1

    :goto_1
    invoke-virtual {p4, p0, p1}, Lel;->a(ILjava/lang/Object;)V

    add-int/2addr p2, p3

    return p2

    :cond_7
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0

    :cond_8
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {p1, p2}, Lat;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lel;->a(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_a
    invoke-static {p1, p2, p5}, Lat;->b([BILaw;)I

    move-result p1

    iget-wide p2, p5, Law;->b:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lel;->a(ILjava/lang/Object;)V

    return p1

    :cond_b
    invoke-static {}, Lcm;->c()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static a(I[BILaw;)I
    .locals 1

    .line 4
    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    :goto_0
    or-int/2addr p0, p1

    iput p0, p3, Law;->a:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    :goto_1
    or-int/2addr p0, p1

    iput p0, p3, Law;->a:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    goto :goto_0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_2
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    iput p0, p3, Law;->a:I

    return v0

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public static a(Ldw;I[BIILcj;Law;)I
    .locals 2

    .line 5
    invoke-static {p0, p2, p3, p4, p6}, Lat;->a(Ldw;[BIILaw;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Law;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lat;->a([BILaw;)I

    move-result v0

    iget v1, p6, Law;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lat;->a(Ldw;[BIILaw;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static a(Ldw;[BIIILaw;)I
    .locals 8

    .line 6
    check-cast p0, Ldm;

    invoke-virtual {p0}, Ldm;->a()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Ldm;->a(Ljava/lang/Object;[BIIILaw;)I

    move-result p1

    invoke-virtual {p0, v7}, Ldm;->b(Ljava/lang/Object;)V

    iput-object v7, p5, Law;->c:Ljava/lang/Object;

    return p1
.end method

.method public static a(Ldw;[BIILaw;)I
    .locals 6

    .line 7
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lat;->a(I[BILaw;)I

    move-result v0

    iget p2, p4, Law;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Ldw;->a()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ldw;->a(Ljava/lang/Object;[BIILaw;)V

    invoke-interface {p0, p3}, Ldw;->b(Ljava/lang/Object;)V

    iput-object p3, p4, Law;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static a([BI)I
    .locals 2

    .line 8
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static a([BILaw;)I
    .locals 1

    .line 9
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    iput p1, p2, Law;->a:I

    return v0

    :cond_0
    invoke-static {p1, p0, v0, p2}, Lat;->a(I[BILaw;)I

    move-result p0

    return p0
.end method

.method public static a([BILcj;Law;)I
    .locals 2

    .line 10
    check-cast p2, Lca;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p3, Law;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget v1, p3, Law;->a:I

    invoke-virtual {p2, v1}, Lca;->c(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0}, Lat;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This should be running on the main thread."

    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/RuntimeException;)V
    .locals 2

    .line 14
    const-string v0, "Preconditions"

    const-string v1, "Precondition broken. Build is not strict; continuing..."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 0

    .line 15
    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lat;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method

.method public static b([BILaw;)I
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    iput-wide v1, p2, Law;->b:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    :cond_1
    iput-wide v1, p2, Law;->b:J

    return p1
.end method

.method public static b([BILcj;Law;)I
    .locals 3

    .line 2
    check-cast p2, Lcy;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p3, Law;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lat;->b([BILaw;)I

    move-result p1

    iget-wide v1, p3, Law;->b:J

    invoke-virtual {p2, v1, v2}, Lcy;->a(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static b([BI)J
    .locals 7

    .line 3
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static c([BI)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lat;->b([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static c([BILaw;)I
    .locals 3

    .line 2
    invoke-static {p0, p1, p2}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p2, Law;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Law;->c:Ljava/lang/Object;

    return p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Law;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static c([BILcj;Law;)I
    .locals 1

    .line 3
    check-cast p2, Lca;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget p3, p3, Law;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lat;->a([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lca;->c(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static d([BI)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lat;->a([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static d([BILaw;)I
    .locals 1

    .line 2
    invoke-static {p0, p1, p2}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p2, Law;->a:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    iput-object p0, p2, Law;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Les;->c([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Law;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static d([BILcj;Law;)I
    .locals 2

    .line 3
    check-cast p2, Lcy;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget p3, p3, Law;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lat;->b([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcy;->a(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static e([BILaw;)I
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p2, Law;->a:I

    if-ltz v0, :cond_2

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lba;->a:Lba;

    iput-object p0, p2, Law;->c:Ljava/lang/Object;

    return p1

    :cond_0
    invoke-static {p0, p1, v0}, Lba;->a([BII)Lba;

    move-result-object p0

    iput-object p0, p2, Law;->c:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lcm;->b()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static e([BILcj;Law;)I
    .locals 1

    .line 2
    check-cast p2, Lbx;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget p3, p3, Law;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lat;->d([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lbx;->a(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static f([BILcj;Law;)I
    .locals 2

    check-cast p2, Lbm;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget p3, p3, Law;->a:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-static {p0, p1}, Lat;->c([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lbm;->a(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static g([BILcj;Law;)I
    .locals 5

    check-cast p2, Lay;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p3, Law;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {p0, p1, p3}, Lat;->b([BILaw;)I

    move-result p1

    iget-wide v1, p3, Law;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lay;->a(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    :cond_2
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static h([BILcj;Law;)I
    .locals 2

    check-cast p2, Lca;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p3, Law;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget v1, p3, Law;->a:I

    invoke-static {v1}, Lbj;->b(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lca;->c(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method

.method public static i([BILcj;Law;)I
    .locals 3

    check-cast p2, Lcy;

    invoke-static {p0, p1, p3}, Lat;->a([BILaw;)I

    move-result p1

    iget v0, p3, Law;->a:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p0, p1, p3}, Lat;->b([BILaw;)I

    move-result p1

    iget-wide v1, p3, Law;->b:J

    invoke-static {v1, v2}, Lbj;->a(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcy;->a(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {}, Lcm;->a()Lcm;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Laf$a;)V
    .locals 0

    .line 13
    iget-object p1, p0, Lat;->a:Ldb;

    iget-object p0, p0, Lat;->b:Lac;

    invoke-virtual {p1, p0}, Ldb;->c(Lac;)V

    return-void
.end method
