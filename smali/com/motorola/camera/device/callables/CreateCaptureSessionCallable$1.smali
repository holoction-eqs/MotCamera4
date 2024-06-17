.class public final Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    const-string v0, "CreateCaptureSessionCallable"

    iget-object v1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    :try_start_0
    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CLOSE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v2

    iget-object v3, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v4

    if-eq v3, v4, :cond_1

    const-string p0, "onClosed received for camera device that is no longer valid!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/motorola/camera/device/callables/CloseSessionListener;->onSessionClose()V

    iput-object v3, v2, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCloseSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    :cond_2
    new-instance v2, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CameraInfo is null"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;Landroid/hardware/camera2/CameraCaptureSession;I)V

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object v1

    iput-object p1, v1, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CreateCaptureSessionCallable"

    const-string v3, "CameraInfo is null"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    :goto_0
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Landroidx/media3/extractor/VorbisUtil$Mode;

    if-eqz v1, :cond_8

    iget-boolean v1, v1, Landroidx/media3/extractor/VorbisUtil$Mode;->blockFlag:Z

    if-eqz v1, :cond_8

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v1, v1, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v1

    sget-object v4, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    iget-object v5, v0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object v1, v4

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v5, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    :cond_7
    :goto_3
    iget-object v5, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfPreviewConfig:Landroidx/media3/extractor/VorbisUtil$Mode;

    iget v6, v5, Landroidx/media3/extractor/VorbisUtil$Mode;->windowType:I

    iget v7, v5, Landroidx/media3/extractor/VorbisUtil$Mode;->transformType:I

    iget v8, v5, Landroidx/media3/extractor/VorbisUtil$Mode;->mapping:I

    invoke-static {v6, v7, v8, v1, v3}, Lcom/motorola/camera/mcf/Mcf;->openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V

    iget-object v1, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mMcfOnNotifyListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object v3, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/motorola/camera/mcf/Mcf;->setNotifyListener(Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v5, Landroidx/media3/extractor/VorbisUtil$Mode;->windowType:I

    iget v3, v5, Landroidx/media3/extractor/VorbisUtil$Mode;->transformType:I

    iget v5, v5, Landroidx/media3/extractor/VorbisUtil$Mode;->mapping:I

    invoke-static {v1, v3, v5, v4, v2}, Lcom/motorola/camera/mcf/Mcf;->openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V

    :cond_8
    new-instance v1, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;Landroid/hardware/camera2/CameraCaptureSession;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$1;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/camera/device/callables/StopRepeatingListener;->onStopRepeating()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mStopRepeatingListener:Lcom/motorola/camera/device/callables/StopRepeatingListener;

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/camera/device/callables/AbortCapturesListener;->onAbortCaptures()V

    iput-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mAbortCapturesListener:Lcom/motorola/camera/device/callables/AbortCapturesListener;
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CreateCaptureSessionCallable"

    const-string v0, "CameraInfo is null"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
