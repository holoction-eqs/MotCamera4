.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p3

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    const-string v0, "additionalClassPartsProvider"

    move-object/from16 v3, p5

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    move-object/from16 v3, p6

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v3, p7

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-object v0, v7

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedClassDataFinder;

    move-object v3, v4

    invoke-direct {v4, v15}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializedClassDataFinder;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;)V

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoaderImpl;

    move-object v4, v6

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;

    move-object/from16 p2, v7

    move-object/from16 v7, p4

    invoke-direct {v6, v12, v7, v15}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoaderImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;->DO_NOTHING:Lokio/Timeout;

    sget-object v7, Lkotlinx/coroutines/CoroutineId$Key;->INSTANCE$3:Lkotlinx/coroutines/CoroutineId$Key;

    move-object/from16 v17, p2

    move-object/from16 p2, v0

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/ClassDescriptorFactory;

    move-object/from16 v18, v1

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;

    invoke-direct {v1, v8, v12}, Lkotlin/reflect/jvm/internal/impl/builtins/functions/BuiltInFictitiousFunctionClassFactory;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    const/16 v16, 0x0

    aput-object v1, v0, v16

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;

    invoke-direct {v1, v8, v12}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInClassDescriptorFactory;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    const/4 v8, 0x1

    aput-object v1, v0, v8

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    iget-object v12, v15, Lkotlin/reflect/jvm/internal/impl/serialization/SerializerExtensionProtocol;->extensionRegistry:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    const/high16 v16, 0xc0000

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v16}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;Ljava/lang/Iterable;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;Ljava/util/List;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    return-void
.end method


# virtual methods
.method public final findPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->finder:Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->BUILT_INS_PACKAGE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->startsWith(Lkotlin/reflect/jvm/internal/impl/name/Name;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInSerializerProtocol;->getBuiltInsFilePath(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;->builtInsResourceLoader:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsResourceLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsResourceLoader;->loadResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    const/4 v2, 0x0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AbstractDeserializedPackageFragmentProvider;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    invoke-static {p1, p0, v1, v0, v2}, Lkotlin/reflect/KTypeProjection$Companion;->create(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Ljava/io/InputStream;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;

    move-result-object v2

    :cond_1
    return-object v2
.end method
