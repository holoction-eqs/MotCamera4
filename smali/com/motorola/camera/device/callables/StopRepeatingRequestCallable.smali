.class public final Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/device/callables/StopRepeatingRequestCallable;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    if-eqz p0, :cond_0

    iput-object p0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    :cond_0
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Lcom/motorola/camera/device/exception/CameraNotOpenException;-><init>()V

    throw p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "StopRepeatingRequestCallable"

    return-object p0
.end method
