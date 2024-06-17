.class public Lcom/motorola/camera/fsm/camera/modes/VideoMode;
.super Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
.source "SourceFile"


# static fields
.field public static mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;


# instance fields
.field public final envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

.field public final mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

.field public mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public mHolder:Landroidx/work/impl/StartStopTokens;

.field public mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public final mRecorderPrepareListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

.field public mVideoSizeLimited:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mRecorderPrepareListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    return-void
.end method

.method public static clearSessionData(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    iput-object v1, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SURFACE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    :cond_3
    return-void
.end method

.method public static isDNDPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_REQUEST_DND_PERMISSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setBuilder(ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v2, 0x1

    if-ne v2, p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    :cond_1
    :goto_0
    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v1

    const-string v4, "ORIENTATION"

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    sget v6, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p0, v3, :cond_3

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    sget v3, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthModeInBackMainCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->SINGLE_CAM_RTB_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-boolean v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mIsMaster:Z

    if-eqz v1, :cond_5

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_5
    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabSmartEis(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEisMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setPreviewEisInVideo(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setVideoFlip(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1, v0, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setFps(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_ISO_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v4, 0x0

    invoke-virtual {v1, p3, v0, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_EXP_PRI_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1, p3, v0, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoNightVision(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoFocusTrackingEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p3, v0, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabIhc(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    if-ne v2, p0, :cond_6

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0, v3, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkHintForCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    :cond_6
    return-void
.end method

.method public static setFps(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 4

    iget-object v0, p3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v1, p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/VideoFormat;

    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->getMtkAvailableSmvrModes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/MtkAvailableSmvrModeData;

    iget-object v1, p3, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mVideoSize:Landroid/util/Size;

    iget-object v2, p0, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p3, p3, Lcom/motorola/camera/MtkAvailableSmvrModeData;->mMaxFps:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, v1, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget-object p1, p3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object p0

    array-length p1, p0

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_3

    aget-object v1, p0, p3

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setVideoFlip(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 3

    iget v0, p2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_VIDEO_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_VIDEO_FLIP_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, p1, v2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    iput-boolean v1, p2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final getPreviewImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSessionStreamRequest()Lcom/motorola/camera/StreamRequest;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getMediaRecorderDataForCurrentMode()Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    new-instance v0, Lcom/motorola/camera/StreamRequest;

    invoke-static {p0}, Lkotlin/collections/ArraysUtilJVM;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/StreamRequest;-><init>(FLandroid/util/Size;)V

    return-object v0
.end method

.method public final isPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->isDNDPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isNotificationPermissionRequired()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/utility/ImageReaderWrapper;->close()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_2
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->clearSessionData(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void
.end method

.method public final onCreateCaptureRequests(Ljava/util/ArrayList;Z)V
    .locals 2

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x5

    invoke-direct {p0, v0, v1, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/motorola/camera/fsm/RequestWrapper;

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0, p2}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onCreateSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VideoMode"

    const-string v3, "Storage space is too low, video recording may not work properly"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/motorola/camera/fsm/camera/record/VideoCaptureRecord;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getMediaRecorderDataForCurrentMode()Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    move-result-object v3

    iget v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    iput v5, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    iput-object v5, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-static {}, Lcom/motorola/camera/storage/StorageUtils;->getMediaRecorderMaxFileSize()J

    move-result-wide v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewProcessingNeeded()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v14, v7

    check-cast v14, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static {v14, v7, v9}, Lkotlin/UNINITIALIZED_VALUE;->newDelayPreviewImageReader(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;Landroid/os/Handler;)Landroid/media/ImageReader;

    move-result-object v7

    iput-object v7, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v13, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v11

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    const/16 v17, 0x23

    move-object v9, v13

    move-object/from16 v18, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v2

    move-object v2, v15

    move/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    move-object/from16 v9, v18

    invoke-direct {v7, v2, v9, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_1
    move-object/from16 v16, v2

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    sget-object v23, Lcom/motorola/camera/mcf/McfInputStream$StreamType;->FULL_PRIMARY:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/motorola/camera/settings/SettingsManager;->getCameraSensorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Landroid/util/Size;

    sget-object v24, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->YUV_420_888:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    invoke-static {v7, v2, v7}, Lcom/motorola/camera/JsonConfig;->getBufferCnt(ILcom/motorola/camera/settings/CameraType;I)I

    move-result v21

    sget-object v25, Lcom/motorola/camera/mcf/McfInputStream$StreamMode;->NORMAL:Lcom/motorola/camera/mcf/McfInputStream$StreamMode;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v19

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v20

    const/16 v22, 0x0

    invoke-static/range {v17 .. v25}, Lcom/motorola/camera/mcf/Mcf;->createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/CaptureIntent;->mExtras:Landroid/os/Bundle;

    const-string v9, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v2, v9, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_3
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v8

    :goto_1
    iput-wide v5, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    iput v2, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    iput v2, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    :cond_5
    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "SURFACE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_7
    iput-object v2, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    const-string v2, "RECORDER_DATA"

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_CREATE_FD:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v2, :cond_8

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_8
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/motorola/camera/storage/StorageUtils;->createFileDescriptorWithFallback(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/io/FileDescriptor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_9

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_9
    new-instance v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    new-instance v4, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v4}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    move-object/from16 v6, v16

    invoke-direct {v2, v6, v3, v4}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    new-instance v4, Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-direct {v4, v2}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Landroidx/work/impl/StartStopTokens;

    if-nez v2, :cond_a

    new-instance v2, Landroidx/work/impl/StartStopTokens;

    invoke-direct {v2, v1, v3}, Landroidx/work/impl/StartStopTokens;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mHolder:Landroidx/work/impl/StartStopTokens;

    :cond_a
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v6, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mRecorderPrepareListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;

    invoke-direct {v6, v3, v5, v9, v2}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;-><init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;Ljava/io/FileDescriptor;Lcom/motorola/camera/fsm/camera/modes/VideoMode$1;Landroid/os/Handler;)V

    invoke-virtual {v4, v6}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    iget-object v2, v3, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/VideoHelper;->getSnapshotSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/16 v3, 0x100

    invoke-static {v13, v3, v7, v2, v11}, Lkotlin/UNINITIALIZED_VALUE;->newImageReaderWrapper(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Lcom/motorola/camera/utility/ImageReaderWrapper;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    new-instance v3, Landroidx/work/Configuration$Builder;

    invoke-direct {v3, v10}, Landroidx/work/Configuration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBgHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/utility/ImageReaderWrapper;->setOnImageAvailableListener(Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;Landroid/os/Handler;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mJpegImageReader:Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v5, v5, Lcom/motorola/camera/utility/ImageReaderWrapper;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v12

    const/16 v14, 0x100

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;I)V

    invoke-direct {v2, v3, v4, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_b
    iput-boolean v8, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_c
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v3, v2, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final onSetup(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_ROI_RECT:Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "USE_CASE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/UseCase;

    const-string v4, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v4, v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v3, v2}, Lcom/motorola/camera/settings/SettingsManager;->restoreVstabPersistValue(ZZ)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMacroCameraWithWide(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getZoomForMacroCameraWithWide()F

    move-result v0

    div-float/2addr v1, v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ZoomHelper;->updateZoomToSettings(FLcom/motorola/camera/settings/CameraType;)Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SCALAR_CROP_DEFAULT:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->getFormatForMode(I)Lcom/motorola/camera/VideoFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mVideoSizeLimited:Z

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_LOW_LIGHT_LUX:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    move v3, v2

    :cond_3
    if-eqz v3, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onSetupCaptureRequest(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/ShotType;)V
    .locals 8

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne v0, v6, :cond_1

    iget-object p3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    iget-object v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    invoke-static {p1, p2, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEisMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setPreviewEisInVideo(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v1, v0, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setVideoFlip(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v1, v0, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object v1, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v1, v0, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setFps(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthModeInBackMainCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->SINGLE_CAM_RTB_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p1, p0, v0, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    if-ne v0, p3, :cond_5

    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne v0, p0, :cond_5

    iget-object p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "SEQ_ID"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v3

    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_SNAPSHOT_WITH_ALL_SURFACES:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p1, p2, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_2
    sget-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {p1, p2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->addTarget(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {p3, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegThumbnailSize()Landroid/util/Size;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGeoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {p0, v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEdgeMode(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p0, v0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setNoiseReduction(IILandroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZoom(Lcom/motorola/camera/settings/CameraType;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p1, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFaceStatisticReporting(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {p3, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRoi(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p3, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {p3, p1}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setFlashByTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoStabilization(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabSmartEis(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setEisMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setPreviewEisInVideo(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsMotCamera(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setTintless(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p3, p1, p0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsLidClosed(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setIsProMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result v0

    invoke-static {p0, p3, v0}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRingFlash(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setControlAppRtb(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthModeInBackMainCamera()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->SINGLE_CAM_RTB_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p3, v4}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMultiCameraFeatureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoMacro(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoNightVision(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoFocusTrackingEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0, p3, v5}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    invoke-static {p1, p0, p3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setStillFlip(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-ne v0, p3, :cond_6

    iget p3, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    if-ne p3, v6, :cond_6

    iget-object p3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setBuilder(ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onSetupStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 3

    iget v0, p2, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const-string v0, "RECORDER_DATA"

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    :goto_0
    invoke-static {v1, p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->setBuilder(ILcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/RequestWrapper;Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V

    :goto_1
    return-void
.end method

.method public onSurfaceKeysRequired()Ljava/util/ArrayList;
    .locals 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;-><init>(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final onTeardown(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFeatureLimiterListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda8;

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->envListener:Lcom/motorola/camera/fsm/camera/modes/VideoMode$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    return-void
.end method

.method public final setupPermissionsRequest(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->isDNDPermissionRequired(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isNotificationPermissionRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    :goto_0
    const-string v1, "perm_request_code"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    new-instance v0, Lcom/motorola/camera/PermissionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/PermissionCallback;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    iput-object v0, p0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    return-void
.end method
