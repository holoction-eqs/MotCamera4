.class public final Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable$PanoSetRepeatingRequestListener;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable$PanoSetRepeatingRequestListener;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final processCaptureCompleted(Landroid/hardware/camera2/CaptureResult;)V
    .locals 10

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable$PanoSetRepeatingRequestListener;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    new-array v2, v1, [Landroid/graphics/Rect;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    and-int/lit8 v7, v7, -0x2

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    and-int/lit8 v8, v8, -0x2

    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    and-int/lit8 v9, v9, -0x2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    and-int/lit8 v5, v5, -0x2

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_1
    const-string p1, "PANO_FACE_RECT"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2
    return-void
.end method

.method public final processCaptureFailed()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable$PanoSetRepeatingRequestListener;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    return-void
.end method
