.class public final Lcom/motorola/camera/device/callables/RecorderPauseCallable;
.super Lcom/motorola/camera/device/callables/CameraCallable;
.source "SourceFile"


# instance fields
.field public final mPause:Z


# direct methods
.method public constructor <init>(ZLcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/camera/device/callables/CameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iput-boolean p1, p0, Lcom/motorola/camera/device/callables/RecorderPauseCallable;->mPause:Z

    return-void
.end method


# virtual methods
.method public final call()Lcom/motorola/camera/panorama/PanoCallableReturn;
    .locals 2

    invoke-static {}, Lcom/motorola/camera/device/callables/CameraCallable;->getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread$CameraData;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    new-instance p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called after reset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/motorola/camera/panorama/PanoCallableReturn;-><init>(Ljava/lang/Exception;)V

    return-object p0

    :cond_0
    :try_start_0
    iget-boolean p0, p0, Lcom/motorola/camera/device/callables/RecorderPauseCallable;->mPause:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

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

    const-string p0, "RecorderPauseCallable"

    return-object p0
.end method
