.class public Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;
.super Lcom/google/common/collect/Sets$SetView;
.source "SourceFile"


# instance fields
.field public final map:Ljava/util/Map;

.field public final synthetic this$0:Lcom/google/common/collect/AbstractListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractListMultimap;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/common/collect/Sets$SetView;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->next()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->contains$com$google$common$collect$Maps$KeySet(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final contains$com$google$common$collect$Maps$KeySet(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->isEmpty$com$google$common$collect$Maps$KeySet()Z

    move-result p0

    return p0
.end method

.method public final isEmpty$com$google$common$collect$Maps$KeySet()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    iget p1, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final bridge synthetic size()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->size$com$google$common$collect$Maps$KeySet()I

    move-result p0

    return p0
.end method

.method public final size$com$google$common$collect$Maps$KeySet()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
