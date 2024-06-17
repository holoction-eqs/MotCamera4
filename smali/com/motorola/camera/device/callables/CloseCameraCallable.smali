.class public final Lcom/motorola/camera/device/callables/CloseCameraCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mResetPlayer:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-boolean p4, p0, Lcom/motorola/camera/device/callables/CloseCameraCallable;->mResetPlayer:Z

    return-void
.end method

.method public static resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAudioHDRSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/device/callables/RecorderPrepareCallable;->setDefaultHDRParameters()V

    :cond_0
    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->MR_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    iput-object v1, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    iget-boolean v2, p0, Lcom/motorola/camera/device/callables/CloseCameraCallable;->mResetPlayer:Z

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/motorola/camera/device/callables/MediaPlayerCallable;->resetPlayer(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    move-result-object p0

    iget-object v0, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z
    :try_end_0
    .catch Lcom/motorola/camera/device/exception/CameraInfoNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/camera/device/exception/CameraNotOpenException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_RELEASE:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_2
    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {p0, v2}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    invoke-direct {p0}, Lcom/motorola/camera/device/exception/CameraNotOpenException;-><init>()V

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

    const-string p0, "CloseCameraCallable"

    return-object p0
.end method
