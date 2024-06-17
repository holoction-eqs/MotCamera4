.class public abstract Lkotlin/reflect/jvm/internal/impl/utils/DFS;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v2, "nodes"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_1
    const-string v2, "current"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_2
    const-string v2, "node"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_3
    const-string v2, "predicate"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_4
    const-string v2, "handler"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_5
    const-string v2, "visited"

    aput-object v2, v0, v1

    goto :goto_0

    :pswitch_6
    const-string v2, "neighbors"

    aput-object v2, v0, v1

    :goto_0
    const/4 v1, 0x1

    const-string v2, "kotlin/reflect/jvm/internal/impl/utils/DFS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const-string p0, "dfs"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_7
    const-string p0, "doDfs"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_8
    const-string p0, "topologicalOrder"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_9
    const-string p0, "dfsFromNode"

    aput-object p0, v0, v1

    goto :goto_1

    :pswitch_a
    const-string p0, "ifAny"

    aput-object p0, v0, v1

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static final addIfNotNull(Ljava/lang/Object;Ljava/util/AbstractCollection;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final compact(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method

.method public static dfs(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/appcompat/widget/Toolbar$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/Toolbar$1;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Landroidx/appcompat/widget/Toolbar$1;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Landroidx/appcompat/widget/Toolbar$1;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;)V
    .locals 2

    if-eqz p0, :cond_3

    iget-object v0, p2, Landroidx/appcompat/widget/Toolbar$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;->beforeChildren(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;->getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Landroidx/appcompat/widget/Toolbar$1;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;->afterChildren(Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 p0, 0x16

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static ifAny(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;

    const/4 v2, 0x0

    check-cast p2, Ljava/io/Serializable;

    invoke-direct {v1, p2, v0, v2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;I)V

    invoke-static {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->dfs(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpu;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final isProcessCanceledException(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intellij.openapi.progress.ProcessCanceledException"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method
