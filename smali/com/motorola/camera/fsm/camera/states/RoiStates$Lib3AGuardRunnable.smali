.class public Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final m3A:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;)V
    .locals 1

    .line 3
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/Serializable;I)V
    .locals 0

    .line 4
    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 8

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    const-string v1, "CAPTURE_TYPE"

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->m3A:Ljava/io/Serializable;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_11

    .line 1
    :pswitch_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    check-cast p0, [Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2
    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_11

    check-cast p2, Landroid/os/Bundle;

    const-string p1, "DIRECTION"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "ORIENTATION"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/16 v0, 0x10e

    const/16 v1, 0x5a

    const/4 v2, 0x4

    const/16 v7, 0xb4

    if-eqz p0, :cond_d

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-eq p1, v2, :cond_12

    :cond_2
    if-ne p2, v7, :cond_3

    if-eq p1, v3, :cond_12

    :cond_3
    if-ne p2, v1, :cond_4

    if-eq p1, v4, :cond_12

    :cond_4
    if-ne p2, v0, :cond_11

    if-ne p1, v5, :cond_11

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    if-eq p1, v3, :cond_12

    :cond_6
    if-ne p2, v7, :cond_7

    if-eq p1, v2, :cond_12

    :cond_7
    if-ne p2, v1, :cond_8

    if-eq p1, v5, :cond_12

    :cond_8
    if-ne p2, v0, :cond_11

    if-ne p1, v4, :cond_11

    goto :goto_1

    :cond_9
    if-nez p2, :cond_a

    if-eq p1, v4, :cond_12

    :cond_a
    if-ne p2, v7, :cond_b

    if-eq p1, v5, :cond_12

    :cond_b
    if-ne p2, v1, :cond_c

    if-eq p1, v3, :cond_12

    :cond_c
    if-ne p2, v0, :cond_11

    if-ne p1, v2, :cond_11

    goto :goto_1

    :cond_d
    if-nez p2, :cond_e

    if-eq p1, v5, :cond_12

    :cond_e
    if-ne p2, v7, :cond_f

    if-eq p1, v4, :cond_12

    :cond_f
    if-ne p2, v1, :cond_10

    if-eq p1, v2, :cond_12

    :cond_10
    if-ne p2, v0, :cond_11

    if-ne p1, v3, :cond_11

    goto :goto_1

    :cond_11
    :goto_0
    move v5, v6

    :cond_12
    :goto_1
    return v5

    .line 3
    :pswitch_2
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_13

    const-string p1, "SETTING"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    goto :goto_2

    :cond_13
    const/4 p1, 0x0

    :goto_2
    check-cast p0, Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p0, :cond_14

    invoke-virtual {p0, p1}, Lcom/motorola/camera/settings/SettingsManager$Key;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_3

    :cond_14
    move v5, v6

    :goto_3
    return v5

    .line 4
    :pswitch_3
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "CAPTURE_TRIGGER"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p0, p1, :cond_15

    goto :goto_4

    :cond_15
    move v5, v6

    :goto_4
    return v5

    .line 5
    :pswitch_4
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SHOULD_EXIT"

    invoke-virtual {p1, v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    if-eqz p1, :cond_16

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->EXIT:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    goto :goto_5

    :cond_16
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-eq p1, p2, :cond_17

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p1, p2, :cond_18

    :cond_17
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;->IDLE:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    :cond_18
    :goto_5
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ReviewTransition;

    if-ne p0, v0, :cond_19

    goto :goto_6

    :cond_19
    move v5, v6

    :goto_6
    return v5

    .line 6
    :pswitch_5
    sget-object p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->NORMAL:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->-$$Nest$smisQcfaFourStreamsShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocServiceMode()Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideServiceMode()Z

    move-result p1

    if-nez p1, :cond_1a

    sget-object p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    :cond_1a
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p0, p2, :cond_1b

    goto :goto_7

    :cond_1b
    move v5, v6

    :goto_7
    return v5

    .line 7
    :pswitch_6
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    const-string v0, "REVIEW_REQUIRED"

    invoke-virtual {p1, v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;

    if-eqz p1, :cond_1c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;->REVIEW:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;

    goto :goto_8

    :cond_1c
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->REPROC:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-eq p1, p2, :cond_1d

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->MCF:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-ne p1, p2, :cond_1e

    :cond_1d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;->IDLE:Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;

    :cond_1e
    :goto_8
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureTransition;

    if-ne p0, v0, :cond_1f

    goto :goto_9

    :cond_1f
    move v5, v6

    :goto_9
    return v5

    .line 8
    :pswitch_7
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ENABLE"

    invoke-virtual {p1, p2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "ROI_TARGET_LOCATION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    const-string v1, "LOCATION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    if-eqz v1, :cond_20

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const-string v0, "ROI_TARGET_WIDTH"

    invoke-virtual {p1, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ROI_WIDTH"

    invoke-virtual {p1, v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_22

    const-string v0, "ROI_TARGET_HIGHT"

    invoke-virtual {p1, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ROI_HIGHT"

    invoke-virtual {p1, v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_22

    const-string v0, "ROI_TARGET_WEIGHT"

    invoke-virtual {p1, v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ROI_WEIGHT"

    invoke-virtual {p1, v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, p1, :cond_21

    goto :goto_a

    :cond_21
    move p1, v6

    goto :goto_b

    :cond_22
    :goto_a
    move p1, v5

    :goto_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;->NEW_SET_REQUIRED:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;

    if-ne v0, p0, :cond_23

    if-nez p1, :cond_26

    :cond_23
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;->DRAG_ENABLE:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;

    if-ne v0, p0, :cond_24

    if-eqz p2, :cond_24

    if-eqz p1, :cond_26

    :cond_24
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;->DRAG_DISABLE:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;

    if-ne v0, p0, :cond_25

    if-nez p2, :cond_25

    if-nez p1, :cond_25

    goto :goto_c

    :cond_25
    move v5, v6

    :cond_26
    :goto_c
    return v5

    .line 9
    :pswitch_8
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;->REQUIRED:Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    if-ne p0, p1, :cond_27

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p1

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-boolean p2, p1, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez p2, :cond_29

    goto :goto_d

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    .line 12
    :cond_27
    :goto_d
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;->GRANTED:Lcom/motorola/camera/fsm/camera/states/Main$PermissionType;

    if-ne p0, p1, :cond_28

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    iget-boolean p1, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    if-nez p1, :cond_28

    goto :goto_e

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_28
    move v5, v6

    :cond_29
    :goto_e
    return v5

    .line 15
    :pswitch_9
    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2e

    if-eq p0, v5, :cond_2c

    if-eq p0, v4, :cond_2b

    if-eq p0, v3, :cond_2a

    goto :goto_f

    :cond_2a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v5

    goto :goto_10

    .line 16
    :cond_2b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-ne p0, v4, :cond_2d

    goto :goto_10

    .line 17
    :cond_2c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-ne p0, v5, :cond_2d

    goto :goto_10

    :cond_2d
    :goto_f
    move v5, v6

    goto :goto_10

    .line 18
    :cond_2e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->get3ALibType()I

    move-result p0

    if-nez p0, :cond_2d

    :goto_10
    return v5

    .line 19
    :goto_11
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisableRoiMode(Z)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_13

    :cond_2f
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->AF_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 22
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_34

    if-eq p0, v5, :cond_32

    if-eq p0, v4, :cond_31

    if-ne p0, v3, :cond_30

    if-nez p2, :cond_33

    if-nez p1, :cond_33

    goto :goto_12

    :cond_30
    new-instance p0, Ljava/lang/IncompatibleClassChangeError;

    invoke-direct {p0}, Ljava/lang/IncompatibleClassChangeError;-><init>()V

    throw p0

    :cond_31
    if-eqz p2, :cond_33

    if-nez p1, :cond_33

    goto :goto_12

    :cond_32
    if-nez p1, :cond_33

    goto :goto_12

    :cond_33
    move v5, v6

    goto :goto_12

    :cond_34
    move v5, p1

    :goto_12
    move v6, v5

    :goto_13
    return v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 24
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 25
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 26
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 27
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 28
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 29
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 30
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 31
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 32
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 33
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 34
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
