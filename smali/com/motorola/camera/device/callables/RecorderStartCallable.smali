.class public final Lcom/motorola/camera/device/callables/RecorderStartCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/callables/MediaStatusListener;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

    iget-object p0, p0, Lcom/motorola/camera/device/callables/RecorderStartCallable;->mStatusListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-direct {v1, p0}, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;-><init>(Lcom/motorola/camera/device/callables/MediaStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :try_start_0
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->MR_START:Lcom/motorola/camera/CameraKpi$KPI;

    if-eqz p0, :cond_0

    :try_start_1
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/camera/device/callables/CloseCameraCallable;->resetRecorder(Lcom/motorola/camera/device/CameraHandlerThread$CameraData;Z)V

    new-instance v0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-direct {v0, p0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecorderStartCallable"

    return-object p0
.end method
