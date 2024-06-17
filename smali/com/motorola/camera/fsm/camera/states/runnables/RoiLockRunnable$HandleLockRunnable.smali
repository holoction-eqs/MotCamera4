.class public final Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RoiLockRunnable"

    return-object p0
.end method

.method public final sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    new-instance p1, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable$HandleLockRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;I)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/PanoCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_1
    return-void
.end method
