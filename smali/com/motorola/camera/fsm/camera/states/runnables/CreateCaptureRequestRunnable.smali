.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;


# instance fields
.field public final mTemplate:I

.field public mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTemplate:I

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz p1, :cond_0

    move-object p2, p0

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;

    iget-object p3, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p3, p3, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v1, Lcom/motorola/camera/device/callables/CreateReprocCaptureRequestCallable;

    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-direct {v1, p2, p1, p0, p3}, Lcom/motorola/camera/device/callables/CreateReprocCaptureRequestCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object p3, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v0, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTemplate:I

    invoke-direct {v0, p1, v1, p0, p2}, Lcom/motorola/camera/device/callables/CreateCaptureRequestCallable;-><init>(Ljava/lang/String;ILcom/motorola/camera/device/callables/CreateCaptureRequestListener;Landroid/os/Handler;)V

    invoke-virtual {p3, v0}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureRequestRunnable;->mTotalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method
