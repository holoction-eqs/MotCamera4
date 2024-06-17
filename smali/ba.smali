.class public abstract Lba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field public static final a:Lba;

.field private static final c:Lbg;


# instance fields
.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh;

    sget-object v1, Lcc;->b:[B

    invoke-direct {v0, v1}, Lbh;-><init>([B)V

    sput-object v0, Lba;->a:Lba;

    invoke-static {}, Lau;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbk;

    invoke-direct {v0}, Lbk;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lbe;

    invoke-direct {v0}, Lbe;-><init>()V

    :goto_0
    sput-object v0, Lba;->c:Lbg;

    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lba;->b:I

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method

.method public static a(B)I
    .locals 0

    .line 1
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static a(Ljava/lang/String;)Lba;
    .locals 2

    .line 2
    new-instance v0, Lbh;

    sget-object v1, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lbh;-><init>([B)V

    return-object v0
.end method

.method public static a([B)Lba;
    .locals 1

    .line 3
    new-instance v0, Lbh;

    invoke-direct {v0, p0}, Lbh;-><init>([B)V

    return-object v0
.end method

.method public static a([BII)Lba;
    .locals 2

    .line 4
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lba;->b(III)I

    new-instance v0, Lbh;

    sget-object v1, Lba;->c:Lbg;

    invoke-interface {v1, p0, p1, p2}, Lbg;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lbh;-><init>([B)V

    return-object v0
.end method

.method public static b(III)I
    .locals 3

    .line 1
    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static c(I)Lbi;
    .locals 1

    .line 1
    new-instance v0, Lbi;

    invoke-direct {v0, p0}, Lbi;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract a()I
.end method

.method public abstract a(III)I
.end method

.method public abstract a(II)Lba;
.end method

.method public abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract a(Lax;)V
.end method

.method public abstract a([BIII)V
.end method

.method public abstract a(Lba;II)Z
.end method

.method public abstract b(I)B
.end method

.method public final b()[B
    .locals 3

    .line 2
    invoke-virtual {p0}, Lba;->a()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcc;->b:[B

    return-object p0

    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lba;->a([BIII)V

    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcc;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lba;->a()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lba;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract d()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lba;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lba;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lba;->a(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lba;->b:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Laz;

    invoke-direct {v0, p0}, Laz;-><init>(Lba;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lba;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<ByteString@%s size=%d>"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
