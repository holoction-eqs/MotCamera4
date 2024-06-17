.class public final Lkotlin/UByte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final data:B


# direct methods
.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lkotlin/UByte;->data:B

    return-void
.end method

.method public static toString-impl(B)Ljava/lang/String;
    .locals 0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/UByte;

    iget-byte p1, p1, Lkotlin/UByte;->data:B

    iget-byte p0, p0, Lkotlin/UByte;->data:B

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->compare(II)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/UByte;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/UByte;

    iget-byte p1, p1, Lkotlin/UByte;->data:B

    iget-byte p0, p0, Lkotlin/UByte;->data:B

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-byte p0, p0, Lkotlin/UByte;->data:B

    invoke-static {p0}, Ljava/lang/Byte;->hashCode(B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-byte p0, p0, Lkotlin/UByte;->data:B

    invoke-static {p0}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
