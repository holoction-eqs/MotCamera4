.class public final Landroidx/collection/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/collection/MapCollections;


# direct methods
.method public synthetic constructor <init>(Landroidx/collection/MapCollections;I)V
    .locals 0

    iput p2, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    iput-object p1, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    check-cast p1, Ljava/util/Map$Entry;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :goto_0
    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroidx/collection/MapCollections;->colPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result p0

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colClear()V

    return-void

    :goto_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colClear()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    move v2, v1

    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetMap()Landroidx/collection/ArrayMap;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/collection/MapCollections$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Landroidx/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_0
    invoke-static {p0, p1}, Landroidx/collection/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0, v1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2

    :goto_2
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_3
    if-ltz v0, :cond_4

    invoke-virtual {p0, v0, v1}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v0, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_4

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_4
    if-nez v5, :cond_3

    move v5, v1

    goto :goto_5

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_5
    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 3

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :goto_1
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroidx/collection/MapCollections$ArrayIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/collection/MapCollections$ArrayIterator;-><init>(Landroidx/collection/MapCollections;I)V

    return-object v0

    :goto_0
    new-instance v0, Landroidx/collection/MapCollections$MapIterator;

    invoke-direct {v0, p0}, Landroidx/collection/MapCollections$MapIterator;-><init>(Landroidx/collection/MapCollections;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/MapCollections;->colRemoveAt(I)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetMap()Landroidx/collection/ArrayMap;

    move-result-object p0

    iget v0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/collection/SimpleArrayMap;->mSize:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetMap()Landroidx/collection/ArrayMap;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/collection/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p0

    return p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result p0

    return p0

    :goto_0
    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    invoke-virtual {p0}, Landroidx/collection/MapCollections;->colGetSize()I

    move-result v0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3, v2}, Landroidx/collection/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 3
    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/collection/MapCollections$KeySet;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p0, p0, Landroidx/collection/MapCollections$KeySet;->this$0:Landroidx/collection/MapCollections;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MapCollections;->toArrayHelper(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
