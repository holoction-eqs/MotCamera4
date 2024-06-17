.class public abstract Lcom/google/common/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static expandedCapacity(II)I
    .locals 1

    if-ltz p1, :cond_2

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    :cond_0
    if-gez p0, :cond_1

    const p0, 0x7fffffff

    :cond_1
    return p0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "cannot store more than MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
.end method

.method public abstract onCollisionCheck(Lcom/google/common/base/Splitter$1;)Z
.end method

.method public setOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public abstract setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
.end method
