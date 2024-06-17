.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(IJLcom/google/mlkit/vision/common/InputImage;Lcom/motorola/camera/detector/MLKitBarcodeDetector;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$2:I

    iput-wide p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method

.method public synthetic constructor <init>(ILcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;JLandroid/os/Bundle;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$2:I

    iput-object p2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$3:J

    iput-object p5, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;

    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/google/mlkit/vision/common/InputImage;

    iget v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$2:I

    iget-wide v7, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$3:J

    iget-object p0, v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->mScanner:Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;

    if-eqz p0, :cond_2

    monitor-enter p0

    :try_start_0
    const-string v1, "InputImage can not be null"

    invoke-static {v5, v1}, Landroidx/room/util/DBUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "This detector is already closed!"

    const/16 v4, 0xe

    invoke-direct {v1, v3, v4}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget v1, v5, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    iget v1, v5, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzd:Landroidx/room/EntityInsertionAdapter;

    iget-object v3, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zzf:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/mlkit/vision/common/internal/zza;

    invoke-direct {v4, p0, v5}, Lcom/google/mlkit/vision/common/internal/zza;-><init>(Lcom/google/mlkit/vision/barcode/internal/BarcodeScannerImpl;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v6, p0, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->zze:Lcom/google/android/gms/tasks/zza;

    iget-object v6, v6, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/tasks/zza;

    invoke-virtual {v1, v3, v4, v6}, Landroidx/collection/MapCollections;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zza;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "InputImage width and height should be at least 32!"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    :goto_0
    new-instance v3, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v3

    :goto_1
    monitor-exit p0

    new-instance p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-wide v3, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda2;-><init>(IJLcom/google/mlkit/vision/common/InputImage;Lcom/motorola/camera/detector/MLKitBarcodeDetector;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v9, v1, p0}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    new-instance p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v9, v1, p0}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    new-instance p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;

    invoke-direct {p0, v0, v7, v8}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/detector/MLKitBarcodeDetector;J)V

    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object p0, v9, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v9}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :goto_2
    return-void

    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    iget-object v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    sget-object v2, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->Companion:Lcom/google/android/gms/dynamite/zzo;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$errorBundle"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$2:I

    iget-wide v2, p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda1;->f$3:J

    iget-object p0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->listener:Lcom/google/common/base/Joiner;

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object v1, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/base/Joiner;JI)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_4
    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/base/Joiner;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
