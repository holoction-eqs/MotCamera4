.class public final Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;
.super Lcom/google/common/collect/Sets$SetView;
.source "SourceFile"


# instance fields
.field public final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$SetView;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->clear$com$google$common$collect$Maps$EntrySet()V

    return-void
.end method

.method public final clear$com$google$common$collect$Maps$EntrySet()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

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

.method public final bridge synthetic isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->isEmpty$com$google$common$collect$Maps$EntrySet()Z

    move-result p0

    return p0
.end method

.method public final isEmpty$com$google$common$collect$Maps$EntrySet()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/AbstractListMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget p1, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->removeAll$com$google$common$collect$Maps$EntrySet(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final removeAll$com$google$common$collect$Maps$EntrySet(Ljava/util/Collection;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/google/common/collect/Sets$SetView;->removeAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->retainAll$com$google$common$collect$Maps$EntrySet(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll$com$google$common$collect$Maps$EntrySet(Ljava/util/Collection;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/google/common/collect/Sets$SetView;->retainAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const-string v2, "expectedSize"

    invoke-static {v0, v2}, Lkotlin/LazyKt__LazyKt;->checkNonnegative(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v2, :cond_1

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    :goto_0
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v0, Ljava/util/Map$Entry;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic size()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->size$com$google$common$collect$Maps$EntrySet()I

    move-result p0

    return p0
.end method

.method public final size$com$google$common$collect$Maps$EntrySet()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->size()I

    move-result p0

    return p0
.end method
