.class public final synthetic Lcom/google/mlkit/vision/common/internal/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

.field public final synthetic zzb:Lcom/google/mlkit/vision/common/InputImage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/common/internal/zza;->zza:Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

    iput-object p2, p0, Lcom/google/mlkit/vision/common/internal/zza;->zzb:Lcom/google/mlkit/vision/common/InputImage;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/vision/common/internal/zza;->zzb:Lcom/google/mlkit/vision/common/InputImage;

    iget-object p0, p0, Lcom/google/mlkit/vision/common/internal/zza;->zza:Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->zza:Ljava/util/HashMap;

    invoke-static {}, Landroidx/work/InputMergerFactory$1;->zza$1()V

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzmv;->$r8$clinit:I

    invoke-static {}, Landroidx/work/InputMergerFactory$1;->zza$1()V

    const-string v2, ""

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlv;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzlv;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->zza:Ljava/util/HashMap;

    const-string v3, "detectorTaskWithResource#run"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->zzb()V

    :try_start_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {p0, v0}, Landroidx/room/EntityInsertionAdapter;->run(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlx;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_2
    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    throw p0
.end method
