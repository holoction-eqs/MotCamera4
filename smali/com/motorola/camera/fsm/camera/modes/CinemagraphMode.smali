.class public final Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "SourceFile"


# instance fields
.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public mSubPreviewImageReader:Landroid/media/ImageReader;


# virtual methods
.method public final getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public final getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 2

    new-instance p0, Lcom/motorola/camera/StreamRequest;

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize$AspectRatio;->getTrueAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object p0
.end method

.method public final getSubPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public final onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mPreviewImageReader:Landroid/media/ImageReader;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public final onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 1

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p2, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v8, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lkotlin/UNINITIALIZED_VALUE;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v9, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    const/16 v5, 0x23

    move-object v0, v11

    move-object v1, v6

    move-object v2, v8

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v3, 0x23

    invoke-static {v7, v3, v1, v0, v8}, Lkotlin/UNINITIALIZED_VALUE;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/CinemagraphMode;->mSubPreviewImageReader:Landroid/media/ImageReader;

    new-instance v8, Lcom/motorola/camera/fsm/camera/Trigger;

    new-instance v9, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    const/16 v11, 0x23

    move-object v0, v9

    move-object v1, v6

    move-object v5, v7

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v8, v10, v9, v12}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_1
    iput-boolean v12, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public final onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result v0

    div-float/2addr p1, v0

    invoke-static {p1, p0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 0

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object p3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public final onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 1

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    return-void
.end method

.method public final onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v2, v0, v1, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    return-void
.end method
