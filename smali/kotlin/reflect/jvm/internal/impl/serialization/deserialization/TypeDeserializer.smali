.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

.field public final classifierDescriptors:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

.field public final containerPresentableName:Ljava/lang/String;

.field public final debugName:Ljava/lang/String;

.field public final parent:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

.field public final typeAliasDescriptors:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

.field public final typeParameterDescriptors:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->parent:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->debugName:Ljava/lang/String;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->containerPresentableName:Ljava/lang/String;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;I)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {p2, p4}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->classifierDescriptors:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;I)V

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->typeAliasDescriptors:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    add-int/lit8 p3, p4, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    iget v0, p5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    invoke-direct {v1, v2, p5, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p4, p3

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->typeParameterDescriptors:Ljava/util/Map;

    return-void
.end method

.method public static final simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    const-string v1, "argumentList"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {p0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->outerType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lcom/google/android/gms/internal/mlkit_common/zzpi;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 1

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p0, p3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributeTranslator;

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    goto :goto_1

    :cond_0
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2, p0}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final computeLocalClassifierReplacementType(I)V
    .locals 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-static {v0, p1}, Lkotlin/text/UStringsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->local:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->localClassifierTypeSettings:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final getOwnTypeParameters()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->typeParameterDescriptors:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->typeParameterDescriptors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v0, :cond_1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->parent:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "proto"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    move-result v2

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    goto :goto_1

    :cond_0
    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    :goto_1
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->computeLocalClassifierReplacementType(I)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    move-result v2

    const/4 v6, 0x2

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->classifierDescriptors:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    iget v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    if-nez v2, :cond_d

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    goto/16 :goto_6

    :cond_3
    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit8 v8, v2, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_4

    move v8, v4

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    if-eqz v8, :cond_5

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v2

    if-nez v2, :cond_d

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    iget v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->containerPresentableName:Ljava/lang/String;

    filled-new-array {v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    move-result-object v2

    goto/16 :goto_9

    :cond_5
    and-int/lit8 v8, v2, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_6

    move v8, v4

    goto :goto_3

    :cond_6
    move v8, v5

    :goto_3
    if-eqz v8, :cond_a

    iget-object v2, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameterName_:I

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->getOwnTypeParameters()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    move-object v3, v6

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v3, :cond_9

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    iget-object v6, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    move-result-object v2

    goto :goto_9

    :cond_9
    move-object v2, v3

    goto :goto_8

    :cond_a
    and-int/2addr v2, v3

    if-ne v2, v3, :cond_b

    move v2, v4

    goto :goto_5

    :cond_b
    move v2, v5

    :goto_5
    if-eqz v2, :cond_e

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->typeAliasDescriptors:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    iget v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    if-nez v2, :cond_d

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    :goto_6
    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-static {v3, v2}, Lkotlin/text/UStringsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;

    invoke-direct {v3, v0, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeAliasDescriptors$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;I)V

    invoke-static {v3, v1}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->generateSequence(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v3

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$typeParametersCount$2;

    invoke-static {v3, v6}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v3

    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1;

    invoke-static {v6, v2}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->generateSequence(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v6

    invoke-static {v6}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result v6

    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v6, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object v6, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->notFoundClasses:Landroidx/work/WorkQuery;

    invoke-virtual {v6, v2, v3}, Landroidx/work/WorkQuery;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v2

    :cond_d
    :goto_8
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    const-string v3, "classifier.typeConstructor"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNKNOWN_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->TYPE_FOR_ERROR_TYPE_CONSTRUCTOR:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v3, v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeWithArguments(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    iget-object v4, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v6, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    const/16 v8, 0x12

    invoke-direct {v6, v8, v0, v1}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v4, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    iget-object v4, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v6, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->typeAttributeTranslators:Ljava/util/List;

    iget-object v8, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {v6, v3, v2, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v6

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    iget-object v12, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    const-string v13, "typeTable"

    if-eqz v11, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v14, v5, 0x1

    if-ltz v5, :cond_1b

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v15

    move-object/from16 v16, v9

    const-string v9, "constructor.parameters"

    invoke-static {v15, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v15}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    iget-object v9, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->projection_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->STAR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    if-ne v9, v15, :cond_11

    if-nez v5, :cond_10

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;

    iget-object v9, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v9

    invoke-direct {v5, v9}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;)V

    goto/16 :goto_f

    :cond_10
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v9, v5}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    move-object v5, v9

    goto/16 :goto_f

    :cond_11
    const-string v5, "typeArgumentProto.projection"

    invoke-static {v9, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v15, 0x1

    if-eq v5, v15, :cond_14

    const/4 v15, 0x2

    if-eq v5, v15, :cond_13

    const/4 v0, 0x3

    if-eq v5, v0, :cond_12

    new-instance v0, Lcom/google/gson/JsonParseException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_b

    :cond_14
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_b

    :cond_15
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_b
    invoke-static {v12, v13}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->bitField0_:I

    and-int/lit8 v13, v9, 0x2

    const/4 v15, 0x2

    if-ne v13, v15, :cond_16

    const/4 v13, 0x1

    goto :goto_c

    :cond_16
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_17

    iget-object v9, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_e

    :cond_17
    and-int/lit8 v9, v9, 0x4

    const/4 v13, 0x4

    if-ne v9, v13, :cond_18

    const/4 v9, 0x1

    goto :goto_d

    :cond_18
    const/4 v9, 0x0

    :goto_d
    if-eqz v9, :cond_19

    iget v9, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->typeId_:I

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v9

    goto :goto_e

    :cond_19
    const/4 v9, 0x0

    :goto_e
    if-nez v9, :cond_1a

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->NO_RECORDED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v9

    invoke-direct {v5, v9}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_f

    :cond_1a
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-virtual {v0, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-direct {v11, v9, v5}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    move-object v5, v11

    :goto_f
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v14

    move-object/from16 v9, v16

    goto/16 :goto_a

    :cond_1b
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_1c
    invoke-static {v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v9

    if-eqz p2, :cond_20

    instance-of v10, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    if-eqz v10, :cond_20

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    const-string v6, "<this>"

    invoke-static {v9, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    invoke-direct {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;-><init>()V

    const/4 v6, 0x0

    invoke-static {v6, v9, v5}, Lkotlin/text/Regex$Companion;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    move-result-object v15

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const-string v6, "attributes"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v19}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    iget-object v6, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->typeAttributeTranslators:Ljava/util/List;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v9

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1d

    sget-object v3, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    goto :goto_10

    :cond_1d
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/util/List;)V

    move-object v3, v9

    :goto_10
    invoke-static {v6, v3, v2, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v2

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-nez v3, :cond_1f

    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    if-eqz v3, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    const/4 v3, 0x1

    :goto_12
    invoke-virtual {v5, v3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    goto/16 :goto_1b

    :cond_20
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->SUSPEND_TYPE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    const-string v10, "SUSPEND_TYPE.get(proto.flags)"

    invoke-static {v3, v9, v10}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v9, v10

    if-eqz v9, :cond_22

    const/4 v8, 0x1

    if-eq v9, v8, :cond_21

    goto/16 :goto_19

    :cond_21
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-ltz v9, :cond_2c

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v8

    invoke-virtual {v8, v9}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getSuspendFunction(I)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v8

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v8

    const-string v9, "functionTypeConstructor.\u2026on(arity).typeConstructor"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v6, v8, v5, v3, v9}, Lokio/Timeout;->simpleType(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    goto/16 :goto_1a

    :cond_22
    const/4 v9, 0x0

    invoke-static {v6, v2, v5, v3, v9}, Lokio/Timeout;->simpleType(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    if-eqz v6, :cond_23

    invoke-static {v6}, Lkotlin/ResultKt;->getFunctionalClassKind(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    move-result-object v6

    goto :goto_13

    :cond_23
    const/4 v6, 0x0

    :goto_13
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;->Function:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassKind;

    if-ne v6, v9, :cond_24

    const/4 v6, 0x1

    goto :goto_14

    :cond_24
    const/4 v6, 0x0

    :goto_14
    if-nez v6, :cond_25

    goto/16 :goto_19

    :cond_25
    invoke-static {v3}, Lkotlin/ResultKt;->getValueParameterTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    if-eqz v6, :cond_2c

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    if-nez v6, :cond_26

    goto/16 :goto_19

    :cond_26
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v9

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v9

    if-eqz v9, :cond_27

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v9

    goto :goto_15

    :cond_27
    const/4 v9, 0x0

    :goto_15
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2d

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONTINUATION_INTERFACE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializerKt;->EXPERIMENTAL_CONTINUATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v9, v10}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    goto/16 :goto_1a

    :cond_28
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    const-string v9, "continuationArgumentType.arguments.single().type"

    invoke-static {v6, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v9, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    if-eqz v9, :cond_29

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    goto :goto_16

    :cond_29
    const/4 v8, 0x0

    :goto_16
    if-eqz v8, :cond_2a

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->fqNameOrNull(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v8

    goto :goto_17

    :cond_2a
    const/4 v8, 0x0

    :goto_17
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/SuspendFunctionTypeUtilKt;->KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v3}, Lkotlin/text/StringsKt__IndentKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v14

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v15

    invoke-static {v3}, Lkotlin/ResultKt;->getReceiverTypeFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v16

    invoke-static {v3}, Lkotlin/ResultKt;->getContextReceiverTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v17

    invoke-static {v3}, Lkotlin/ResultKt;->getValueParameterTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->dropLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2b
    const/16 v20, 0x1

    move-object/from16 v18, v9

    move-object/from16 v19, v6

    invoke-static/range {v14 .. v20}, Lkotlin/ResultKt;->createFunctionType(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v6

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v3

    invoke-virtual {v6, v3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    goto :goto_1a

    :cond_2c
    :goto_19
    const/4 v3, 0x0

    :cond_2d
    :goto_1a
    if-nez v3, :cond_2e

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->INCONSISTENT_SUSPEND_FUNCTION:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v3, v5, v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeWithArguments(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v2

    goto :goto_1b

    :cond_2e
    move-object v2, v3

    :goto_1b
    const/4 v3, 0x0

    goto :goto_1c

    :cond_2f
    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    const/4 v8, 0x0

    invoke-static {v6, v2, v5, v3, v8}, Lokio/Timeout;->simpleType(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->DEFINITELY_NOT_NULL_TYPE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    const-string v6, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)"

    invoke-static {v3, v5, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    sget v3, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->$r8$clinit:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lkotlin/text/Regex$Companion;->makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    move-result-object v5

    if-eqz v5, :cond_30

    goto :goto_1d

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "null DefinitelyNotNullType for \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object v3, v8

    :goto_1c
    const/4 v5, 0x1

    move-object v8, v3

    move v3, v5

    move-object v5, v2

    :goto_1d
    invoke-static {v12, v13}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit16 v6, v2, 0x400

    const/16 v9, 0x400

    if-ne v6, v9, :cond_32

    move v6, v3

    goto :goto_1e

    :cond_32
    const/4 v6, 0x0

    :goto_1e
    if-eqz v6, :cond_33

    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_20

    :cond_33
    const/16 v6, 0x800

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_34

    goto :goto_1f

    :cond_34
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_35

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedTypeId_:I

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v8

    :cond_35
    :goto_20
    if-eqz v8, :cond_36

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/text/UStringsKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    :cond_36
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->hasClassName()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    invoke-static {v0, v1}, Lkotlin/text/UStringsKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    iget-object v0, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->platformDependentTypeTransformer:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentTypeTransformer;

    check-cast v0, Lkotlin/UInt$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "computedType"

    invoke-static {v5, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_37
    return-object v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->debugName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->parent:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ". Child of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->debugName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 9

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v4, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleTypeCapabilitiesId_:I

    invoke-interface {v1, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    const-string v5, "typeTable"

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit8 v7, v5, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    if-eqz v7, :cond_2

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_2

    :cond_2
    const/16 v7, 0x8

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBoundId_:I

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->flexibleTypeDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;

    invoke-interface {v0, p1, v1, v4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;->create(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, p1, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method
