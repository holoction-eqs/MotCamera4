.class public abstract Lcom/google/common/collect/AbstractListMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient map:Ljava/util/Map;

.field public transient totalSize:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/common/collect/AbstractListMultimap;->map:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v1, v0, Lcom/google/common/collect/AbstractListMultimap;->map:Ljava/util/Map;

    instance-of v2, v1, Ljava/util/NavigableMap;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableAsMap;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/NavigableMap;)V

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/util/SortedMap;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/Map;)V

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    :cond_2
    return-object v0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractListMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final put(Ljava/lang/Double;Ljava/lang/Integer;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractListMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "New Collection violated the Collection spec"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
