.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final additionalClassPartsProvider:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;

.field public final annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

.field public final classDataFinder:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;

.field public final classDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

.field public final configuration:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

.field public final contractDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer;

.field public final errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

.field public final extensionRegistryLite:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

.field public final fictitiousClassDescriptorFactories:Ljava/lang/Iterable;

.field public final flexibleTypeDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;

.field public final kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

.field public final localClassifierTypeSettings:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;

.field public final lookupTracker:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;

.field public final moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

.field public final notFoundClasses:Landroidx/work/WorkQuery;

.field public final packageFragmentProvider:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;

.field public final platformDependentDeclarationFilter:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;

.field public final platformDependentTypeTransformer:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentTypeTransformer;

.field public final storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

.field public final typeAttributeTranslators:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;Ljava/lang/Iterable;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;Ljava/util/List;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p12

    move/from16 v6, p16

    sget-object v7, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE$2:Lkotlinx/coroutines/CoroutineId$Key;

    sget-object v8, Lokio/Timeout;->INSTANCE$3:Lokio/Timeout;

    sget-object v9, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$9:Lkotlin/UNINITIALIZED_VALUE;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer$Companion;->DEFAULT:Lokio/Timeout;

    and-int/lit16 v11, v6, 0x2000

    if-eqz v11, :cond_0

    sget-object v11, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$6:Lkotlin/UNINITIALIZED_VALUE;

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    and-int/lit16 v12, v6, 0x4000

    if-eqz v12, :cond_1

    sget-object v12, Lkotlin/UInt$Companion;->INSTANCE$6:Lkotlin/UInt$Companion;

    goto :goto_1

    :cond_1
    move-object/from16 v12, p11

    :goto_1
    const/high16 v13, 0x10000

    and-int/2addr v13, v6

    if-eqz v13, :cond_2

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    goto :goto_2

    :cond_2
    move-object/from16 v13, p13

    :goto_2
    const/high16 v14, 0x40000

    and-int/2addr v14, v6

    if-eqz v14, :cond_3

    sget-object v14, Lkotlin/UInt$Companion;->INSTANCE$7:Lkotlin/UInt$Companion;

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    const/high16 v15, 0x80000

    and-int/2addr v6, v15

    if-eqz v6, :cond_4

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;

    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p15

    :goto_4
    const-string v15, "storageManager"

    invoke-static {v1, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "moduleDescriptor"

    invoke-static {v2, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "packageFragmentProvider"

    invoke-static {v3, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "fictitiousClassDescriptorFactories"

    invoke-static {v4, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "additionalClassPartsProvider"

    invoke-static {v11, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "platformDependentDeclarationFilter"

    invoke-static {v12, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "extensionRegistryLite"

    invoke-static {v5, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "kotlinTypeChecker"

    invoke-static {v13, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "platformDependentTypeTransformer"

    invoke-static {v14, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "typeAttributeTranslators"

    invoke-static {v6, v15}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    iput-object v7, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->configuration:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    move-object/from16 v1, p3

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->classDataFinder:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;

    move-object/from16 v1, p4

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->annotationAndConstantLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;

    iput-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->packageFragmentProvider:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;

    iput-object v8, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->localClassifierTypeSettings:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/LocalClassifierTypeSettings;

    move-object/from16 v1, p6

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->errorReporter:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;

    iput-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->lookupTracker:Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;

    move-object/from16 v1, p7

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->flexibleTypeDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;

    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->fictitiousClassDescriptorFactories:Ljava/lang/Iterable;

    move-object/from16 v1, p9

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->notFoundClasses:Landroidx/work/WorkQuery;

    iput-object v10, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->contractDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ContractDeserializer;

    iput-object v11, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->additionalClassPartsProvider:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;

    iput-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->platformDependentDeclarationFilter:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;

    iput-object v5, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->extensionRegistryLite:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    iput-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->kotlinTypeChecker:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    iput-object v14, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->platformDependentTypeTransformer:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentTypeTransformer;

    iput-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->typeAttributeTranslators:Ljava/util/List;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;)V

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->classDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    return-void
.end method


# virtual methods
.method public final createContext(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;
    .locals 11

    const-string v0, "descriptor"

    move-object v4, p1

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    const/4 v9, 0x0

    sget-object v10, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lcom/google/android/gms/internal/mlkit_common/zzpi;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer;Ljava/util/List;)V

    return-object v0
.end method

.method public final deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->BLACK_LIST:Ljava/util/Set;

    const/4 v0, 0x0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->classDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDeserializer;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassData;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    return-object p0
.end method
