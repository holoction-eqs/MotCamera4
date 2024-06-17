.class public final Lcom/motorola/camera/device/callables/OpenCameraCallable$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/OpenCameraCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearCameraInfo(Ljava/lang/String;Z)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OpenCameraCallable"

    const-string p1, "Failed to clear camera info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v1, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    if-eqz v1, :cond_0

    const-string p0, "OpenCameraCallable"

    const-string p1, "onClosed, ignoring callback due to CameraAccessException"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->clearCameraInfo(Ljava/lang/String;Z)V

    new-instance v1, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/OpenCameraCallable$1;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v1, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    if-eqz v1, :cond_0

    const-string p0, "OpenCameraCallable"

    const-string p1, "onDisconnected, ignoring callback due to CameraAccessException"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->clearCameraInfo(Ljava/lang/String;Z)V

    new-instance v1, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/OpenCameraCallable$1;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v1, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    if-eqz v1, :cond_0

    const-string p0, "OpenCameraCallable"

    const-string p1, "onError, ignoring callback due to CameraAccessException"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->clearCameraInfo(Ljava/lang/String;Z)V

    new-instance v1, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/device/callables/OpenCameraCallable$1;->this$0:Lcom/motorola/camera/device/callables/OpenCameraCallable;

    iget-boolean v1, v0, Lcom/motorola/camera/device/callables/OpenCameraCallable;->mIgnoreCallbacks:Z

    const-string v2, "OpenCameraCallable"

    if-eqz v1, :cond_0

    const-string p0, "onOpened, ignoring callback due to CameraAccessException"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v1

    iput-object p1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "CameraInfo is null"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance p1, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;

    const/4 v8, 0x2

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
