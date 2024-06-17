.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

.field public final val$cameraId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->-$$Nest$mprocessAutoFocusChanges(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    :goto_0
    return-void

    :goto_1
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_1

    check-cast v1, Lcom/motorola/camera/CameraKpi;

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->-$$Nest$mprocessAutoFocusChanges(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-boolean v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->-$$Nest$mprocessAutoFocusChanges(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->val$cameraId:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mIsRunning:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->-$$Nest$mprocessAutoFocusChanges(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V

    :goto_0
    return-void

    :goto_1
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_1

    check-cast v1, Lcom/motorola/camera/CameraKpi;

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->TOTAL_STARTUP_W_CAF_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onFocusModeChanged(I)V
    .locals 0

    return-void
.end method

.method public final onManualFocusCompleted()V
    .locals 0

    return-void
.end method

.method public final onManualFocusStarted()V
    .locals 0

    return-void
.end method
