.class public final Lcom/motorola/camera/device/callables/CaptureRequestCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mCameraServiceHandler:Landroid/os/Handler;

.field public final mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

.field public final mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

.field public final mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p3, p6}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    new-instance p1, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;-><init>(Lcom/motorola/camera/device/callables/CameraCallable;I)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    iput-object p4, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p5, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    const-string v1, "Null surface detected, id="

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v2

    iget-object v3, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    const-string v2, "surfaces:"

    sget-object v4, Lcom/motorola/camera/Util;->GET_TARGETS_MTD:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v5, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    if-eqz v4, :cond_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    :try_start_2
    const-string v4, "Surface"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureRequestListener:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCaptureListener:Lcom/motorola/camera/device/callables/CaptureRequestCallable$1;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CaptureRequestCallable;->mCameraServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v1}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Lcom/motorola/camera/device/exception/CameraNotOpenException;-><init>()V

    throw p0
    :try_end_2
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptureRequestCallable"

    return-object p0
.end method
