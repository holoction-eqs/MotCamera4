.class public abstract Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final moduleByClassLoader:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->moduleByClassLoader:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final getOrCreateModule(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;
    .locals 37

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getSafeClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/WeakClassLoaderBox;-><init>(Ljava/lang/ClassLoader;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/ModuleByClassLoaderKt;->moduleByClassLoader:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    invoke-direct {v3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    const-class v5, Lkotlin/Unit;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "Unit::class.java.classLoader"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;

    invoke-direct {v7, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "runtime module for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v28, Lkotlin/UInt$Companion;->INSTANCE$8:Lkotlin/UInt$Companion;

    sget-object v14, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$8:Lkotlin/UNINITIALIZED_VALUE;

    const-string v5, "moduleName"

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v5, "DeserializationComponentsForJava.ModuleData"

    invoke-direct {v11, v5}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    invoke-direct {v8, v11}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "<"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    const/16 v5, 0x38

    invoke-direct {v6, v0, v11, v8, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$4;

    const/4 v13, 0x0

    invoke-direct {v0, v13, v8, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v11, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->lock:Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->lock()V

    :try_start_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$4;->invoke$2()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;

    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$initialize$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)V

    iput-object v0, v8, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->settingsComputation:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    move-object v9, v0

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;-><init>()V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;

    move-object v15, v12

    invoke-direct {v12}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;-><init>()V

    new-instance v10, Landroidx/work/WorkQuery;

    invoke-direct {v10, v11, v6}, Landroidx/work/WorkQuery;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V

    sget-object v16, Lokio/Timeout;->INSTANCE:Lokio/Timeout;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    move-object/from16 p0, v5

    sget-object v17, Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;->DO_NOTHING:Lkotlin/reflect/KTypeProjection$Companion;

    move-object/from16 v29, v1

    move-object v1, v10

    move-object/from16 v10, v17

    sget-object v17, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$10:Lkotlin/UNINITIALIZED_VALUE;

    move-object/from16 v30, v4

    move-object v4, v12

    move-object/from16 v12, v17

    move-object/from16 v19, v8

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;

    move/from16 v31, v13

    move-object v13, v8

    invoke-direct {v8, v11}, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    sget-object v17, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$5:Lkotlin/UNINITIALIZED_VALUE;

    sget-object v18, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$9:Lkotlin/UNINITIALIZED_VALUE;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-object/from16 v20, v8

    invoke-direct {v8, v6, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;

    move-object/from16 v21, v8

    move-object/from16 v32, v6

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    move-object/from16 v26, v6

    invoke-direct {v8, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;)V

    new-instance v6, Lcom/google/common/base/Splitter$1;

    move-object/from16 v22, v6

    new-instance v8, Lcom/google/common/base/Joiner;

    sget-object v24, Lkotlin/UInt$Companion;->INSTANCE$11:Lkotlin/UInt$Companion;

    move-object/from16 v33, v2

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;)V

    invoke-direct {v6, v8}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/Joiner;)V

    sget-object v23, Lkotlin/UInt$Companion;->INSTANCE$10:Lkotlin/UInt$Companion;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v34, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-object/from16 v25, v34

    new-instance v6, Lkotlin/UInt$Companion;

    move-object/from16 v27, v6

    invoke-direct {v6}, Lkotlin/UInt$Companion;-><init>()V

    move-object/from16 v8, v32

    move-object v6, v11

    move-object/from16 v35, v8

    move-object/from16 v32, v19

    move-object v8, v3

    move-object v2, v11

    move-object/from16 v11, v28

    move-object/from16 v19, v35

    invoke-direct/range {v5 .. v27}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectJavaClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/load/java/components/SignaturePropagator;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaPropertyInitializerEvaluator;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;Lkotlin/reflect/jvm/internal/impl/load/java/sources/JavaSourceElementFactory;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;Lkotlin/reflect/jvm/internal/impl/load/kotlin/PackagePartProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/SupertypeLoopChecker;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupTracker;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;Lkotlin/reflect/jvm/internal/impl/load/java/AnnotationTypeQualifierResolver;Lcom/google/common/base/Splitter$1;Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverSettings;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;Lkotlin/UInt$Companion;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    move-object/from16 v6, p0

    invoke-direct {v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;)V

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    const-string v7, "jvmMetadataVersion"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaClassDataFinder;

    invoke-direct {v11, v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JavaClassDataFinder;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;

    move-object/from16 v7, v35

    invoke-direct {v12, v7, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;)V

    iput-object v6, v12, Lkotlin/reflect/jvm/internal/impl/load/kotlin/BinaryClassAnnotationAndConstantLoaderImpl;->jvmMetadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;

    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    iget-object v6, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->builtIns:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    instance-of v8, v6, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    if-eqz v8, :cond_2

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;

    move-object/from16 v36, v6

    goto :goto_0

    :cond_2
    const/16 v36, 0x0

    :goto_0
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    sget-object v15, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$12:Lkotlin/UNINITIALIZED_VALUE;

    sget-object v16, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-eqz v36, :cond_3

    invoke-virtual/range {v36 .. v36}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    sget-object v8, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$6:Lkotlin/UNINITIALIZED_VALUE;

    :goto_1
    move-object/from16 v18, v8

    if-eqz v36, :cond_4

    invoke-virtual/range {v36 .. v36}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    sget-object v8, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$7:Lkotlin/UNINITIALIZED_VALUE;

    :goto_2
    move-object/from16 v19, v8

    sget-object v20, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;

    move-object/from16 v22, v8

    invoke-direct {v8, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    const/high16 v24, 0x40000

    move-object v8, v6

    move-object v9, v2

    move-object v10, v7

    move-object v13, v5

    move-object/from16 v14, v28

    move-object/from16 v17, v1

    move-object/from16 v21, v34

    invoke-direct/range {v8 .. v24}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ClassDataFinder;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;Ljava/lang/Iterable;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider;Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;Ljava/util/List;I)V

    iput-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    new-instance v13, Lcom/airbnb/lottie/model/MutablePair;

    invoke-direct {v13, v5}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;)V

    iput-object v13, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;->resolver:Lcom/airbnb/lottie/model/MutablePair;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;

    invoke-virtual/range {v32 .. v32}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v9

    invoke-virtual/range {v32 .. v32}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns;->getCustomizer()Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;

    move-result-object v10

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;

    invoke-direct {v12, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;)V

    move-object/from16 v8, v30

    move-object v4, v14

    move-object v5, v2

    move-object v2, v6

    move-object v6, v8

    move-object v15, v7

    move-object v8, v1

    move-object/from16 v11, v34

    invoke-direct/range {v4 .. v12}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsPackageFragmentProvider;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsCustomizer;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;Lkotlin/reflect/jvm/internal/impl/resolve/sam/SamConversionResolverImpl;)V

    filled-new-array {v15}, [Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;

    invoke-direct {v4, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;-><init>(Ljava/util/List;)V

    iput-object v4, v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->dependencies:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;

    const/4 v4, 0x2

    new-array v4, v4, [Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    iget-object v5, v13, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    aput-object v5, v4, v31

    const/4 v5, 0x1

    aput-object v14, v4, v5

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CompositeProvider@RuntimeModuleData for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;->packageFragmentProviderForModuleContent:Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProvider;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    new-instance v4, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {v4, v0, v3}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;)V

    invoke-direct {v1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;Lcom/motorola/camera/fsm/ChangeEvent;)V

    :goto_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v3, v29

    move-object/from16 v4, v33

    invoke-virtual {v4, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;

    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {v4, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object/from16 v29, v3

    move-object/from16 v33, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v11

    move-object v1, v0

    :try_start_1
    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->exceptionHandlingStrategy:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$ExceptionHandlingStrategy;

    check-cast v0, Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;->unlock()V

    throw v0
.end method
