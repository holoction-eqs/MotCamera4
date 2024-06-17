.class public abstract Lkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final platformExceptionHandlers:Ljava/util/Collection;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/core/view/ViewGroupKt$children$1;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Landroidx/core/view/ViewGroupKt$children$1;-><init>(Ljava/lang/Object;I)V

    instance-of v0, v1, Lkotlin/sequences/ConstrainedOnceSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/sequences/ConstrainedOnceSequence;

    invoke-direct {v0, v1}, Lkotlin/sequences/ConstrainedOnceSequence;-><init>(Lkotlin/sequences/Sequence;)V

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->optimizeReadOnlyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sput-object v0, Lkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt;->platformExceptionHandlers:Ljava/util/Collection;

    return-void
.end method
