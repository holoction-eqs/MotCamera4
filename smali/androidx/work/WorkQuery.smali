.class public final Landroidx/work/WorkQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# static fields
.field public static snackbarManager:Landroidx/work/WorkQuery;


# instance fields
.field public final mIds:Ljava/lang/Object;

.field public mStates:Ljava/lang/Object;

.field public final mTags:Ljava/lang/Object;

.field public final mUniqueWorkNames:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    const/16 v0, 0x100

    invoke-direct {p1, v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {p1, v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {p1, v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    const/16 p1, 0x20

    new-array p1, p1, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/CameraIntentReceiver$1;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/CameraIntentReceiver$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    const-string p1, "[/*?\\[\\]]"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Landroidx/work/WorkQuery;->registerStandardNamespaces()V

    invoke-virtual {p0}, Landroidx/work/WorkQuery;->registerStandardAliases()V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The XMPSchemaRegistry cannot be initialized!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;)V
    .locals 0

    .line 5
    iput-object p4, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkProgressDao_Impl$2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/WorkProgressDao_Impl$2;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/WorkQuery$Builder;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    iget-object v0, p1, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;)V
    .locals 1

    .line 8
    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance p1, Lkotlin/UNINITIALIZED_VALUE;

    invoke-direct {p1}, Lkotlin/UNINITIALIZED_VALUE;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;-><init>(Lkotlin/UNINITIALIZED_VALUE;)V

    iput-object p2, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)V
    .locals 1

    .line 10
    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$classes$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$classes$1;-><init>(Landroidx/work/WorkQuery;I)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    move-result-object p2

    iput-object p2, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$classes$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$classes$1;-><init>(Landroidx/work/WorkQuery;I)V

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public static createNotFoundClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;)V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->reflectType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final transformJavaClassifierType$errorType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNRESOLVED_JAVA_CLASS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->reflectType:Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    iget-object v8, v6, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    move-object v4, v8

    check-cast v4, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {v3, v4, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    invoke-static {v3}, Lkotlinx/coroutines/SupervisorKt;->toDefaultAttributes(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v3

    :cond_1
    move-object v9, v3

    move-object v10, v0

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    iget-object v3, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->classifier:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaElement;

    if-eqz v3, :cond_2f

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-class v12, Ljava/lang/Object;

    const-string v13, "reflectType.upperBounds"

    iget v15, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->howThisTypeIsUsed:I

    iget v11, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->flexibility:I

    iget-boolean v14, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    if-eqz v4, :cond_11

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;

    move-object v4, v3

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClass;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v4

    if-eqz v14, :cond_4

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->JAVA_LANG_CLASS_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v4, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v8

    check-cast v2, Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v2, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->reflectionTypes:Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v17, 0x0

    aget-object v4, v4, v17

    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->kClass$delegate:Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v9

    const-string v9, "property"

    invoke-static {v4, v9}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/time/DurationKt;->capitalizeAsciiOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lcom/google/android/gms/dynamite/zzo;->zza:I

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    iget-object v9, v2, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->kotlinReflectScope$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {v9, v4, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v7

    instance-of v9, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v9, :cond_2

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_3

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->KOTLIN_REFLECT_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-direct {v7, v9, v4}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->notFoundClasses:Landroidx/work/WorkQuery;

    invoke-virtual {v2, v7, v0}, Landroidx/work/WorkQuery;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    goto/16 :goto_6

    :cond_3
    move-object v0, v7

    goto/16 :goto_6

    :cond_4
    move-object/from16 v19, v9

    sget-object v0, Lkotlin/UNINITIALIZED_VALUE;->INSTANCE$4:Lkotlin/UNINITIALIZED_VALUE;

    move-object v2, v8

    check-cast v2, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lkotlin/UNINITIALIZED_VALUE;->mapJavaToKotlin$default(Lkotlin/UNINITIALIZED_VALUE;Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_5
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->readOnlyToMutable:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    if-eq v11, v2, :cond_c

    const/4 v2, 0x1

    if-eq v15, v2, :cond_c

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    instance-of v7, v2, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    if-eqz v7, :cond_6

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->reflectType:Ljava/lang/reflect/WildcardType;

    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    xor-int/2addr v2, v7

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v2

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    if-eqz v2, :cond_b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v4

    invoke-virtual {v4, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByFqName(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v2

    const-string v4, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    if-eq v2, v5, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_d

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Given class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not a read-only collection"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_5
    invoke-static {v0}, Lkotlin/UNINITIALIZED_VALUE;->convertReadOnlyToMutable(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    :cond_d
    :goto_6
    if-nez v0, :cond_f

    move-object v0, v8

    check-cast v0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    iget-object v0, v0, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->moduleClassResolver:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/SingleModuleClassResolver;->resolver:Lcom/airbnb/lottie/model/MutablePair;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/model/MutablePair;->resolveClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClass;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    goto :goto_7

    :cond_e
    const-string v0, "resolver"

    invoke-static {v0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_f
    :goto_7
    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    invoke-static/range {p1 .. p1}, Landroidx/work/WorkQuery;->createNotFoundClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;)V

    throw v2

    :cond_11
    move-object/from16 v19, v9

    instance-of v0, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    if-eqz v0, :cond_2e

    iget-object v0, v6, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;

    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/TypeParameterResolver;->resolveTypeParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaTypeParameter;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    :goto_8
    move-object v7, v0

    goto :goto_9

    :cond_12
    const/4 v7, 0x0

    :goto_9
    if-nez v7, :cond_13

    const/4 v0, 0x0

    return-object v0

    :cond_13
    const/4 v0, 0x3

    if-ne v11, v0, :cond_14

    const/4 v9, 0x0

    goto :goto_b

    :cond_14
    if-nez v14, :cond_15

    const/4 v0, 0x1

    if-eq v15, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_a
    move v9, v0

    :goto_b
    if-eqz v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v9, :cond_17

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v0

    const-string v1, "constructor.parameters"

    if-nez v0, :cond_19

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_18

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    goto :goto_e

    :cond_19
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    if-eqz v0, :cond_1b

    check-cast v2, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-object/from16 v14, p2

    iget-object v0, v14, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->visitedTypeParameters:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-static {v13, v1, v0}, Lkotlin/text/StringsKt__IndentKt;->hasTypeParameterRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {v13, v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v0

    move-object/from16 p1, v12

    goto :goto_10

    :cond_1a
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    move-object v0, v8

    check-cast v0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getStorageManager()Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;

    move-result-object v5

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 p1, v12

    move-object v12, v4

    move-object v4, v7

    move-object v14, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1;-><init>(Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;)V

    invoke-direct {v15, v14, v12}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, v6, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lkotlin/UNINITIALIZED_VALUE;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3b

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->copy$default(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;IZLjava/util/Set;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v0

    iget-object v1, v6, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0, v1, v15}, Lkotlin/UNINITIALIZED_VALUE;->computeProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v0

    :goto_10
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p1

    goto :goto_f

    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_1d

    check-cast v2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "p.name.asString()"

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v2

    invoke-direct {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1c
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_1e

    :cond_1d
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->getTypeArguments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->withIndex(Ljava/lang/Iterable;)Lkotlin/collections/IndexingIterable;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lkotlin/collections/IndexingIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/collections/IndexedValue;

    iget v4, v1, Lkotlin/collections/IndexedValue;->index:I

    iget-object v1, v1, Lkotlin/collections/IndexedValue;->value:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v10, 0x2

    const/4 v11, 0x7

    move-object/from16 p1, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v15, v15, v14, v11}, Lkotlinx/coroutines/SupervisorKt;->toAttributes$default(IZZLkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v0

    const-string v14, "parameter"

    invoke-static {v4, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v14, v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eqz v14, :cond_2b

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    move-object v14, v1

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    invoke-virtual {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v10

    iget-object v14, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->reflectType:Ljava/lang/reflect/WildcardType;

    invoke-interface {v14}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-static {v14, v13}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v12}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const/16 v16, 0x1

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1e

    move-object v14, v5

    goto :goto_13

    :cond_1e
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_13
    if-eqz v10, :cond_2a

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v11

    if-ne v11, v15, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v11

    if-eq v14, v11, :cond_20

    move/from16 v11, v16

    goto :goto_15

    :cond_20
    :goto_14
    const/4 v11, 0x0

    :goto_15
    if-eqz v11, :cond_21

    goto/16 :goto_1c

    :cond_21
    move-object v0, v8

    check-cast v0, Lcom/airbnb/lottie/parser/DropShadowEffect;

    const-string v11, "c"

    invoke-static {v0, v11}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "wildcardType"

    invoke-static {v1, v11}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v1

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object v11

    if-eqz v11, :cond_22

    move/from16 v11, v16

    goto :goto_16

    :cond_22
    const/4 v11, 0x0

    :goto_16
    if-eqz v11, :cond_29

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    const/4 v15, 0x0

    invoke-direct {v11, v0, v1, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    move-object v1, v0

    check-cast v1, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-virtual {v1}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->RXJAVA3_ANNOTATIONS:[Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-object/from16 v18, v0

    array-length v0, v15

    move-object/from16 v20, v1

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_24

    move/from16 v21, v0

    aget-object v0, v15, v1

    move-object/from16 v22, v2

    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move/from16 v0, v16

    goto :goto_19

    :cond_23
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v21

    move-object/from16 v2, v22

    goto :goto_18

    :cond_24
    move-object/from16 v22, v2

    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_25

    goto :goto_1a

    :cond_25
    move-object/from16 v0, v18

    move-object/from16 v2, v22

    goto :goto_17

    :cond_26
    move-object/from16 v22, v2

    const/16 v20, 0x0

    :goto_1a
    move-object/from16 v0, v20

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x2

    invoke-static {v15, v11, v11, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->toAttributes$default(IZZLkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v0, Lkotlin/UInt$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    goto :goto_1b

    :cond_27
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    invoke-direct {v2, v11, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(ILjava/util/List;)V

    move-object v0, v2

    :goto_1b
    invoke-static {v1, v0}, Lkotlin/text/StringsKt__IndentKt;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    :cond_28
    invoke-static {v1, v14, v4}, Lkotlin/text/StringsKt__IndentKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v0

    goto :goto_1d

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nullability annotations on unbounded wildcards aren\'t supported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_1c
    move-object/from16 v22, v2

    const/4 v11, 0x0

    invoke-static {v4, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/ErasureTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v0

    goto :goto_1d

    :cond_2b
    move-object/from16 v22, v2

    const/4 v11, 0x0

    const/16 v16, 0x1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-virtual {v6, v1, v0}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-direct {v2, v0, v15}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    move-object v0, v2

    :goto_1d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object/from16 v2, v22

    goto/16 :goto_12

    :cond_2c
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_1e
    move-object v11, v0

    :cond_2d
    move-object/from16 v3, v19

    const/4 v0, 0x0

    invoke-static {v3, v7, v11, v9, v0}, Lokio/Timeout;->simpleType(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown classifier kind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-static/range {p1 .. p1}, Landroidx/work/WorkQuery;->createNotFoundClass(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final delete(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-object p1, v0

    check-cast p1, Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final deleteAll()V
    .locals 3

    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MapCollections;

    invoke-virtual {v1}, Landroidx/collection/MapCollections;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-object v2, v0

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v2

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    iget-object p0, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MapCollections;

    invoke-virtual {p0, v1}, Landroidx/collection/MapCollections;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v2
.end method

.method public final getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/MemoizedFunctionToNotNull;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$ClassRequest;

    invoke-direct {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$ClassRequest;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-object p0
.end method

.method public final declared-synchronized getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final insert(Landroidx/work/impl/model/WorkProgress;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p0, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {p0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0
.end method

.method public final onCancel()V
    .locals 2

    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    return-void
.end method

.method public final declared-synchronized registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/Latin1Converter;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/adobe/xmp/impl/Latin1Converter;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/adobe/xmp/impl/Latin1Converter;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/adobe/xmp/impl/Latin1Converter;->assertPropName(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    new-instance v1, Lcom/adobe/xmp/options/PropertyOptions;

    iget p5, p5, Lcom/adobe/xmp/options/Options;->options:I

    invoke-direct {v1, p5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    const/4 p5, 0x0

    invoke-static {v1, p5}, Lcom/adobe/xmp/impl/XMPNodeUtils;->verifySetOptions(Lcom/adobe/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object p5

    iget p5, p5, Lcom/adobe/xmp/options/Options;->options:I

    invoke-direct {v0, p5}, Lcom/adobe/xmp/options/AliasOptions;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/adobe/xmp/options/AliasOptions;

    const/4 p5, 0x0

    invoke-direct {v0, p5, p5}, Lcom/adobe/xmp/options/AliasOptions;-><init>(II)V

    :goto_0
    iget-object p5, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast p5, Ljava/util/regex/Pattern;

    invoke-virtual {p5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Landroidx/work/WorkQuery;->mStates:Ljava/lang/Object;

    check-cast p5, Ljava/util/regex/Pattern;

    invoke-virtual {p5, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p0, p1}, Landroidx/work/WorkQuery;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroidx/work/WorkQuery;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/16 v1, 0x65

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;

    invoke-direct {p2, p3, p5, p4, v0}, Lcom/adobe/xmp/impl/XMPSchemaRegistryImpl$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    iget-object p3, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Actual property is already an alias, use the base property"

    invoke-direct {p1, p2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Alias is already existing"

    invoke-direct {p1, p2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Actual namespace is not registered"

    invoke-direct {p1, p2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Alias namespace is not registered"

    invoke-direct {p1, p2, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Alias and actual property names must be simple"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/Latin1Converter;->assertSchemaNS(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v3, :cond_3

    move-object v0, p2

    move v3, v2

    :goto_0
    :try_start_1
    iget-object v4, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p2, v0

    :cond_3
    iget-object v0, p0, Landroidx/work/WorkQuery;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_4
    :try_start_2
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "The prefix is a bad XML name"

    const/16 v0, 0xc9

    invoke-direct {p1, p2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lcom/adobe/xmp/XMPException;

    const-string p2, "Empty prefix"

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final registerStandardAliases()V
    .locals 21

    new-instance v6, Lcom/adobe/xmp/options/AliasOptions;

    const/4 v0, 0x0

    invoke-direct {v6, v0, v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>(II)V

    const/16 v1, 0x600

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    new-instance v13, Lcom/adobe/xmp/options/AliasOptions;

    invoke-direct {v13, v0, v0}, Lcom/adobe/xmp/options/AliasOptions;-><init>(II)V

    const/16 v0, 0x1e00

    invoke-virtual {v13, v0, v2}, Lcom/adobe/xmp/options/Options;->setOption(IZ)V

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object/from16 v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/xap/1.0/"

    const-string v9, "Authors"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "creator"

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Description"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "description"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v16, "http://ns.adobe.com/xap/1.0/"

    const-string v17, "Format"

    const-string v18, "http://purl.org/dc/elements/1.1/"

    const-string v19, "format"

    const/16 v20, 0x0

    move-object/from16 v15, p0

    invoke-virtual/range {v15 .. v20}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Keywords"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "subject"

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v16, "http://ns.adobe.com/xap/1.0/"

    const-string v17, "Locale"

    const-string v18, "http://purl.org/dc/elements/1.1/"

    const-string v19, "language"

    invoke-virtual/range {v15 .. v20}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/xap/1.0/"

    const-string v9, "Title"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "title"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v2, "Copyright"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "rights"

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/pdf/1.3/"

    const-string v9, "BaseURL"

    const-string v10, "http://ns.adobe.com/xap/1.0/"

    const-string v11, "BaseURL"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "CreationDate"

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "CreateDate"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "Creator"

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "CreatorTool"

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/pdf/1.3/"

    const-string v9, "ModDate"

    const-string v10, "http://ns.adobe.com/xap/1.0/"

    const-string v11, "ModifyDate"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/pdf/1.3/"

    const-string v9, "Subject"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "description"

    move-object v12, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/pdf/1.3/"

    const-string v9, "Title"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "title"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/photoshop/1.0/"

    const-string v9, "Caption"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "description"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/photoshop/1.0/"

    const-string v9, "Copyright"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "rights"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    const-string v2, "Keywords"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "subject"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/photoshop/1.0/"

    const-string v9, "Marked"

    const-string v10, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v11, "Marked"

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/photoshop/1.0/"

    const-string v9, "Title"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "title"

    move-object v12, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/photoshop/1.0/"

    const-string v9, "WebStatement"

    const-string v10, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v11, "WebStatement"

    move-object v12, v14

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    const-string v2, "Artist"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/tiff/1.0/"

    const-string v9, "Copyright"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "rights"

    const/4 v5, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v15, "http://ns.adobe.com/tiff/1.0/"

    const-string v16, "DateTime"

    const-string v17, "http://ns.adobe.com/xap/1.0/"

    const-string v18, "ModifyDate"

    const/16 v19, 0x0

    move-object/from16 v14, p0

    invoke-virtual/range {v14 .. v19}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    const-string v2, "ImageDescription"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "description"

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/tiff/1.0/"

    const-string v9, "Software"

    const-string v10, "http://ns.adobe.com/xap/1.0/"

    const-string v11, "CreatorTool"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/png/1.0/"

    const-string v2, "Author"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/png/1.0/"

    const-string v9, "Copyright"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "rights"

    move-object v12, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/png/1.0/"

    const-string v2, "CreationTime"

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "CreateDate"

    const/4 v14, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/png/1.0/"

    const-string v9, "Description"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "description"

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v6, "http://ns.adobe.com/png/1.0/"

    const-string v7, "ModificationTime"

    const-string v8, "http://ns.adobe.com/xap/1.0/"

    const-string v9, "ModifyDate"

    move-object/from16 v5, p0

    move-object v10, v14

    invoke-virtual/range {v5 .. v10}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v1, "http://ns.adobe.com/png/1.0/"

    const-string v2, "Software"

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    const-string v4, "CreatorTool"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    const-string v8, "http://ns.adobe.com/png/1.0/"

    const-string v9, "Title"

    const-string v10, "http://purl.org/dc/elements/1.1/"

    const-string v11, "title"

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroidx/work/WorkQuery;->registerAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/AliasOptions;)V

    return-void
.end method

.method public final registerStandardNamespaces()V
    .locals 2

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "xml"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v1, "rdf"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "dc"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/"

    const-string v1, "Iptc4xmpCore"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "adobe:ns:meta/"

    const-string v1, "x"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/iX/1.0/"

    const-string v1, "iX"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/"

    const-string v1, "xmp"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v1, "xmpRights"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v1, "xmpMM"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/bj/"

    const-string v1, "xmpBJ"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string v1, "xmpNote"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string v1, "pdf"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdfx/1.3/"

    const-string v1, "pdfx"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.npes.org/pdfx/ns/id/"

    const-string v1, "pdfxid"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/schema#"

    const-string v1, "pdfaSchema"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/property#"

    const-string v1, "pdfaProperty"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/type#"

    const-string v1, "pdfaType"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/field#"

    const-string v1, "pdfaField"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    const-string v1, "pdfaid"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/extension/"

    const-string v1, "pdfaExtension"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/photoshop/1.0/"

    const-string v1, "photoshop"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/album/1.0/"

    const-string v1, "album"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/"

    const-string v1, "exif"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/aux/"

    const-string v1, "aux"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/tiff/1.0/"

    const-string v1, "tiff"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/png/1.0/"

    const-string v1, "png"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jpeg/1.0/"

    const-string v1, "jpeg"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jp2k/1.0/"

    const-string v1, "jp2k"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/camera-raw-settings/1.0/"

    const-string v1, "crs"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/StockPhoto/1.0/"

    const-string v1, "bmsp"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/creatorAtom/1.0/"

    const-string v1, "creatorAtom"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/asf/1.0/"

    const-string v1, "asf"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/wav/1.0/"

    const-string v1, "wav"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    const-string v1, "xmpDM"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/transient/1.0/"

    const-string v1, "xmpx"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/"

    const-string v1, "xmpT"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/pg/"

    const-string v1, "xmpTPg"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/"

    const-string v1, "xmpG"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string v1, "xmpGImg"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Font#"

    const-string v1, "stFNT"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Dimensions#"

    const-string v1, "stDim"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string v1, "stEvt"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string v1, "stRef"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Version#"

    const-string v1, "stVer"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Job#"

    const-string v1, "stJob"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ManifestItem#"

    const-string v1, "stMfs"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/Identifier/qual/1.0/"

    const-string v1, "xmpidq"

    invoke-virtual {p0, v0, v1}, Landroidx/work/WorkQuery;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public final transformArrayType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 7

    const-string v0, "arrayType"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;->componentType:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaPrimitiveType;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaPrimitiveType;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;->reflectType:Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, v2

    :goto_2
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    iget-object v4, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    check-cast v4, Lcom/airbnb/lottie/parser/DropShadowEffect;

    const/4 v5, 0x1

    invoke-direct {v3, v4, p1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;Z)V

    const/4 p1, 0x0

    const/4 v6, 0x2

    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    new-array v0, v6, [Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    aput-object v1, v0, p1

    aput-object v3, v0, v5

    invoke-direct {p3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {p0, p3}, Lkotlin/text/StringsKt__IndentKt;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-static {p0, p1}, Lokio/Timeout;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_4
    const/4 v1, 0x6

    invoke-static {v6, p2, p1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->toAttributes$default(IZZLkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v0

    :goto_4
    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p2

    invoke-virtual {p2, p1, p0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p2

    invoke-virtual {p2, v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    invoke-virtual {v4}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p3

    invoke-virtual {p3, p1, p0, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getArrayType(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-virtual {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-static {p2, p0}, Lokio/Timeout;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0
.end method

.method public final transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 4

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaPrimitiveType;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaPrimitiveType;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;->reflectType:Ljava/lang/Class;

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    :goto_0
    check-cast v2, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getUnitType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    :goto_1
    const-string/jumbo p1, "{\n                val pr\u2026ns.unitType\n            }"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;

    iget-boolean v0, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->isForAnnotationParameter:Z

    if-nez v0, :cond_3

    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->howThisTypeIsUsed:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    move v3, v2

    :cond_3
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;->isRaw()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p0, p1, p2, v1}, Landroidx/work/WorkQuery;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_4
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->withFlexibility$enumunboxing$(I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Landroidx/work/WorkQuery;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->withFlexibility$enumunboxing$(I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Landroidx/work/WorkQuery;->computeSimpleJavaClassifierType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    if-nez p0, :cond_7

    :cond_6
    :goto_2
    invoke-static {p1}, Landroidx/work/WorkQuery;->transformJavaClassifierType$errorType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object p0

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-direct {p1, v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    move-object p0, p1

    goto :goto_3

    :cond_8
    invoke-static {v1, p0}, Lokio/Timeout;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    goto :goto_3

    :cond_9
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaArrayType;

    if-eqz v0, :cond_a

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaArrayType;

    invoke-virtual {p0, p1, p2, v3}, Landroidx/work/WorkQuery;->transformArrayType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaArrayType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    goto :goto_3

    :cond_a
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    if-eqz v0, :cond_b

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;->getBound$1()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaType;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1, p2}, Landroidx/work/WorkQuery;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    goto :goto_3

    :cond_b
    if-nez p1, :cond_d

    :cond_c
    check-cast v2, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-virtual {v2}, Lcom/airbnb/lottie/parser/DropShadowEffect;->getModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getDefaultBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
