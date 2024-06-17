.class public abstract Lkotlin/collections/CollectionsKt__ReversedViewsKt;
.super Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;
.source "SourceFile"


# direct methods
.method public static final access$reverseElementIndex(ILjava/util/List;)I
    .locals 4

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v0, p0}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    sub-int/2addr p1, p0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Element index "

    const-string v3, " must be in range ["

    invoke-static {v1, p0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
