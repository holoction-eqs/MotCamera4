.class public final synthetic Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/TorchControlStateMachine$TorchControlListener;


# virtual methods
.method public final onTorchControl(Z)V
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    new-instance p0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/mcf/McfParameters$Modes;->AUTO:Lcom/motorola/camera/mcf/McfParameters$Modes;

    :goto_0
    const-string v0, "HdrMode"

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :cond_1
    return-void
.end method
