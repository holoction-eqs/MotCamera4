.class public abstract Lcom/motorola/camera/device/callables/CameraCallable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBegin:J

.field public final mCallbackHandler:Ljava/lang/ref/WeakReference;

.field public final mCameraId:Ljava/lang/String;

.field public final mCameraListener:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraListener:Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCallbackHandler:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public static getCameraData()Lcom/motorola/camera/device/CameraHandlerThread$CameraData;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/device/CameraHandlerThread;

    iget-object v0, v0, Lcom/motorola/camera/device/CameraHandlerThread;->mCameraData:Lcom/motorola/camera/device/CameraHandlerThread$CameraData;

    return-object v0
.end method


# virtual methods
.method public abstract call()Lcom/motorola/camera/panorama/PanoCallableReturn;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public final postCallback(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CameraCallable;->mCallbackHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
