.class public final Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;
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
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 1

    .line 2
    const/4 p1, 0x6

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->mEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V
    .locals 1

    .line 4
    const/16 p1, 0x8

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp$$ExternalSynthetic$IA0;)V
    .locals 1

    .line 5
    const/16 p1, 0x9

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp$$ExternalSynthetic$IA2;)V
    .locals 1

    .line 6
    const/16 p1, 0x13

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 7
    const/4 p1, 0x7

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 1

    .line 8
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZI)V
    .locals 0

    .line 9
    const/16 p2, 0x14

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 9

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    const-string v2, "SETTING"

    const/4 v3, 0x2

    const-string v4, "ENABLE"

    const/4 v5, 0x1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->mEnable:Z

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3a

    .line 1
    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->SECOND_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    return v5

    .line 4
    :pswitch_2
    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p1, p1, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-nez p1, :cond_2

    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p1, p1, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v6

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v5

    :goto_2
    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    return v5

    .line 5
    :pswitch_3
    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p1, p1, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;

    if-nez p1, :cond_5

    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p1, p1, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move p1, v6

    goto :goto_5

    :cond_5
    :goto_4
    move p1, v5

    :goto_5
    if-ne p0, p1, :cond_6

    goto :goto_6

    :cond_6
    move v5, v6

    :goto_6
    return v5

    .line 6
    :pswitch_4
    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of p1, p1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-ne p0, p1, :cond_7

    goto :goto_7

    :cond_7
    move v5, v6

    :goto_7
    return v5

    .line 7
    :pswitch_5
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "ROI_INNER"

    invoke-virtual {p1, p2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p0, p1, :cond_8

    goto :goto_8

    :cond_8
    move v5, v6

    :goto_8
    return v5

    .line 8
    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v5

    goto :goto_9

    :cond_9
    move p1, v6

    :goto_9
    if-ne p0, p1, :cond_a

    goto :goto_a

    :cond_a
    move v5, v6

    :goto_a
    return v5

    .line 9
    :pswitch_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result p1

    if-ne p0, p1, :cond_b

    goto :goto_b

    :cond_b
    move v5, v6

    :goto_b
    return v5

    .line 10
    :pswitch_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p1

    if-ne p0, p1, :cond_c

    goto :goto_c

    :cond_c
    move v5, v6

    :goto_c
    return v5

    .line 11
    :pswitch_9
    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 12
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, p0, :cond_d

    goto :goto_d

    :cond_d
    move v5, v6

    :goto_d
    return v5

    .line 15
    :pswitch_a
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "HISTORY_STATE"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MCF_PROCESS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-ne p0, p1, :cond_e

    goto :goto_e

    :cond_e
    move v5, v6

    :goto_e
    return v5

    .line 16
    :pswitch_b
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 17
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast p2, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {p2}, Lcom/motorola/camera/settings/CaptureIntent;->isMirrorMode()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_10

    :cond_f
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-ne p0, p1, :cond_10

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    .line 19
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_f

    :cond_10
    move v5, v6

    :goto_f
    move v6, v5

    :goto_10
    return v6

    .line 21
    :pswitch_c
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_11

    :cond_11
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result p1

    if-eq p0, p1, :cond_17

    goto :goto_13

    :cond_12
    const-string p0, "PREVIOUS_VALUE"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v3, :cond_17

    goto :goto_13

    :cond_13
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->VSTAB_IHC_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_13

    :cond_14
    :goto_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionOn()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result p1

    if-eq p0, p1, :cond_17

    goto :goto_13

    :cond_15
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 23
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    sget-object p2, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x1e

    if-ne p2, p1, :cond_16

    move p1, v5

    goto :goto_12

    :cond_16
    move p1, v6

    :goto_12
    if-ne p0, p1, :cond_17

    goto :goto_13

    :cond_17
    move v5, v6

    :goto_13
    return v5

    .line 24
    :pswitch_d
    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 25
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 26
    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT_HD:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 27
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result p1

    if-eqz p1, :cond_18

    move p1, v5

    goto :goto_14

    :cond_18
    move p1, v6

    :goto_14
    if-eqz p1, :cond_19

    goto :goto_16

    .line 28
    :cond_19
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 29
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 30
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliZoomBlendingCamera()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentCliCamera()Z

    move-result p2

    if-eqz p2, :cond_1c

    :cond_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result p2

    if-nez p2, :cond_1c

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Lcom/motorola/camera/VideoFormat;)Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result p1

    if-nez p1, :cond_1c

    :cond_1b
    move p1, v5

    goto :goto_15

    :cond_1c
    move p1, v6

    :goto_15
    if-ne p0, p1, :cond_1d

    goto :goto_16

    :cond_1d
    move v5, v6

    :goto_16
    return v5

    .line 31
    :pswitch_e
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result p1

    xor-int/2addr p1, v5

    if-ne p0, p1, :cond_1e

    goto :goto_17

    :cond_1e
    move v5, v6

    :goto_17
    return v5

    .line 32
    :pswitch_f
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_1a

    :cond_1f
    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupportedByCurrentCamera(Z)Z

    move-result p1

    if-nez p1, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnlyInBackMain()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackMacroMode()Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_18

    :cond_20
    move p1, v6

    goto :goto_19

    :cond_21
    :goto_18
    move p1, v5

    :goto_19
    if-ne p0, p1, :cond_22

    goto :goto_1a

    :cond_22
    move v5, v6

    :goto_1a
    return v5

    .line 33
    :pswitch_10
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVideoFamilyMode()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-static {}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getMediaVolumes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_1b

    :cond_23
    move p1, v6

    goto :goto_1c

    :cond_24
    :goto_1b
    move p1, v5

    :goto_1c
    if-ne p0, p1, :cond_25

    goto :goto_1d

    :cond_25
    move v5, v6

    :goto_1d
    return v5

    .line 34
    :pswitch_11
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_27

    check-cast p2, Landroid/os/Bundle;

    const-string v0, "ORIENTATION"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v5

    if-eqz p2, :cond_27

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_27

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p1, :cond_27

    if-eqz p0, :cond_26

    rem-int/lit16 p1, v0, 0xb4

    if-eqz p1, :cond_28

    :cond_26
    if-nez p0, :cond_27

    rem-int/lit16 v0, v0, 0xb4

    const/16 p0, 0x5a

    if-ne v0, p0, :cond_27

    goto :goto_1e

    :cond_27
    move v5, v6

    :cond_28
    :goto_1e
    return v5

    .line 35
    :pswitch_12
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SKIP"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p0, p1, :cond_29

    goto :goto_1f

    :cond_29
    move v5, v6

    :goto_1f
    return v5

    .line 36
    :pswitch_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_20

    :cond_2a
    move p1, v6

    goto :goto_21

    :cond_2b
    :goto_20
    move p1, v5

    :goto_21
    if-ne p1, p0, :cond_2c

    goto :goto_22

    :cond_2c
    move v5, v6

    :goto_22
    return v5

    .line 37
    :pswitch_14
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "MODE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v1

    if-eqz v1, :cond_2d

    if-eq v0, v5, :cond_2e

    :cond_2d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_2f

    if-nez v0, :cond_2f

    :cond_2e
    move v1, v5

    goto :goto_23

    :cond_2f
    move v1, v6

    :goto_23
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 38
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 39
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v5

    goto :goto_24

    :cond_30
    move v2, v6

    :goto_24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionSupported()Z

    move-result v3

    if-eqz v3, :cond_31

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 40
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 41
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_31

    move v3, v5

    goto :goto_25

    :cond_31
    move v3, v6

    :goto_25
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcOn()Z

    move-result v4

    if-eqz v4, :cond_32

    move v4, v5

    goto :goto_26

    :cond_32
    move v4, v6

    :goto_26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoEnabled()Z

    move-result v7

    if-eqz v7, :cond_33

    if-ne v0, v5, :cond_33

    move v7, v5

    goto :goto_27

    :cond_33
    move v7, v6

    :goto_27
    const-string v8, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/settings/CameraType;

    if-eqz v1, :cond_3a

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v1

    if-nez v1, :cond_3a

    if-nez v2, :cond_3a

    if-nez v3, :cond_3a

    if-nez v4, :cond_3a

    if-nez v7, :cond_3a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v1

    if-nez v1, :cond_36

    if-ne v0, v5, :cond_35

    .line 42
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_28

    :cond_34
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    .line 43
    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 44
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    .line 45
    iget-object v3, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 46
    check-cast v3, Lcom/motorola/camera/VideoFormat;

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/VideoHelper;->ALLOWED_VIDEO_SIZES:Ljava/util/ArrayList;

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v6, v1}, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda0;-><init>(ILcom/motorola/camera/VideoFormat;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    goto :goto_29

    :cond_35
    :goto_28
    move v0, v5

    :goto_29
    if-nez v0, :cond_39

    .line 48
    :cond_36
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoSupported()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliZoomBlendingCamera()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCliZoomBlendingVideoSize()Lcom/motorola/camera/VideoFormat;

    move-result-object p1

    goto :goto_2a

    :cond_37
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 49
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 50
    check-cast p1, Lcom/motorola/camera/VideoFormat;

    :goto_2a
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Lcom/motorola/camera/VideoFormat;)Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnlyInBackMain()Z

    move-result p1

    if-eqz p1, :cond_38

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 51
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 52
    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited(Landroid/util/Size;)Z

    move-result p1

    if-nez p1, :cond_3a

    :cond_38
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-eq p2, p1, :cond_39

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, p1, :cond_3a

    :cond_39
    move p1, v5

    goto :goto_2b

    :cond_3a
    move p1, v6

    :goto_2b
    if-ne p0, p1, :cond_3b

    goto :goto_2c

    :cond_3b
    move v5, v6

    :goto_2c
    return v5

    .line 53
    :pswitch_15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCameraSupported()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result p1

    if-eqz p1, :cond_3c

    move p1, v5

    goto :goto_2d

    :cond_3c
    move p1, v6

    :goto_2d
    if-ne p0, p1, :cond_3d

    goto :goto_2e

    :cond_3d
    move v5, v6

    :goto_2e
    return v5

    .line 54
    :pswitch_16
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result p1

    if-ne p1, p0, :cond_3e

    goto :goto_2f

    :cond_3e
    move v5, v6

    :goto_2f
    return v5

    .line 55
    :pswitch_17
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-ne p1, p0, :cond_3f

    goto :goto_30

    :cond_3f
    move v5, v6

    :goto_30
    return v5

    .line 56
    :pswitch_18
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "IS_HIGH_RES_AUTO_SWITCH"

    invoke-virtual {p1, p2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 57
    sget-object p2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 58
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_PENDING:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    .line 59
    invoke-static {v0, p2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_40
    if-ne p0, p1, :cond_41

    goto :goto_31

    :cond_41
    move v5, v6

    :goto_31
    return v5

    .line 60
    :pswitch_19
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_42

    const-string p1, "HAL_PROCESSING"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p0, p1, :cond_42

    goto :goto_32

    :cond_42
    move v5, v6

    :goto_32
    return v5

    .line 61
    :pswitch_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentSceneAdjustmentStatusEnabled()Z

    move-result p2

    if-eqz p2, :cond_44

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupportedByCurrentMode(Z)Z

    move-result p2

    if-nez p2, :cond_43

    sget-object p2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, p2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_33

    :cond_43
    move p1, v6

    goto :goto_34

    :cond_44
    :goto_33
    move p1, v5

    :goto_34
    if-ne p0, p1, :cond_45

    goto :goto_35

    :cond_45
    move v5, v6

    :goto_35
    return v5

    .line 62
    :pswitch_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_38

    :cond_46
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 63
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 64
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_47

    move p1, v5

    goto :goto_36

    :cond_47
    move p1, v6

    :goto_36
    if-ne p0, p1, :cond_48

    goto :goto_37

    :cond_48
    move v5, v6

    :goto_37
    move v6, v5

    :goto_38
    return v6

    .line 65
    :pswitch_1c
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_49

    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, p0, :cond_49

    goto :goto_39

    :cond_49
    move v5, v6

    :goto_39
    return v5

    .line 66
    :goto_3a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-nez p1, :cond_4b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result p1

    if-nez p1, :cond_4b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_3b

    :cond_4a
    move p1, v6

    goto :goto_3c

    :cond_4b
    :goto_3b
    move p1, v5

    :goto_3c
    if-ne p1, p0, :cond_4c

    goto :goto_3d

    :cond_4c
    move v5, v6

    :goto_3d
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
        :pswitch_0
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
    .end packed-switch
.end method

.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 67
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 68
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 69
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 70
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 71
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 72
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 73
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 74
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 75
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 76
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 77
    :pswitch_a
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 78
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 79
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->mEnable:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 80
    :pswitch_b
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 81
    :pswitch_c
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 82
    :pswitch_d
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 83
    :pswitch_e
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 84
    :pswitch_f
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 85
    :pswitch_10
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 86
    :pswitch_11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 87
    :pswitch_12
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 88
    :pswitch_13
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 89
    :pswitch_14
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 90
    :pswitch_15
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 91
    :pswitch_16
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 92
    :pswitch_17
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 93
    :pswitch_18
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 94
    :pswitch_19
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 95
    :pswitch_1a
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 96
    :pswitch_1b
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 97
    :pswitch_1c
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 98
    :goto_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
