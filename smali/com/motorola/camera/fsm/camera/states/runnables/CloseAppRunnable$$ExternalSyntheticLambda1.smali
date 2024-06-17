.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    return-void
.end method


# virtual methods
.method public final onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object p2

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCancelled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession$enumunboxing$(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen$enumunboxing$(Ljava/lang/String;)I

    move-result p1

    if-ne v1, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCancelled:Z

    :cond_1
    return-void
.end method
