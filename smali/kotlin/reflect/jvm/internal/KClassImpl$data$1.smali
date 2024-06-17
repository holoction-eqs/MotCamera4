.class public final Lkotlin/reflect/jvm/internal/KClassImpl$data$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lkotlin/reflect/jvm/internal/KClassImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->this$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/util/Collection;
    .locals 3

    iget v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->this$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl;->getMemberScope$kotlin_reflection()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getMembers$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl;->getStaticScope$kotlin_reflection()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getMembers$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl;->getMemberScope$kotlin_reflection()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getMembers$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl;->getStaticScope$kotlin_reflection()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getMembers$enumunboxing$(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;I)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->this$0:Lkotlin/reflect/jvm/internal/KClassImpl;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->invoke()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->invoke()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KClassImpl;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p0

    iget-object v0, v2, Lkotlin/reflect/jvm/internal/KClassImpl;->data:Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;->moduleData$delegate:Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "<get-moduleData>(...)"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    iget-boolean v3, p0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;->deserialization:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    if-eqz v3, :cond_0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/KCallablesJvm;->findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_3

    iget-object p0, v2, Lkotlin/reflect/jvm/internal/KClassImpl;->jClass:Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/reflect/KTypeProjection$Companion;->create(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Landroidx/core/app/NotificationCompatBuilder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/core/app/NotificationCompatBuilder;->mContext:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/KClassImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    :goto_1
    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v4}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :pswitch_4
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " (kind = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It\'s not a Kotlin class or interface, so the reflection library has no idea what declarations it has. Please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    new-instance v0, Lkotlin/NotImplementedError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unresolved class: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->invoke()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$data$1;->invoke()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KClassImpl;->getConstructorDescriptors()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    new-instance v3, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    invoke-direct {v3, v2, v1}, Lkotlin/reflect/jvm/internal/KFunctionImpl;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0

    :pswitch_b
    new-instance p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/KClassImpl$Data;-><init>(Lkotlin/reflect/jvm/internal/KClassImpl;)V

    return-object p0

    :goto_3
    iget-object p0, v2, Lkotlin/reflect/jvm/internal/KClassImpl;->jClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KClassImpl;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p0

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
