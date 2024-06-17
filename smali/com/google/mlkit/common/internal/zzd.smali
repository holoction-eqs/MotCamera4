.class public final synthetic Lcom/google/mlkit/common/internal/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;
.implements Lcom/google/android/datatransport/Transformer;
.implements Lcom/google/firebase/components/ComponentFactory;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;


# static fields
.field public static final INSTANCE:Lcom/google/mlkit/common/internal/zzd;

.field public static final INSTANCE$1:Lcom/google/mlkit/common/internal/zzd;

.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zzd;

.field public static final synthetic zza$1:Lcom/google/mlkit/common/internal/zzd;

.field public static final synthetic zza$2:Lcom/google/mlkit/common/internal/zzd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zzd;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzd;->INSTANCE:Lcom/google/mlkit/common/internal/zzd;

    new-instance v0, Lcom/google/mlkit/common/internal/zzd;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzd;->zza$1:Lcom/google/mlkit/common/internal/zzd;

    new-instance v0, Lcom/google/mlkit/common/internal/zzd;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzd;->zza:Lcom/google/mlkit/common/internal/zzd;

    new-instance v0, Lcom/google/mlkit/common/internal/zzd;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzd;->zza$2:Lcom/google/mlkit/common/internal/zzd;

    new-instance v0, Lcom/google/mlkit/common/internal/zzd;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zzd;->INSTANCE$1:Lcom/google/mlkit/common/internal/zzd;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method

.method public create(Lcom/google/firebase/components/RestrictedComponentContainer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    const-class v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-virtual {p1, v0}, Lcom/google/firebase/components/RestrictedComponentContainer;->getProvider(Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;-><init>(Lcom/google/firebase/inject/Provider;)V

    return-object p0
.end method

.method public getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope;->$r8$clinit:I

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "it.typeConstructor.supertypes"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Landroidx/core/view/ViewGroupKt$children$1;

    move-result-object p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1$1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance p1, Lkotlin/collections/IndexingIterable;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lkotlin/collections/IndexingIterable;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    sget-object p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzb:Lcom/motorola/camera/CameraKpi;

    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error preloading model resource"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileVisionBase"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/airbnb/lottie/parser/JsonUtils;->valueFromObject(Lcom/airbnb/lottie/parser/moshi/JsonReader;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
