.class public abstract Landroidx/customview/poolingcontainer/PoolingContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final callPoolingContainerOnRelease(Landroid/view/View;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Landroidx/core/view/ViewGroupKt$children$1;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Landroidx/core/view/ViewGroupKt$children$1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v2, 0x7f0a030b

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    if-nez v3, :cond_0

    new-instance v3, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    invoke-direct {v3}, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, v3, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->listeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-lt v3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v1

    :cond_2
    return-void
.end method
