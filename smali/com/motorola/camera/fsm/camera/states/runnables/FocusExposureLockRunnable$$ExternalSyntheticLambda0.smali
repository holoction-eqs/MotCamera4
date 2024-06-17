.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    check-cast v4, Landroid/os/Bundle;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "VIDEO_STOP_POST_DELAY"

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;->mKpi:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, p0, v2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    check-cast v2, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocus(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkExposure(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_1
    :goto_0
    return-void

    :goto_1
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->isCameraSessionClosed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x7

    iget v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v5, v0, :cond_3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocus(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v0

    invoke-virtual {p0, v3, v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkExposure(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;Z)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
