.class public Lcom/google/common/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/AbstractMultimap;I)V
    .locals 1

    iput p2, p0, Lcom/google/common/collect/AbstractMultimap$Values;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    check-cast p0, Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractListMultimap;->clear()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$Values;->clear$com$google$common$collect$Multimaps$Entries()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clear$com$google$common$collect$Multimaps$Entries()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    check-cast p0, Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractListMultimap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->values$com$google$common$collect$Maps$ViewCachingAbstractMap()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Maps$Values;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$Values;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$Values;->contains$com$google$common$collect$Multimaps$Entries(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains$com$google$common$collect$Multimaps$Entries(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->$r8$classId:I

    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$1;-><init>(Lcom/google/common/collect/AbstractListMultimap;I)V

    return-object v0

    :goto_0
    check-cast p0, Lcom/google/common/collect/AbstractListMultimap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$1;-><init>(Lcom/google/common/collect/AbstractListMultimap;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$Values;->remove$com$google$common$collect$Multimaps$Entries(Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove$com$google$common$collect$Multimaps$Entries(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->asMap()Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    check-cast p0, Lcom/google/common/collect/AbstractListMultimap;

    iget p0, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    return p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$Values;->size$com$google$common$collect$Multimaps$Entries()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size$com$google$common$collect$Multimaps$Entries()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/AbstractMultimap$Values;->this$0:Lcom/google/common/collect/AbstractMultimap;

    check-cast p0, Lcom/google/common/collect/AbstractListMultimap;

    iget p0, p0, Lcom/google/common/collect/AbstractListMultimap;->totalSize:I

    return p0
.end method
