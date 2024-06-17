.class public final Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/panorama/PanoListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/PanoShotStates;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 2

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v1, 0x7f1200db

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/panorama/PanoCameraInfo;

    invoke-direct {p1}, Lcom/motorola/camera/panorama/PanoCameraInfo;-><init>()V

    const/4 p3, 0x0

    .line 1
    invoke-static {p3}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 3
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mPreviewSize:Landroid/util/Size;

    .line 4
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    iput v0, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mCameraOrientation:I

    .line 6
    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 7
    iput v0, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDeviceOrientation:I

    .line 8
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 9
    iget v0, v0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    .line 10
    invoke-static {v0}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v0

    .line 11
    iput v0, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mDisplayRotation:I

    const-string v0, "YVU420_SEMIPLANAR"

    .line 12
    iput-object v0, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mImageFormat:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "FOCAL_LENGTH"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 14
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result v4

    .line 15
    invoke-static {p3}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 17
    invoke-static {p3}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object p3

    .line 18
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-static {v5, p3}, Lcom/motorola/camera/panorama/PanoHelper;->getAspect(FF)F

    move-result p3

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v0, p3

    mul-float/2addr v0, v4

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    div-float/2addr v3, p2

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v5

    const-wide v7, 0x4066800000000000L    # 180.0

    mul-double/2addr v1, v7

    double-to-float p3, v1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    div-double/2addr v0, v5

    mul-double/2addr v0, v7

    double-to-float p2, v0

    goto :goto_0

    :cond_0
    const p3, 0x428157a8

    const p2, 0x4223beab

    .line 19
    :goto_0
    iput p3, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleH:F

    iput p2, p1, Lcom/motorola/camera/panorama/PanoCameraInfo;->mViewAngleV:F

    .line 20
    sget-object p2, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    .line 21
    new-instance p3, Lcom/motorola/camera/panorama/PanoInitCallable;

    invoke-direct {p3, p1, p0}, Lcom/motorola/camera/panorama/PanoInitCallable;-><init>(Lcom/motorola/camera/panorama/PanoCameraInfo;Lcom/motorola/camera/panorama/PanoListener;)V

    invoke-virtual {p2, p3}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 23
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    .line 24
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mCaptureTone:Landroid/media/MediaActionSound;

    .line 25
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/PanoShotStates;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->mCaptureTone:Landroid/media/MediaActionSound;

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoInitRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
