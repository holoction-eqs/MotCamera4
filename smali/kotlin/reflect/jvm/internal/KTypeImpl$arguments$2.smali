.class public final Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $computeJavaType:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/util/List;
    .locals 14

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    const/16 v3, 0xa

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    .line 1
    :sswitch_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$ModuleViewTypeConstructor;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->getSupertypes()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefinerKt;->REFINER_CAPABILITY:Lcom/motorola/camera/saving/XmpData$DocData;

    const-string p0, "<this>"

    .line 4
    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 5
    :sswitch_1
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 7
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 8
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    .line 9
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->thisAsProtoContainer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    .line 10
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;

    invoke-interface {v0, p0, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadEnumEntryAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 11
    :sswitch_2
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    .line 12
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    .line 13
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 14
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    .line 15
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 16
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    .line 17
    invoke-interface {v0, v4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;->loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 18
    :sswitch_3
    check-cast p0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    .line 19
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl;->type:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 20
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;

    const/4 v5, 0x1

    invoke-direct {v0, p0, v5}, Lkotlin/reflect/jvm/internal/KTypeImpl$classifier$2;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl;I)V

    const/4 v6, 0x2

    invoke-static {v6, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    check-cast v2, Ljava/lang/Iterable;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v8, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_6

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 21
    sget-object v8, Lkotlin/reflect/KTypeProjection;->star:Lkotlin/reflect/KTypeProjection;

    goto :goto_2

    .line 22
    :cond_1
    new-instance v11, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v12

    const-string v13, "typeProjection.type"

    invoke-static {v12, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_2

    move-object v13, v1

    goto :goto_1

    :cond_2
    new-instance v13, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;

    invoke-direct {v13, p0, v8, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2$1$type$1;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl;ILkotlin/Lazy;)V

    :goto_1
    invoke-direct {v11, v12, v13}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_5

    if-eq v8, v5, :cond_4

    if-ne v8, v6, :cond_3

    .line 23
    new-instance v8, Lkotlin/reflect/KTypeProjection;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v11}, Lkotlin/reflect/KTypeProjection;-><init>(ILkotlin/reflect/jvm/internal/KTypeImpl;)V

    goto :goto_2

    .line 24
    :cond_3
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v3}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    .line 25
    :cond_4
    new-instance v8, Lkotlin/reflect/KTypeProjection;

    invoke-direct {v8, v6, v11}, Lkotlin/reflect/KTypeProjection;-><init>(ILkotlin/reflect/jvm/internal/KTypeImpl;)V

    goto :goto_2

    .line 26
    :cond_5
    new-instance v8, Lkotlin/reflect/KTypeProjection;

    invoke-direct {v8, v5, v11}, Lkotlin/reflect/KTypeProjection;-><init>(ILkotlin/reflect/jvm/internal/KTypeImpl;)V

    .line 27
    :goto_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v10

    goto :goto_0

    :cond_6
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v1

    :cond_7
    move-object v0, v7

    :goto_3
    return-object v0

    .line 28
    :goto_4
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 29
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;->_supertypes$delegate:Lkotlin/Lazy;

    .line 30
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, p0

    .line 31
    :goto_5
    check-cast v0, Ljava/lang/Iterable;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;
    .locals 4

    const-string v0, "additionalAnnotations"

    const-string v1, "<this>"

    iget v2, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 32
    :pswitch_0
    check-cast p0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassOrPackageFragmentDescriptor;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v2

    .line 33
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 35
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 36
    iget-object p0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 37
    invoke-virtual {v0, p0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object p0

    return-object p0

    .line 38
    :goto_0
    check-cast p0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 39
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    .line 41
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    .line 42
    iget-object p0, p0, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    .line 43
    invoke-virtual {v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/AbstractAnnotationTypeQualifierResolver;->extractAndMergeDefaultQualifiers(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 4

    iget v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 45
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    move-result-object v0

    .line 46
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 47
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->CLONEABLE_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    .line 49
    new-instance v3, Landroidx/work/WorkQuery;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    .line 50
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;->getSettings()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;

    move-result-object p0

    .line 51
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    .line 52
    invoke-direct {v3, v1, p0}, Landroidx/work/WorkQuery;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V

    invoke-static {v0, v2, v3}, Lkotlin/reflect/jvm/KCallablesJvm;->findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Landroidx/work/WorkQuery;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    .line 53
    :goto_0
    check-cast p0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;

    .line 54
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaAnnotationDescriptor;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 55
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    const-string v0, "c.module.builtIns.getBui\u2026qName(fqName).defaultType"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 56
    :pswitch_0
    check-cast p0, Lkotlinx/serialization/internal/EnumSerializer;

    .line 57
    iget-object v0, p0, Lkotlinx/serialization/internal/EnumSerializer;->overriddenDescriptor:Lkotlin/collections/EmptyList;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-nez v0, :cond_0

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    new-instance v0, Lkotlinx/serialization/internal/EnumDescriptor;

    .line 60
    iget-object p0, p0, Lkotlinx/serialization/internal/EnumSerializer;->values:Ljava/lang/Object;

    .line 61
    check-cast p0, [Ljava/lang/Enum;

    array-length v3, p0

    invoke-direct {v0, v1, v3}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v0, v4, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 63
    :pswitch_1
    check-cast p0, Ljava/lang/String;

    sget-object v0, Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;

    new-array v3, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer$descriptor$2$1;

    check-cast v1, Lkotlinx/serialization/SealedClassSerializer;

    invoke-direct {v4, v1, v2}, Lkotlinx/serialization/SealedClassSerializer$descriptor$2$1;-><init>(Lkotlinx/serialization/SealedClassSerializer;I)V

    invoke-static {p0, v0, v3, v4}, Lkotlin/time/DurationKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p0

    return-object p0

    .line 64
    :goto_1
    check-cast p0, Ljava/lang/String;

    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v3, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;

    check-cast v1, Lkotlinx/serialization/internal/EnumSerializer;

    const/16 v4, 0xa

    invoke-direct {v3, v1, v4}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0, v2, v3}, Lkotlin/time/DurationKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$1()V
    .locals 5

    iget v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->controlPanelOpen:Z

    if-nez v0, :cond_0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->access$hide$s-139190403(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    check-cast v1, Lcom/motorola/camera/settings/Setting;

    iget-object v0, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;->vstabSettingIsIhc:Z

    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "createPresentation"

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/cli/CliEventListener;

    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/arch/view/BasePresentation;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v2, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/motorola/camera/CliDualPreviewActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :goto_2
    iget v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    invoke-static {p0, v0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/window/layout/WindowInfoTrackerImpl;

    iget-object p0, p0, Landroidx/window/layout/WindowInfoTrackerImpl;->windowBackend:Landroidx/window/layout/adapter/WindowBackend;

    check-cast v1, Landroidx/core/util/Consumer;

    invoke-interface {p0, v1}, Landroidx/window/layout/adapter/WindowBackend;->unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V

    return-void

    :goto_3
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureLensTooltip;->showImpl(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x1

    iget v3, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$r8$classId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->$computeJavaType:Ljava/lang/Object;

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->this$0:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    check-cast v7, Lkotlinx/serialization/descriptors/SerialDescriptor;

    check-cast v6, Lkotlinx/serialization/json/Json$Default;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v7, v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)V

    invoke-interface {v7}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-interface {v7, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementAnnotations(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lkotlinx/serialization/json/JsonNames;

    if-eqz v9, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonNames;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v6, v4

    move v8, v5

    :goto_2
    if-ge v8, v6, :cond_3

    aget-object v9, v4, v8

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lkotlinx/serialization/UnknownFieldException;

    const-string v4, "The suggested name \'"

    const-string v5, "\' for property "

    invoke-static {v4, v9, v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v7, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is already one of the names for property "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v9}, Lkotlin/collections/MapsKt___MapsJvmKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v7, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/UnknownFieldException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    :cond_5
    return-object v0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iget-object v0, v6, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->computation:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v7, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_a
    check-cast v7, Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v0, v7, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;

    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageScope;->ownerDescriptor:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "packageFqName"

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :pswitch_b
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;->c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPackage;

    invoke-direct {v0, v1, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPackage;)V

    return-object v0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeQualifiersByElementType;

    move-result-object v0

    return-object v0

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :pswitch_f
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->c:Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v2, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    move-object v8, v3

    iget-object v9, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iget-object v10, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->finder:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    iget-object v11, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    iget-object v12, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->deserializedDescriptorResolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    iget-object v13, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signaturePropagator:Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;

    iget-object v14, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    iget-object v15, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaPropertyInitializerEvaluator:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaPropertyInitializerEvaluator;

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->samConversionResolver:Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;

    move-object/from16 v16, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;

    move-object/from16 v17, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->moduleClassResolver:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;

    move-object/from16 v18, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->packagePartProvider:Lkotlin/reflect/jvm/internal/impl/load/kotlin/PackagePartProvider;

    move-object/from16 v19, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->supertypeLoopChecker:Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;

    move-object/from16 v20, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->lookupTracker:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;

    move-object/from16 v21, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-object/from16 v22, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->reflectionTypes:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v23, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->annotationTypeQualifierResolver:Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    move-object/from16 v24, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signatureEnhancement:Lcom/google/common/base/Splitter$1;

    move-object/from16 v25, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaClassesTracker:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;

    move-object/from16 v26, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->settings:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;

    move-object/from16 v27, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object/from16 v28, v4

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaTypeEnhancementState:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v29, v4

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaModuleResolver:Lkotlin/UInt$Companion;

    move-object/from16 v30, v2

    invoke-direct/range {v8 .. v30}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaPropertyInitializerEvaluator;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;Lkotlin/reflect/jvm/internal/impl/load/kotlin/PackagePartProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lcom/google/common/base/Splitter$1;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/UInt$Companion;)V

    new-instance v2, Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v4, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    iget-object v1, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    check-cast v1, Lkotlin/Lazy;

    invoke-direct {v2, v3, v4, v1}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;Lkotlin/Lazy;)V

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v1

    const-string v3, "containingDeclaration"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->jClass:Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    invoke-direct {v0, v2, v1, v3, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V

    return-object v0

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :pswitch_11
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInsModule()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    move-result-object v1

    const-string v2, "builtInsModule"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v2, Landroidx/window/core/Version$bigInteger$2;

    const/16 v3, 0x1c

    invoke-direct {v2, v7, v3}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, v6, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Landroidx/window/core/Version$bigInteger$2;)V

    return-object v0

    :pswitch_12
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->computeContainingDeclaration:Lkotlin/jvm/functions/Function1;

    iget-object v2, v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;->CLONEABLE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    const/4 v12, 0x2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Collection;

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    move-object v8, v0

    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;ILjava/util/Collection;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/CloneableClassScope;

    invoke-direct {v1, v6, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/CloneableClassScope;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;)V

    sget-object v2, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    invoke-virtual {v0, v1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;)V

    return-object v0

    :pswitch_13
    check-cast v7, Ljava/lang/Class;

    check-cast v6, Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    const-string v10, ", "

    const-string v11, "("

    const-string v12, ")"

    sget-object v13, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE$8:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    const/16 v14, 0x30

    move-object v9, v0

    invoke-static/range {v8 .. v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_14
    check-cast v7, Lkotlin/reflect/jvm/internal/KFunctionImpl;

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/KFunctionImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    invoke-static {v6, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v7, Lkotlin/reflect/jvm/internal/KFunctionImpl;->signature:Ljava/lang/String;

    const-string v3, "signature"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<init>"

    invoke-static {v6, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getConstructorDescriptors()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    goto :goto_3

    :cond_6
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    move-result-object v3

    :goto_3
    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/CacheByClass;->asString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v2, :cond_b

    const-string v8, "\n"

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE$3:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    const/16 v12, 0x1e

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lkotlin/NotImplementedError;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Function \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' (JVM signature: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") not resolved in "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move v2, v5

    :goto_5
    if-eqz v2, :cond_a

    const-string v0, " no members found"

    goto :goto_6

    :cond_a
    const-string v0, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v4, v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_b
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    return-object v0

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke$1()V

    return-object v1

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke$1()V

    return-object v1

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke$1()V

    return-object v1

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke$1()V

    return-object v1

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke$1()V

    return-object v1

    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_7
    check-cast v7, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v7}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    if-gtz v0, :cond_c

    return-object v1

    :cond_c
    invoke-interface {v7, v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    invoke-static {v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
