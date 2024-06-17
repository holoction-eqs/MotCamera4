.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final annotationDeserializer:Lcom/motorola/camera/device/CameraService;

.field public final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    new-instance v0, Lcom/motorola/camera/device/CameraService;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->notFoundClasses:Landroidx/work/WorkQuery;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/device/CameraService;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Landroidx/work/WorkQuery;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->annotationDeserializer:Lcom/motorola/camera/device/CameraService;

    return-void
.end method


# virtual methods
.method public final asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;
    .locals 3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    invoke-direct {v0, p1, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->thisAsProtoContainer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    return-object p0

    :cond_0
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p3, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;I)V

    invoke-direct {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    return-object p2
.end method

.method public final getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getPropertyFieldAnnotations$1;

    invoke-direct {v2, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getPropertyFieldAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;ZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final loadConstructor(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;

    const/4 v2, 0x0

    iget v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v12, v1, v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    iget-object v7, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v8, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    iget-object v9, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    iget-object v10, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v14

    move/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v17, v14

    move-object v14, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v13, v15, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v0

    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->valueParameter_:Ljava/util/List;

    const-string v2, "proto.valueParameterList"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->memberDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    invoke-virtual {v0, v1, v12, v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    iget v2, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;)V

    invoke-interface/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {v15, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    invoke-interface/range {v17 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;->isExpect()Z

    move-result v0

    iput-boolean v0, v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExpect:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    return-object v15
.end method

.method public final loadFunction(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "proto"

    invoke-static {v12, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->flags_:I

    goto :goto_1

    :cond_1
    iget v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->oldFlags_:I

    and-int/lit8 v3, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v3

    :goto_1
    move v13, v1

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v12, v13, v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    iget v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    and-int/lit8 v4, v1, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    const/16 v4, 0x40

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v2

    :goto_5
    sget-object v15, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    if-eqz v1, :cond_6

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    iget-object v4, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;

    invoke-direct {v5, v0, v12, v14, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;I)V

    invoke-direct {v1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    move-object v10, v1

    goto :goto_6

    :cond_6
    move-object v10, v15

    :goto_6
    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    iget v1, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->name_:I

    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-static {v2, v1}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/SuspendFunctionTypeUtilKt;->KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    goto :goto_7

    :cond_7
    iget-object v0, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    :goto_7
    move-object v9, v0

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;

    iget-object v1, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    iget v0, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->name_:I

    invoke-static {v2, v0}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v0, v13}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->memberKind(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v5

    iget-object v7, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v6, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    iget-object v2, v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v8

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move-object/from16 v27, v10

    move-object/from16 v10, v18

    move/from16 v28, v13

    move-object v13, v11

    move-object/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    iget-object v0, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->typeParameter_:Ljava/util/List;

    const-string v1, "proto.typeParameterList"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v26

    invoke-static {v13, v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v0

    iget-object v2, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {v12, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->receiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lcom/google/android/gms/internal/mlkit_common/zzpi;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    if-eqz v3, :cond_8

    invoke-virtual {v5, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v6, v27

    invoke-static {v1, v3, v6}, Lkotlin/text/UStringsKt;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_8

    :cond_8
    move-object/from16 v17, v4

    :goto_8
    iget-object v3, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    instance-of v6, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v6, :cond_9

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_9

    :cond_9
    move-object v3, v4

    :goto_9
    if-eqz v3, :cond_a

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_a

    :cond_a
    move-object/from16 v18, v4

    :goto_a
    const-string v3, "typeTable"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->contextReceiverType_:Ljava/util/List;

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    goto :goto_b

    :cond_b
    move-object v6, v4

    :goto_b
    if-nez v6, :cond_d

    iget-object v6, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->contextReceiverTypeId_:Ljava/util/List;

    const-string v7, "contextReceiverTypeIdList"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-string v9, "it"

    invoke-static {v8, v9}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_c
    move-object v6, v7

    :cond_d
    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_f

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v5, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-static {v1, v9, v4, v15, v8}, Lkotlin/text/UStringsKt;->createContextReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move v8, v10

    goto :goto_d

    :cond_f
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v4

    :cond_10
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->getOwnTypeParameters()Ljava/util/List;

    move-result-object v20

    iget-object v4, v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->valueParameter_:Ljava/util/List;

    const-string v6, "proto.valueParameterList"

    invoke-static {v4, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->memberDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    invoke-virtual {v0, v4, v12, v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    move-result-object v21

    invoke-static {v12, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lcom/google/android/gms/internal/mlkit_common/zzpi;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    invoke-virtual {v5, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v22

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    move/from16 v4, v28

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineId$Key;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v23

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v24

    sget-object v25, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object/from16 v16, v1

    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v25}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_OPERATOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "IS_OPERATOR.get(flags)"

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isOperator:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INFIX:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "IS_INFIX.get(flags)"

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isInfix:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_FUNCTION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "IS_EXTERNAL_FUNCTION.get(flags)"

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExternal:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "IS_INLINE.get(flags)"

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isInline:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_TAILREC:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "IS_TAILREC.get(flags)"

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isTailrec:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_SUSPEND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "IS_SUSPEND.get(flags)"

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isSuspend:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXPECT_FUNCTION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "IS_EXPECT_FUNCTION.get(flags)"

    invoke-static {v0, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExpect:Z

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    iget-object v0, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->contractDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer;

    check-cast v0, Lokio/Timeout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final loadProperty(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const-string v1, "proto"

    invoke-static {v15, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v20, 0x6

    if-eqz v2, :cond_1

    iget v1, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    goto :goto_1

    :cond_1
    iget v1, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->oldFlags_:I

    and-int/lit8 v2, v1, 0x3f

    shr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v2

    :goto_1
    move v3, v1

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;

    move-object v1, v14

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v2, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v0, v15, v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v5, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static {v5}, Lkotlinx/coroutines/CoroutineId$Key;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v6, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v6}, Lkotlinx/coroutines/JobKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_VAR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v8, "IS_VAR.get(flags)"

    invoke-static {v7, v3, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v7

    iget-object v8, v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v9, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->name_:I

    invoke-static {v8, v9}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v9, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-static {v9}, Lkotlinx/coroutines/JobKt;->memberKind(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v9

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_LATEINIT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v11, "IS_LATEINIT.get(flags)"

    invoke-static {v10, v3, v11}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v12, "IS_CONST.get(flags)"

    invoke-static {v11, v3, v12}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v11

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_PROPERTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    move-object/from16 v16, v13

    const-string v13, "IS_EXTERNAL_PROPERTY.get(flags)"

    invoke-static {v12, v3, v13}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v12

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_DELEGATED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    move-object/from16 v17, v14

    const-string v14, "IS_DELEGATED.get(flags)"

    invoke-static {v13, v3, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v13

    move-object/from16 v14, v16

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXPECT_PROPERTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v15, "IS_EXPECT_PROPERTY.get(flags)"

    invoke-static {v14, v3, v15}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v14

    move/from16 v21, v3

    move-object/from16 v3, v16

    move-object/from16 v15, v17

    move-object/from16 v22, v15

    iget-object v15, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-object/from16 v16, v15

    iget-object v15, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    move-object/from16 v17, v15

    iget-object v15, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-object/from16 v18, v15

    iget-object v15, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-object v0, v3

    move-object v3, v15

    move-object/from16 v23, v0

    move-object/from16 v24, v22

    move-object/from16 v0, p1

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v19}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;ZZZZZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;)V

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->typeParameter_:Ljava/util/List;

    const-string v2, "proto.typeParameterList"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v23

    move-object/from16 v2, v24

    invoke-static {v3, v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v1

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_GETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "HAS_GETTER.get(flags)"

    move/from16 v6, v21

    invoke-static {v4, v6, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    sget-object v4, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    const/16 v5, 0x40

    const/16 v7, 0x20

    if-eqz v10, :cond_6

    iget v8, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    and-int/lit8 v9, v8, 0x20

    if-ne v9, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    and-int/lit8 v7, v8, 0x40

    if-ne v7, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-eqz v5, :cond_6

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    iget-object v7, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;

    const/4 v9, 0x1

    move-object/from16 v15, p0

    move v14, v6

    invoke-direct {v8, v15, v0, v11, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$getAnnotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;I)V

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_6
    move-object/from16 v15, p0

    move v14, v6

    move-object v5, v4

    :goto_6
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {v0, v6}, Lkotlinx/coroutines/CoroutineScopeKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lcom/google/android/gms/internal/mlkit_common/zzpi;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v7

    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    invoke-virtual {v8, v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->getOwnTypeParameters()Ljava/util/List;

    move-result-object v9

    iget-object v12, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    instance-of v13, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v13, :cond_7

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;

    move-result-object v12

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    const-string v13, "typeTable"

    invoke-static {v6, v13}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v3

    iget v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    move-object/from16 v17, v1

    and-int/lit8 v1, v3, 0x20

    move-object/from16 v18, v11

    const/16 v11, 0x20

    if-ne v1, v11, :cond_9

    const/4 v1, 0x1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_a

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_b

    :cond_a
    const/16 v1, 0x40

    and-int/lit8 v3, v3, 0x40

    if-ne v3, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_a
    if-eqz v1, :cond_c

    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->receiverTypeId_:I

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_d

    invoke-virtual {v8, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {v2, v1, v5}, Lkotlin/text/UStringsKt;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v1

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_c
    invoke-static {v6, v13}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->contextReceiverType_:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    :goto_d
    const/16 v5, 0xa

    if-nez v3, :cond_10

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->contextReceiverTypeId_:Ljava/util/List;

    const-string v11, "contextReceiverTypeIdList"

    invoke-static {v3, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v13, "it"

    invoke-static {v5, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_f
    move-object v3, v11

    :cond_10
    check-cast v3, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v13, v5, 0x1

    if-ltz v5, :cond_11

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v8, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Lkotlin/text/UStringsKt;->createContextReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v13

    move-object/from16 v3, v19

    goto :goto_f

    :cond_11
    const/4 v0, 0x0

    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    throw v0

    :cond_12
    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v7

    move-object v6, v9

    move-object v7, v12

    move-object v8, v1

    move-object v9, v11

    invoke-virtual/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v4, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v1, v14, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v4

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v13, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v12, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    if-eqz v5, :cond_21

    if-eqz v6, :cond_20

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result v1

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result v3

    iget v4, v12, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->offset:I

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result v3

    iget v4, v13, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->offset:I

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_NOT_DEFAULT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result v5

    or-int/2addr v1, v5

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_ACCESSOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v11, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result v5

    or-int/2addr v1, v5

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INLINE_ACCESSOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v9, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->toFlags(Ljava/lang/Boolean;)I

    move-result v4

    or-int/2addr v1, v4

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1;

    if-eqz v10, :cond_16

    iget v4, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_13

    const/4 v4, 0x1

    goto :goto_10

    :cond_13
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_14

    iget v4, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getterFlags_:I

    goto :goto_11

    :cond_14
    move v4, v1

    :goto_11
    const-string v5, "IS_NOT_DEFAULT.get(getterFlags)"

    invoke-static {v3, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v5

    const-string v6, "IS_EXTERNAL_ACCESSOR.get(getterFlags)"

    invoke-static {v11, v4, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v10

    const-string v6, "IS_INLINE_ACCESSOR.get(getterFlags)"

    invoke-static {v9, v4, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v21

    move-object/from16 v6, v18

    invoke-virtual {v15, v0, v4, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v6

    if-eqz v5, :cond_15

    new-instance v18, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    invoke-virtual {v12, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static {v7}, Lkotlinx/coroutines/CoroutineId$Key;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v7

    invoke-virtual {v13, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v8

    xor-int/lit8 v22, v5, 0x1

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v4, v18

    move-object v5, v2

    move-object/from16 v25, v9

    move/from16 v9, v22

    move-object/from16 v26, v11

    move/from16 v11, v21

    move/from16 v21, v1

    move-object v1, v12

    move-object/from16 v12, v23

    move-object/from16 v27, v13

    move-object/from16 v13, v24

    move-object/from16 v22, v1

    move v1, v14

    move-object/from16 v14, v19

    invoke-direct/range {v4 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyGetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    goto :goto_12

    :cond_15
    move/from16 v21, v1

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object/from16 v27, v13

    move v1, v14

    invoke-static {v2, v6}, Lkotlin/text/UStringsKt;->createDefaultGetter(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    move-result-object v18

    move-object/from16 v4, v18

    :goto_12
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_13

    :cond_16
    move/from16 v21, v1

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object/from16 v27, v13

    move v1, v14

    const/4 v4, 0x0

    :goto_13
    move-object v14, v4

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_SETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v5, "HAS_SETTER.get(flags)"

    invoke-static {v4, v1, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget v4, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_17

    const/4 v4, 0x1

    goto :goto_14

    :cond_17
    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_18

    iget v4, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->setterFlags_:I

    goto :goto_15

    :cond_18
    move/from16 v4, v21

    :goto_15
    const-string v5, "IS_NOT_DEFAULT.get(setterFlags)"

    invoke-static {v3, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v3

    const-string v5, "IS_EXTERNAL_ACCESSOR.get(setterFlags)"

    move-object/from16 v6, v26

    invoke-static {v6, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v10

    const-string v5, "IS_INLINE_ACCESSOR.get(setterFlags)"

    move-object/from16 v6, v25

    invoke-static {v6, v4, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v11

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;

    invoke-virtual {v15, v0, v4, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v6

    if-eqz v3, :cond_1a

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    move-object/from16 v5, v22

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static {v5}, Lkotlinx/coroutines/CoroutineId$Key;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v7

    move-object/from16 v5, v27

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v8

    xor-int/lit8 v9, v3, 0x1

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v3

    const/16 v18, 0x0

    move-object v4, v12

    move-object v5, v2

    move-object v15, v12

    move-object v12, v3

    move-object v3, v13

    move-object/from16 v13, v18

    move-object/from16 v28, v14

    move-object/from16 v14, v19

    invoke-direct/range {v4 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertySetterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v5, v17

    invoke-static {v5, v15, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v4

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->memberDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    invoke-virtual {v4, v5, v0, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    if-eqz v3, :cond_19

    iput-object v3, v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->parameter:Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    move-object v12, v15

    goto :goto_16

    :cond_19
    invoke-static/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->$$$reportNull$$$0(I)V

    const/4 v0, 0x0

    throw v0

    :cond_1a
    move-object/from16 v28, v14

    invoke-static {v2, v6}, Lkotlin/text/UStringsKt;->createDefaultSetter(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    move-result-object v12

    goto :goto_16

    :cond_1b
    move-object/from16 v28, v14

    const/4 v12, 0x0

    :goto_16
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v4, "HAS_CONSTANT.get(flags)"

    invoke-static {v3, v1, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_1c
    move-object/from16 v4, p0

    const/4 v3, 0x0

    :goto_17
    move-object/from16 v1, v16

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    instance-of v5, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v5, :cond_1d

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_18

    :cond_1d
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_1e

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind$enumunboxing$()I

    move-result v1

    goto :goto_19

    :cond_1e
    move v1, v3

    :goto_19
    const/4 v5, 0x5

    if-ne v1, v5, :cond_1f

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;

    const/4 v5, 0x3

    invoke-direct {v1, v4, v0, v2, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$loadProperty$4;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    :cond_1f
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    invoke-virtual {v4, v0, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    move-object/from16 v4, v28

    invoke-virtual {v2, v4, v12, v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;)V

    return-object v2

    :cond_20
    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->$$$reportNull$$$0(I)V

    const/4 v0, 0x0

    throw v0

    :cond_21
    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->$$$reportNull$$$0(I)V

    throw v3
.end method

.method public final valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;)Ljava/util/List;
    .locals 26

    move-object/from16 v7, p0

    iget-object v8, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v21, v0

    check-cast v21, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-interface/range {v21 .. v21}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    const-string v1, "callableDescriptor.containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;

    move-result-object v22

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v12, v24

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v25, v12, 0x1

    if-ltz v12, :cond_8

    move-object v9, v0

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    iget v0, v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v1, v24

    :goto_1
    if-eqz v1, :cond_1

    iget v0, v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->flags_:I

    move v10, v0

    goto :goto_2

    :cond_1
    move/from16 v10, v24

    :goto_2
    if-eqz v22, :cond_2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v1, "HAS_ANNOTATIONS.get(flags)"

    invoke-static {v0, v10, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$valueParameters$1$annotations$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v12

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$valueParameters$1$annotations$1;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotatedCallableKind;ILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)V

    invoke-direct {v11, v13, v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    move-object v13, v11

    goto :goto_3

    :cond_2
    sget-object v0, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    move-object v13, v0

    :goto_3
    const/4 v11, 0x0

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v1, v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->name_:I

    invoke-static {v0, v1}, Lkotlin/text/UStringsKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v14

    iget-object v0, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-static {v9, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lcom/google/android/gms/internal/mlkit_common/zzpi;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    iget-object v2, v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->DECLARES_DEFAULT_VALUE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v4, "DECLARES_DEFAULT_VALUE.get(flags)"

    invoke-static {v3, v10, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v16

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CROSSINLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    const-string v4, "IS_CROSSINLINE.get(flags)"

    invoke-static {v3, v10, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z

    move-result v17

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_NOINLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v3, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "IS_NOINLINE.get(flags)"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    const-string v3, "typeTable"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    move/from16 v4, v24

    :goto_4
    if-eqz v4, :cond_4

    iget-object v0, v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->varargElementType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_6

    :cond_4
    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    move/from16 v3, v24

    :goto_5
    if-eqz v3, :cond_6

    iget v3, v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->varargElementTypeId_:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v0

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    invoke-virtual {v2, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    move-object/from16 v19, v0

    sget-object v20, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement$1;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-object v9, v0

    move-object/from16 v10, v21

    move-object v2, v15

    move-object v15, v1

    invoke-direct/range {v9 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;ILkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    move/from16 v12, v25

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lkotlin/jvm/JvmClassMappingKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_9
    move-object v2, v15

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
