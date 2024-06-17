.class public Lcom/google/mlkit/vision/common/internal/VisionCommonRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 4

    const-class p0, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/components/Dependency;

    const-class v1, Lcom/google/mlkit/vision/common/internal/MultiFlavorDetectorCreator$Registration;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object v0, Lcom/google/mlkit/vision/common/internal/zzf;->zza:Lcom/google/mlkit/vision/common/internal/zzf;

    iput-object v0, p0, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    :goto_0
    const/4 v0, 0x1

    if-ge v3, v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzn;

    aget-object v0, p0, v3

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "at index "

    invoke-static {v0, v3}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzn;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzu;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method
