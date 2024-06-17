.class public final Lcom/google/common/collect/CompactHashMap$KeySetView;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/CompactHashMap;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->$r8$classId:I

    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->$r8$classId:I

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->$r8$classId:I

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->value(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/io/ExceptionsKt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->$r8$classId:I

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    move-object p0, v0

    :goto_0
    return-object p0

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;I)V

    move-object p0, v0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 10

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_2
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireEntries()[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireKeys()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->requireValues()[Ljava/lang/Object;

    move-result-object v9

    move v5, v0

    invoke-static/range {v3 .. v9}, Lkotlin/TuplesKt;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->$r8$classId:I

    iget-object p0, p0, Lcom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lcom/google/common/collect/CompactHashMap;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
