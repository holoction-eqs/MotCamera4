.class public final Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v2, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    new-instance v1, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AddOrRemoveAvailabilityListenerCallable"

    const-string v0, "CameraInfo is null"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onCameraUnavailable(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable$1;->this$0:Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
