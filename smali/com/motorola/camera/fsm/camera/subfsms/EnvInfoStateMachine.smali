.class public final Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final declared-synchronized notifyChange()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;

    invoke-interface {v2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine$EnvInfoListener;->onUpdate(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CCT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;I)Z

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p2, v2}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result v2

    or-int/2addr v0, v2

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_DECISION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;I)Z

    move-result v2

    or-int/2addr v0, v2

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LENS_POSITION_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v2, v1}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;I)Z

    move-result v2

    or-int/2addr v0, v2

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v2}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setFloatValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v2

    or-int/2addr v0, v2

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_STANDARD_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v2, v2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/motorola/camera/IqConfigManager;->getLuxStdForCaptureResult(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CameraType;)Ljava/lang/Float;

    move-result-object p1

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    or-int/2addr p1, v0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setFloatValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ISO100_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setFloatValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setLongValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LINECOUNT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;I)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ANALOG_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setFloatValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MASTER_SENSOR_NAME:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_2
    move v0, v5

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    or-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ADRC_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setFloatValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setFloatValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setLongValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z

    move-result v0

    or-int/2addr p1, v0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DEBUG_VIDEO_HDR_STATE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->VIDEO_HDR_STATE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    const/4 v2, -0x1

    invoke-virtual {p0, p2, v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;I)Z

    move-result v0

    or-int/2addr p1, v0

    :cond_5
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->THERMAL_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {p0, p2, v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->setIntValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;I)Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p1, Landroid/os/Bundle;

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    sget-object p2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    move v5, p1

    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->notifyChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized resetState()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->notifyChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setFloatValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setFloatValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    iget-object p2, p2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setIntValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setIntValue(Landroid/hardware/camera2/CaptureResult;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;I)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    iget-object p2, p2, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setLongValue(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/EnvInfoStateMachine;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
