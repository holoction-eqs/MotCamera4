.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->initialize(Lcom/motorola/camera/CameraApp;)V

    sput-boolean v2, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v0}, Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;-><init>(IZLjava/util/concurrent/Executor;)V

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v3

    const-class v4, Lcom/google/mlkit/vision/barcode/internal/zze;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mlkit/vision/barcode/internal/zze;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    iget-object v5, v3, Lcom/google/mlkit/vision/barcode/internal/zze;->zza:Lcom/google/mlkit/vision/barcode/internal/zzf;

    invoke-virtual {v5, v1}, Landroidx/transition/ViewOverlayApi14;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/barcode/internal/zzi;

    iget-object v3, v3, Lcom/google/mlkit/vision/barcode/internal/zze;->zzb:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget-object v0, v3, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->zza:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    :goto_1
    invoke-static {}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzf()Z

    move-result v3

    if-eq v2, v3, :cond_2

    const-string v2, "play-services-mlkit-barcode-scanning"

    goto :goto_2

    :cond_2
    const-string v2, "barcode-scanning"

    :goto_2
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    move-result-object v2

    invoke-direct {v4, v1, v5, v0, v2}, Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;-><init>(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzi;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V

    iput-object v4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/BarcodeScanner;->close()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
