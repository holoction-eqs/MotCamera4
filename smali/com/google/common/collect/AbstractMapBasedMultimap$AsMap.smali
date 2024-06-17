.class public Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public transient entrySet:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

.field public final transient submap:Ljava/util/Map;

.field public final synthetic this$0:Lcom/google/common/collect/AbstractListMultimap;

.field public transient values:Lcom/google/common/collect/Maps$Values;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    iget-object v1, v0, Lcom/google/common/collect/AbstractListMultimap;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractListMultimap;->clear()V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->remove()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet$com$google$common$collect$Maps$ViewCachingAbstractMap()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final entrySet$com$google$common$collect$Maps$ViewCachingAbstractMap()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->entrySet:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    :goto_1
    move-object v1, v2

    :goto_2
    return-object v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    if-nez v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v1, v0, Lcom/google/common/collect/AbstractListMultimap;->map:Ljava/util/Map;

    instance-of v2, v1, Ljava/util/NavigableMap;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$NavigableKeySet;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/NavigableMap;)V

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/util/SortedMap;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/Map;)V

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    :cond_2
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;->factory:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values$com$google$common$collect$Maps$ViewCachingAbstractMap()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final values$com$google$common$collect$Maps$ViewCachingAbstractMap()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values:Lcom/google/common/collect/Maps$Values;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values:Lcom/google/common/collect/Maps$Values;

    :cond_0
    return-object v0
.end method

.method public final wrapEntry(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableEntry;
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    instance-of v1, p1, Ljava/util/RandomAccess;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    :goto_0
    new-instance p0, Lcom/google/common/collect/ImmutableEntry;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
