.class public final Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CallableListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 8

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;

    const/4 v0, 0x0

    invoke-direct {v4, v3, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$SetRepeatingRequestListenerExt;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object p0, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v7, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;

    iget-object v0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/Handler;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/device/callables/SetRepeatingBurstCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus$enumunboxing$(Ljava/lang/String;I)V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
