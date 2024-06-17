.class public final Landroidx/work/ListenableWorker$Result$Retry;
.super Landroidx/work/ListenableWorker$Result;
.source "SourceFile"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-class p0, Landroidx/work/ListenableWorker$Result$Retry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getOutputData()Landroidx/work/Data;
    .locals 0

    sget-object p0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x18be74e

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Retry"

    return-object p0
.end method
