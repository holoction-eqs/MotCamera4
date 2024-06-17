.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic val$cameraListener:Lcom/motorola/camera/device/callables/CameraListener;

.field public final synthetic val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$cameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJobsCancelled()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$closeSessionListener:Lcom/motorola/camera/device/callables/CloseSessionListener;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$cameraListener:Lcom/motorola/camera/device/callables/CameraListener;

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllCameraSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CloseSessionListener;Lcom/motorola/camera/device/callables/CameraListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;->val$mcfStateMachine:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
