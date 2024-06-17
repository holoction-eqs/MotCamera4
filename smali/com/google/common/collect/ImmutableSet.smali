.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public transient asList:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public static chooseTableSize(I)I
    .locals 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    const/4 v1, 0x1

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "collection too large"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 13

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_8

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v2

    new-array v8, v2, [Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    move v3, v0

    move v4, v3

    move v6, v4

    :goto_0
    if-ge v3, p0, :cond_3

    aget-object v7, p1, v3

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lkotlin/UnsignedKt;->smear(I)I

    move-result v10

    :goto_1
    and-int v11, v10, v5

    aget-object v12, v8, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v6, 0x1

    aput-object v7, p1, v6

    aput-object v7, v8, v11

    add-int/2addr v4, v9

    move v6, v10

    goto :goto_2

    :cond_0
    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v3, 0x0

    invoke-static {p1, v6, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v6, v1, :cond_4

    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {p1, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    invoke-static {v6}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_5

    invoke-static {v6, p1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_5
    array-length p0, p1

    shr-int/lit8 v2, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    if-ge v6, v2, :cond_6

    move v0, v1

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_7
    move-object v7, p1

    new-instance p0, Lcom/google/common/collect/RegularImmutableSet;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/RegularImmutableSet;-><init>(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p0

    :cond_8
    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {p1, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_9
    sget-object p0, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    return-object p0
.end method

.method public static copyOf(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSet;
    .locals 2

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet;->asList:Lcom/google/common/collect/ImmutableList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->createAsList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet;->asList:Lcom/google/common/collect/ImmutableList;

    :cond_0
    return-object v0
.end method

.method public createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    array-length v0, p0

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/RegularImmutableSet;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/google/common/collect/RegularImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0, p1}, Lkotlin/jvm/JvmClassMappingKt;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method
