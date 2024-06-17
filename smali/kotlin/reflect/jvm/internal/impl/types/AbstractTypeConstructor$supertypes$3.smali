.class public final Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;->this$0:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v1, "it"

    const/4 v2, 0x0

    const-string v3, "supertypes"

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;->this$0:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$supertypes$3;->$r8$classId:I

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    if-eqz p0, :cond_0

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    :cond_0
    if-eqz v2, :cond_1

    iget-object p0, v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->supertypes:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5;->invoke$2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->getAdditionalNeighboursInSupertypeGraph(Z)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->allSupertypes:Ljava/util/Collection;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :sswitch_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;

    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->getSupertypeLoopChecker()Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

    move-result-object p0

    check-cast p0, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "superTypes"

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->allSupertypes:Ljava/util/Collection;

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->defaultSupertypeIfEmpty()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v2

    :goto_1
    if-nez p0, :cond_3

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_3
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    :cond_4
    instance-of p0, v1, Ljava/util/List;

    if-eqz p0, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    :cond_5
    if-nez v2, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    :cond_6
    invoke-virtual {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->processSupertypesWithoutCycles(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v1, "<set-?>"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes;->supertypesWithoutCycles:Ljava/util/List;

    return-object v0

    :goto_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->reportSupertypeLoopError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
