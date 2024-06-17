.class public final Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/parser/DropShadowEffect;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CloseCaptureSessionCallable;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz p0, :cond_0

    iput-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    :cond_0
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    const-string v1, "closing capture session"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_1
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CLOSE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    iget-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    :try_start_1
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/device/exception/CameraNotOpenException;-><init>(I)V

    throw p0
    :try_end_1
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CloseCaptureSessionCallable"

    return-object p0
.end method
