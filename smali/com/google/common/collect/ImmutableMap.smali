.class public abstract Lcom/google/common/collect/ImmutableMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field public transient entrySet:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

.field public transient keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

.field public transient values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;


# direct methods
.method public static builder()Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    .locals 4

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMap;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_0

    check-cast p0, Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    new-instance v2, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    if-eqz v0, :cond_2

    iget v0, v2, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget-object v0, v2, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    array-length v3, v0

    if-le v1, v3, :cond_2

    array-length v3, v0

    invoke-static {v3, v1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/google/common/collect/ImmutableMap$Builder;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final entrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap;->entrySet:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 1
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget v2, v0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    iget-object v3, v0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-direct {v1, v0, v3, v2}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;I)V

    .line 2
    iput-object v1, p0, Lcom/google/common/collect/ImmutableMap;->entrySet:Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    check-cast p0, Lcom/google/common/collect/RegularImmutableMap;

    iget p0, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    const/4 v2, 0x0

    iget v3, v0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    iget-object v4, v0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>(II[Ljava/lang/Object;)V

    new-instance v2, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;)V

    iput-object v2, p0, Lcom/google/common/collect/ImmutableMap;->keySet:Lcom/google/common/collect/RegularImmutableMap$KeySet;

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    const-string v1, "size"

    iget v0, v0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Lcom/google/common/collect/ImmutableCollection;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap;->values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 1
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v2, v0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v3, 0x1

    iget v0, v0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v1, v3, v0, v2}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>(II[Ljava/lang/Object;)V

    .line 2
    iput-object v1, p0, Lcom/google/common/collect/ImmutableMap;->values:Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p0

    return-object p0
.end method
