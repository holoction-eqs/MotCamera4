.class public Lcom/google/common/collect/Sets$FilteredSet;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final predicate:Lcom/google/common/base/Predicate;

.field public final unfiltered:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->add$com$google$common$collect$Collections2$FilteredCollection(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final add$com$google$common$collect$Collections2$FilteredCollection(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->addAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final addAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->clear$com$google$common$collect$Collections2$FilteredCollection()V

    return-void
.end method

.method public final clear$com$google$common$collect$Collections2$FilteredCollection()V
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    instance-of v1, v0, Ljava/util/RandomAccess;

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    if-eqz v1, :cond_5

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-le v1, v2, :cond_2

    :try_start_0
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-le v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v0, v2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->contains$com$google$common$collect$Collections2$FilteredCollection(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final contains$com$google$common$collect$Collections2$FilteredCollection(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {p0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public final bridge synthetic containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->containsAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final containsAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Sets$FilteredSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/JvmClassMappingKt;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->hashCodeImpl(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->isEmpty$com$google$common$collect$Collections2$FilteredCollection()Z

    move-result p0

    return p0
.end method

.method public final isEmpty$com$google$common$collect$Collections2$FilteredCollection()Z
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    const/4 p0, 0x1

    if-eq v2, v4, :cond_2

    move v1, p0

    :cond_2
    xor-int/2addr p0, v1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "predicate"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->iterator$com$google$common$collect$Collections2$FilteredCollection()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final iterator$com$google$common$collect$Collections2$FilteredCollection()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/common/collect/Sets$2$1;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/Sets$2$1;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->remove$com$google$common$collect$Collections2$FilteredCollection(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final remove$com$google$common$collect$Collections2$FilteredCollection(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->contains$com$google$common$collect$Collections2$FilteredCollection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->removeAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final removeAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->retainAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll$com$google$common$collect$Collections2$FilteredCollection(Ljava/util/Collection;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final bridge synthetic size()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->size$com$google$common$collect$Collections2$FilteredCollection()I

    move-result p0

    return p0
.end method

.method public final size$com$google$common$collect$Collections2$FilteredCollection()I
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final bridge synthetic toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->toArray$com$google$common$collect$Collections2$FilteredCollection()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;->toArray$com$google$common$collect$Collections2$FilteredCollection([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray$com$google$common$collect$Collections2$FilteredCollection()[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->iterator$com$google$common$collect$Collections2$FilteredCollection()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/google/common/collect/Sets$2$1;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray$com$google$common$collect$Collections2$FilteredCollection([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$FilteredSet;->iterator$com$google$common$collect$Collections2$FilteredCollection()Ljava/util/Iterator;

    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/collect/Sets$2$1;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
