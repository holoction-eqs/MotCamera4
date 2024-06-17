.class public final Lcom/motorola/camera/device/callables/OpenCameraCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mIgnoreCallbacks:Z

.field public final mOpenCameraListener:Lcom/airbnb/lottie/model/MutablePair;

.field public final mStateListener:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/airbnb/lottie/model/MutablePair;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    new-instance p1, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;-><init>(Lcom/motorola/camera/device/callables/OpenCameraCallable;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    iput-object p3, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mOpenCameraListener:Lcom/airbnb/lottie/model/MutablePair;

    iput-object p5, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 12

    const-string v0, "OpenCameraCallable"

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v2
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    iget-object v2, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v3}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v4, "device_policy"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v0, Lcom/motorola/camera/device/exception/CameraDisabledException;

    invoke-direct {v0}, Lcom/motorola/camera/device/exception/CameraDisabledException;-><init>()V

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "openCamera:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "name"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->HAL_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    const/4 v2, 0x0

    const/16 v4, 0x19

    move v5, v2

    move v6, v4

    :cond_3
    :goto_0
    const/4 v7, 0x1

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v9, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mStateListener:Lcom/motorola/camera/device/callables/OpenCameraCallable$1;

    iget-object v10, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1, v9, v10}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v3}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception v8

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_7

    :cond_4
    const-wide/16 v9, 0xc8

    :try_start_2
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v9, v9, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    if-lez v9, :cond_5

    move v9, v7

    goto :goto_1

    :cond_5
    move v9, v2

    :goto_1
    if-nez v9, :cond_6

    add-int/lit8 v6, v6, -0x1

    if-gtz v6, :cond_4

    :cond_6
    if-gtz v6, :cond_3

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterruptedException: while opening camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0

    :cond_7
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :catch_2
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "activity state:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v10, v10, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    iput-boolean v7, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_8
    iput-boolean v2, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v9, "com.android.systemui.camera_launch_source"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v2

    move v9, v5

    :goto_2
    if-ge v5, v4, :cond_b

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v9, v9, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    const-wide/16 v10, 0x14

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    move v9, v2

    :cond_b
    :goto_4
    if-nez v9, :cond_c

    iput-boolean v7, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v8}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_c
    move v5, v7

    goto/16 :goto_0

    :catch_4
    move-exception p0

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenCameraCallable"

    return-object p0
.end method
