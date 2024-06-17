.class public final Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mEnable:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    .line 2
    const/16 p1, 0xa

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    const/4 v3, 0x1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->mEnable:Z

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_24

    .line 1
    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 2
    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result p1

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3

    .line 3
    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/panorama/PanoHelper;->isFocusModeAuto()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/panorama/PanoHelper;->isRearCamera(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v4

    :goto_2
    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    return v3

    .line 4
    :pswitch_3
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "SETTING"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-ne p0, p1, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    return v3

    .line 5
    :pswitch_4
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "HISTORY_STATE"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p2, :cond_6

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p1, v4

    goto :goto_6

    :cond_6
    :goto_5
    move p1, v3

    :goto_6
    if-ne p0, p1, :cond_7

    goto :goto_7

    :cond_7
    move v3, v4

    :goto_7
    return v3

    .line 6
    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result p1

    if-ne p1, p0, :cond_8

    goto :goto_8

    :cond_8
    move v3, v4

    :goto_8
    return v3

    .line 7
    :pswitch_6
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p0, p1, :cond_9

    goto :goto_9

    :cond_9
    move v3, v4

    :goto_9
    return v3

    :pswitch_7
    if-eqz p2, :cond_a

    .line 8
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "FACES_DETECTED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p0, :cond_a

    if-nez p1, :cond_a

    goto :goto_b

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_a

    :cond_b
    move v3, v4

    :cond_c
    :goto_a
    move v4, v3

    :goto_b
    return v4

    .line 9
    :pswitch_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-ne p0, p1, :cond_d

    goto :goto_c

    :cond_d
    move v3, v4

    :goto_c
    return v3

    .line 10
    :pswitch_9
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    if-eqz p1, :cond_e

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v3

    goto :goto_d

    :cond_e
    move p1, v4

    :goto_d
    if-ne p1, p0, :cond_f

    goto :goto_e

    :cond_f
    move v3, v4

    :goto_e
    return v3

    .line 14
    :pswitch_a
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "HAL_PROCESSING"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_10

    if-ne p0, p2, :cond_10

    goto :goto_f

    :cond_10
    move v3, v4

    :goto_f
    return v3

    .line 15
    :pswitch_b
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-ne p1, p0, :cond_11

    goto :goto_10

    :cond_11
    move v3, v4

    :goto_10
    return v3

    .line 17
    :pswitch_c
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ENABLE_VSTAB_STOP_DETECTION"

    invoke-virtual {p1, p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopOptimizationSupported()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    move p1, v3

    goto :goto_11

    :cond_13
    move p1, v4

    :goto_11
    if-ne p0, p1, :cond_14

    goto :goto_12

    :cond_14
    move v3, v4

    :goto_12
    return v3

    .line 18
    :pswitch_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p1

    if-eq p0, p1, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p1

    if-ne p0, p1, :cond_15

    goto :goto_13

    :cond_15
    move v3, v4

    :cond_16
    :goto_13
    return v3

    .line 19
    :pswitch_e
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "IS_SPLIT_SCREEN"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p0, :cond_17

    goto :goto_14

    :cond_17
    move v3, v4

    :goto_14
    return v3

    .line 20
    :pswitch_f
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "SMOOTH_ZOOM_JUMP"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, p0, :cond_18

    goto :goto_15

    :cond_18
    move v3, v4

    :goto_15
    return v3

    .line 21
    :pswitch_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result p2

    if-nez p2, :cond_1a

    :cond_19
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result p2

    if-eqz p2, :cond_1b

    :cond_1a
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    .line 22
    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    xor-int/2addr p1, v3

    goto :goto_16

    :cond_1b
    move p1, v4

    :goto_16
    if-ne p0, p1, :cond_1c

    goto :goto_17

    :cond_1c
    move v3, v4

    :goto_17
    return v3

    .line 23
    :pswitch_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result p1

    if-ne p1, p0, :cond_1d

    goto :goto_18

    :cond_1d
    move v3, v4

    :goto_18
    return v3

    .line 24
    :pswitch_12
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SEQ_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p2, :cond_1e

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    :cond_1e
    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1f

    iget p2, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne p2, p1, :cond_1f

    move p1, v3

    goto :goto_19

    :cond_1f
    move p1, v4

    :goto_19
    if-ne p0, p1, :cond_20

    goto :goto_1a

    :cond_20
    move v3, v4

    :goto_1a
    return v3

    .line 25
    :pswitch_13
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 27
    check-cast p1, Lcom/motorola/camera/settings/CaptureIntent;

    .line 28
    invoke-virtual {p1}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 29
    iget-object p1, p1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Lcom/motorola/camera/settings/CaptureIntent;->getExtraOutputFromIntent(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    :cond_21
    if-eqz v1, :cond_22

    move p1, v3

    goto :goto_1b

    :cond_22
    move p1, v4

    :goto_1b
    if-ne p1, p0, :cond_23

    goto :goto_1c

    :cond_23
    move v3, v4

    :goto_1c
    return v3

    .line 30
    :pswitch_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-ne p0, p1, :cond_24

    goto :goto_1d

    :cond_24
    move v3, v4

    :goto_1d
    return v3

    .line 31
    :pswitch_15
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "QCFA_SHOT"

    invoke-virtual {p1, p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 32
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p2

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    .line 33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeWithSwHwQcfaSensor()Z

    move-result p1

    if-nez p1, :cond_25

    move p1, v3

    goto :goto_1e

    :cond_25
    move p1, v4

    :goto_1e
    if-ne p0, p1, :cond_26

    goto :goto_1f

    :cond_26
    move v3, v4

    :goto_1f
    return v3

    .line 34
    :pswitch_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result p1

    if-ne p0, p1, :cond_27

    goto :goto_20

    :cond_27
    move v3, v4

    :goto_20
    return v3

    .line 35
    :pswitch_17
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TIMER"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_28

    move p1, v3

    goto :goto_21

    :cond_28
    move p1, v4

    :goto_21
    if-ne p1, p0, :cond_29

    goto :goto_22

    :cond_29
    move v3, v4

    :goto_22
    return v3

    .line 36
    :pswitch_18
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "ENABLE"

    invoke-virtual {p2, p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p0, p1, :cond_2a

    goto :goto_23

    :cond_2a
    move v3, v4

    :goto_23
    return v3

    .line 37
    :goto_24
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapseMode()Z

    move-result p2

    if-eqz p2, :cond_2b

    const-string p2, "VIDEO_RECORDING"

    invoke-virtual {p1, p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2b

    move p1, v3

    goto :goto_25

    :cond_2b
    move p1, v4

    :goto_25
    if-ne p1, p0, :cond_2c

    goto :goto_26

    :cond_2c
    move v3, v4

    :goto_26
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public final bridge synthetic canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 38
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 39
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 40
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 41
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 42
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 43
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 44
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 45
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 46
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 47
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 48
    :pswitch_a
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 49
    :pswitch_b
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 50
    :pswitch_c
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 51
    :pswitch_d
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 52
    :pswitch_e
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 53
    :pswitch_f
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 54
    :pswitch_10
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 55
    :pswitch_11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 56
    :pswitch_12
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 57
    :pswitch_13
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 58
    :pswitch_14
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 59
    :pswitch_15
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 60
    :pswitch_16
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 61
    :pswitch_17
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 62
    :pswitch_18
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 63
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
