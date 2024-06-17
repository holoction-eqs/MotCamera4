.class public Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic $r8$classId:I

.field public entry:Ljava/lang/Object;

.field public final synthetic this$1:Ljava/lang/Object;

.field public final val$entryIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/ListIterator;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    .line 6
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->validateIterator()V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableEntry;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->validateIterator()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 7

    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, "no calls to next() since the last call to remove()"

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Lkotlin/collections/ArraysUtilJVM;->checkState(Ljava/lang/String;Z)V

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    check-cast v5, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v5, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, v0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-static {v2, v3}, Lkotlin/collections/ArraysUtilJVM;->checkState(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    check-cast v5, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v2, v5, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    iget v4, v2, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    sub-int/2addr v4, v3

    iput v4, v2, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iput-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    return-void

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    check-cast v5, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object p0, v5, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lcom/google/common/collect/AbstractListMultimap;

    iget v0, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    invoke-virtual {v5}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final validateIterator()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    check-cast v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
