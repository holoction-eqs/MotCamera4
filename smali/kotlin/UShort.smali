.class public final Lkotlin/UShort;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final data:S


# direct methods
.method public synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lkotlin/UShort;->data:S

    return-void
.end method

.method public static toString-impl(S)Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lkotlin/UShort;

    iget-short p1, p1, Lkotlin/UShort;->data:S

    iget-short p0, p0, Lkotlin/UShort;->data:S

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->compare(II)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/UShort;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/UShort;

    iget-short p1, p1, Lkotlin/UShort;->data:S

    iget-short p0, p0, Lkotlin/UShort;->data:S

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-short p0, p0, Lkotlin/UShort;->data:S

    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-short p0, p0, Lkotlin/UShort;->data:S

    invoke-static {p0}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
