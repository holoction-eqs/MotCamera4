.class public final Lcom/google/mlkit/vision/barcode/internal/zzi;
.super Landroidx/room/EntityInsertionAdapter;
.source "SourceFile"


# static fields
.field public static zza:Z = true


# instance fields
.field public final zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

.field public final zzf:Lcom/motorola/camera/device/CameraService;

.field public final zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

.field public zzh:Z


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzj;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;)V
    .locals 1

    invoke-direct {p0}, Landroidx/room/EntityInsertionAdapter;-><init>()V

    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/device/CameraService;

    invoke-direct {p2, p1}, Lcom/motorola/camera/device/CameraService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/motorola/camera/device/CameraService;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "MlKitContext can not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final declared-synchronized load()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-interface {v0}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    new-instance v1, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-direct {v1}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>()V

    iget-boolean v2, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznc;

    :goto_0
    iput-object v2, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    new-instance v2, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {v2}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>()V

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-static {v3}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object v3

    iput-object v3, v2, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznt;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    iput-object v3, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    new-instance v2, Lcom/adobe/xmp/impl/ByteBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/adobe/xmp/impl/ByteBuffer;-><init>(Lcom/airbnb/lottie/manager/FontAssetManager;I)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zze(Lcom/adobe/xmp/impl/ByteBuffer;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/ArrayList;

    move-result-object v8

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_2
    iget v0, v8, Lcom/google/mlkit/common/MlKitException;->zza:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzV:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;

    :goto_0
    move-object v1, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, v6

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    invoke-direct {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;

    invoke-direct {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;-><init>()V

    if-eqz p5, :cond_2

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/barcode/common/Barcode;

    invoke-virtual {v2}, Lcom/google/mlkit/vision/barcode/common/Barcode;->getFormat()I

    move-result v3

    sget-object v4, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznp;

    :cond_0
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    check-cast v2, Lcom/google/mlkit/vision/barcode/internal/zzk;

    iget v3, v2, Lcom/google/mlkit/vision/barcode/internal/zzk;->$r8$classId:I

    iget-object v2, v2, Lcom/google/mlkit/vision/barcode/internal/zzk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;

    iget v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsm;->zzf:I

    goto :goto_2

    :goto_1
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iget v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzd:I

    :goto_2
    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zznq;

    :cond_1
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v12, v1, p2

    new-instance v14, Lcom/google/mlkit/vision/barcode/internal/zzg;

    move-object v1, v14

    move-object/from16 v2, p0

    move-wide v3, v12

    move-object/from16 v5, p1

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/mlkit/vision/barcode/internal/zzg;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzi;JLcom/google/android/gms/internal/mlkit_vision_barcode/zznd;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrk;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzne;)V

    new-instance v1, Lcom/airbnb/lottie/parser/DropShadowEffect;

    invoke-direct {v1}, Lcom/airbnb/lottie/parser/DropShadowEffect;-><init>()V

    iput-object v9, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->color:Ljava/lang/Object;

    sget-boolean v2, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->opacity:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqv;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->direction:Ljava/lang/Object;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->distance:Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzca;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/parser/DropShadowEffect;->radius:Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;-><init>(Lcom/airbnb/lottie/parser/DropShadowEffect;)V

    new-instance v8, Lcom/google/common/base/Joiner;

    const/16 v1, 0x12

    invoke-direct {v8, v0, v1}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/Object;I)V

    iget-object v4, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza:Ljava/lang/Object;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;

    move-object v3, v2

    move-wide v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzri;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrl;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdz;JLcom/google/common/base/Joiner;)V

    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    iget-boolean v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzh:Z

    sub-long v18, v20, v12

    iget-object v2, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzf:Lcom/motorola/camera/device/CameraService;

    const/4 v0, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5eed

    goto :goto_3

    :cond_3
    const/16 v1, 0x5eee

    :goto_3
    move v15, v1

    iget v1, v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zznd;->zzX:I

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v2, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, v2, Lcom/motorola/camera/device/CameraService;->mCameraStateManager:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    sub-long v5, v3, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1e

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v5, v2, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    new-instance v6, Lcom/google/android/gms/common/internal/TelemetryData;

    new-array v0, v0, [Lcom/google/android/gms/common/internal/MethodInvocation;

    new-instance v7, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    move-object v14, v7

    move/from16 v16, v1

    invoke-direct/range {v14 .. v25}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v1, v0}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    check-cast v5, Lcom/google/android/gms/common/internal/service/zao;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/internal/service/zao;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v3, v4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Ljava/lang/Object;IJ)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
