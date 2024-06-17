.class public Lcom/google/mlkit/common/internal/CommonComponentRegistrar;
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
    .locals 13

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->COMPONENT:Lcom/google/firebase/components/Component;

    const-class p0, Lcom/google/mlkit/common/sdkinternal/model/ModelFileHelper;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object p0

    new-instance v1, Lcom/google/firebase/components/Dependency;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-class v4, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object v1, Lkotlin/UNINITIALIZED_VALUE;->zza$3:Lkotlin/UNINITIALIZED_VALUE;

    iput-object v1, p0, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v1

    const-class p0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-static {p0}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v5

    sget-object v6, Lkotlin/UInt$Companion;->zza:Lkotlin/UInt$Companion;

    iput-object v6, v5, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v5

    const-class v6, Lcom/google/common/base/Joiner;

    invoke-static {v6}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/components/Dependency;

    const/4 v8, 0x2

    const-class v9, Lcom/google/mlkit/common/model/RemoteModelManager$RemoteModelManagerRegistration;

    invoke-direct {v7, v8, v3, v9}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v6, v7}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object v7, Lcom/airbnb/lottie/parser/PathParser;->zza$2:Lcom/airbnb/lottie/parser/PathParser;

    iput-object v7, v6, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v6

    const-class v7, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-static {v7}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v7

    new-instance v8, Lcom/google/firebase/components/Dependency;

    invoke-direct {v8, v2, v2, p0}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v7, v8}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object p0, Lcom/google/mlkit/common/internal/zzd;->zza:Lcom/google/mlkit/common/internal/zzd;

    iput-object p0, v7, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object p0

    const-class v7, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-static {v7}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v8

    sget-object v10, Lcom/google/mlkit/common/internal/zze;->zza:Lcom/google/mlkit/common/internal/zze;

    iput-object v10, v8, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v8

    const-class v10, Lcom/google/common/base/Splitter$1;

    invoke-static {v10}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v10

    new-instance v11, Lcom/google/firebase/components/Dependency;

    invoke-direct {v11, v2, v3, v7}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v10, v11}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object v7, Lcom/google/mlkit/common/internal/zzf;->zza:Lcom/google/mlkit/common/internal/zzf;

    iput-object v7, v10, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v7

    const-class v10, Landroidx/work/impl/StartStopTokens;

    invoke-static {v10}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v11

    new-instance v12, Lcom/google/firebase/components/Dependency;

    invoke-direct {v12, v2, v3, v4}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v11, v12}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object v3, Lcom/google/mlkit/common/internal/zzg;->zza:Lcom/google/mlkit/common/internal/zzg;

    iput-object v3, v11, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v11

    invoke-static {v9}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v3

    iput v2, v3, Lcom/google/firebase/components/Component$Builder;->type:I

    new-instance v4, Lcom/google/firebase/components/Dependency;

    invoke-direct {v4, v2, v2, v10}, Lcom/google/firebase/components/Dependency;-><init>(IILjava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)V

    sget-object v2, Lcom/google/mlkit/common/internal/zzh;->zza:Lcom/google/mlkit/common/internal/zzh;

    iput-object v2, v3, Lcom/google/firebase/components/Component$Builder;->factory:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v9

    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzar;->zza:Lcom/google/android/gms/internal/mlkit_common/zzap;

    move-object v2, v5

    move-object v3, v6

    move-object v4, p0

    move-object v5, v8

    move-object v6, v7

    move-object v7, v11

    move-object v8, v9

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {v0, p0}, Lokio/SegmentPool;->zza(I[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzax;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_common/zzax;-><init>(I[Ljava/lang/Object;)V

    return-object v1
.end method
