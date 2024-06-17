.class public final Lcom/motorola/camera/fsm/camera/states/runnables/AddOrRemoveAvailabilityCallbackRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final mAdd:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AddOrRemoveAvailabilityCallbackRunnable;->mAdd:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

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

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AddOrRemoveAvailabilityCallbackRunnable;->mAdd:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {p1, p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/AddOrRemoveAvailabilityCallbackRunnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 2
    sget-object p3, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 3
    new-instance v0, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;

    .line 4
    iget-object v1, p3, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    .line 5
    check-cast v1, Landroid/os/Handler;

    .line 6
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/motorola/camera/device/callables/AddOrRemoveAvailabilityListenerCallable;-><init>(Lcom/motorola/camera/device/callables/CameraListener;Lcom/adobe/xmp/impl/xpath/XMPPath;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {p3, v0}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/AddOrRemoveAvailabilityCallbackRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
