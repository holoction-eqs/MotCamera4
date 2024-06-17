.class public abstract Lkotlin/random/AbstractPlatformRandom;
.super Lkotlin/random/Random;
.source "SourceFile"


# virtual methods
.method public abstract getImpl()Ljava/util/Random;
.end method

.method public final nextInt()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method
