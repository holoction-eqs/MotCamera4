.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeMcfShotOnly()Z

    move-result p0

    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string p3, "QCFA_SHOT"

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "DO_REMOSAIC"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    move-object v0, p3

    :goto_0
    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;->isQcfaShotPossible(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBgService()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMultiframeBokeh(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move p0, v0

    goto :goto_2

    :cond_6
    :goto_1
    move p0, v1

    :goto_2
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DETERMINATE_FG_PROCESSING_TIME"

    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    :goto_3
    invoke-virtual {p2, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNightMode()Z

    move-result p2

    invoke-virtual {p0, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result v2

    invoke-static {p1, v2}, Lcom/motorola/camera/IqConfigManager;->isAutoSlowCapture(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSlowCaptureMode()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    if-nez p2, :cond_c

    if-nez v3, :cond_c

    if-eqz p3, :cond_9

    .line 4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_9
    if-eqz p3, :cond_a

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p2

    if-nez p2, :cond_c

    :cond_a
    if-nez v2, :cond_c

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMultiframeBokeh(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->FAST_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    goto :goto_5

    :cond_c
    :goto_4
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;->SLOW_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$CaptureExperience;

    :goto_5
    const-string p2, "CAPTURE_EXPERIENCE"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$WaitForMemoryEntryRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
