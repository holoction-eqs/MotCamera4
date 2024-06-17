.class public final Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final mFacingSwitching:Z

.field public final mSensorOpened:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;->mFacingSwitching:Z

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;->mSensorOpened:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "SETTING"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "USE_CASE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq p1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne p1, v2, :cond_1

    :cond_0
    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_3

    instance-of v2, p3, Landroid/os/Bundle;

    if-eqz v2, :cond_3

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    move p1, p2

    :cond_3
    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;->mFacingSwitching:Z

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;->mSensorOpened:Z

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->restoreVstabPersistValue(ZZ)V

    :cond_4
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
