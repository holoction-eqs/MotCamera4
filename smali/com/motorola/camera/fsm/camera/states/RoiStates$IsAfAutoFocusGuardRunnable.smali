.class public final Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V
    .locals 0

    .line 3
    const/4 p1, 0x6

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA1;)V
    .locals 0

    .line 4
    const/16 p1, 0x12

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA2;)V
    .locals 0

    .line 5
    const/16 p1, 0xc

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA3;)V
    .locals 0

    .line 6
    const/16 p1, 0x11

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA4;)V
    .locals 0

    .line 7
    const/4 p1, 0x7

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable$$ExternalSynthetic$IA5;)V
    .locals 0

    .line 8
    const/16 p1, 0xa

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 9
    const/4 p1, 0x5

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 8

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_18

    .line 1
    :pswitch_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/motorola/camera/VideoFormat;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    .line 3
    invoke-direct {p1, p2, p0, v1}, Lcom/motorola/camera/VideoFormat;-><init>(Landroid/util/Size;Landroid/util/Range;Z)V

    .line 4
    invoke-static {p1}, Lcom/motorola/camera/VideoHelper;->isThermalRestricted(Lcom/motorola/camera/VideoFormat;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 5
    :pswitch_1
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "PREVIOUS_VALUE"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string p1, "SDCARD_MOUNTED"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v2, "MEDIA_VOLUME"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/storage/MediaVolume;

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 6
    :pswitch_2
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_3

    const-string p0, "MCF_PROCESSING"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 7
    :pswitch_3
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "LONG_PRESS"

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 8
    :pswitch_4
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getFullFrameExposureCompensation(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_5

    :cond_5
    move p2, v1

    :goto_5
    or-int/2addr p1, p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewFullFrameSkipCount(Lcom/motorola/camera/settings/CameraType;)I

    move-result p2

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_6

    :cond_6
    move p2, v1

    :goto_6
    or-int/2addr p1, p2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getFullFrameExposureCompensation(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    or-int/2addr p1, v0

    :cond_8
    return p1

    .line 9
    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result p0

    return p0

    .line 10
    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoSnapshotSupportedForCurrentMode()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_8

    :cond_9
    move v0, v1

    :goto_8
    return v0

    .line 11
    :pswitch_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoDepthMode()Z

    move-result p0

    return p0

    .line 12
    :pswitch_8
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isTimelapsePostprocessVideo(Z)Z

    move-result p0

    return p0

    .line 13
    :pswitch_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_9

    :cond_a
    move v0, v1

    :goto_9
    return v0

    .line 14
    :pswitch_a
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string p1, "RECORDING_START"

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_b
    return v1

    .line 15
    :pswitch_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcomRecorderMirror()Z

    move-result p0

    return p0

    .line 16
    :pswitch_c
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object p0

    const-string p1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, p1}, Lcom/motorola/camera/PermissionsManager;->isPermissionGranted(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 17
    :pswitch_d
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "VIDEO_RECORDING"

    invoke-virtual {p0, p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_c

    move p2, v0

    goto :goto_a

    :cond_c
    move p2, v1

    :goto_a
    if-nez p2, :cond_d

    goto :goto_b

    .line 18
    :cond_d
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-nez p1, :cond_e

    goto :goto_b

    .line 19
    :cond_e
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->mSessionTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iget-wide p1, p1, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_f

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    .line 21
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b007a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    cmp-long v6, v4, p1

    if-gez v6, :cond_f

    const-string v1, "VIDEO_STOP_POST_DELAY"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-nez v2, :cond_10

    sub-long/2addr p1, v4

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    :cond_f
    :goto_b
    move v0, v1

    :cond_10
    :goto_c
    return v0

    .line 23
    :pswitch_e
    instance-of p0, p2, Landroid/os/Bundle;

    if-nez p0, :cond_11

    goto :goto_d

    :cond_11
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "OPEN_CAMERA_ERROR"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string p0, "VideoStates"

    const-string p1, "A error comes from camera engine side !!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_d
    return v1

    .line 24
    :pswitch_f
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    return p0

    .line 25
    :pswitch_10
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "QCFA_SHOT"

    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sget-object p1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    .line 26
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_KEEP_PREVIEW_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 27
    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 28
    sget-object p2, Lcom/motorola/camera/AppFeatures$Feature;->QCFA_KEEP_PREVIEW:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_e

    :cond_13
    move p1, v1

    goto :goto_f

    :cond_14
    :goto_e
    move p1, v0

    :goto_f
    if-nez p1, :cond_15

    if-eqz p0, :cond_15

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaFourStreams()Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_10

    :cond_15
    move v0, v1

    :cond_16
    :goto_10
    return v0

    .line 30
    :pswitch_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p0

    return p0

    .line 31
    :pswitch_12
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeLimited()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_11

    :cond_17
    move v0, v1

    :goto_11
    return v0

    .line 32
    :pswitch_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result p0

    return p0

    .line 33
    :pswitch_14
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {p1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    if-nez p0, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_12

    :cond_18
    move v0, v1

    :goto_12
    return v0

    .line 34
    :pswitch_15
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrBurstEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 35
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iget-boolean p2, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mShutterBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p1

    if-eqz p2, :cond_19

    goto :goto_14

    .line 38
    :cond_19
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    .line 39
    monitor-enter p1

    .line 40
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mLastShutterTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long p2, v2, v4

    if-gez p2, :cond_1a

    move p2, v0

    goto :goto_13

    :cond_1a
    move p2, v1

    :goto_13
    monitor-exit p1

    if-eqz p2, :cond_1b

    :goto_14
    move v0, v1

    goto :goto_15

    .line 41
    :cond_1b
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    .line 42
    monitor-enter p0

    .line 43
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mLastShutterTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_15

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p0

    .line 44
    monitor-exit p1

    throw p0

    :catchall_2
    move-exception p0

    .line 45
    monitor-exit p1

    throw p0

    :cond_1c
    :goto_15
    return v0

    .line 46
    :pswitch_16
    instance-of p0, p2, Landroid/os/Bundle;

    if-eqz p0, :cond_1d

    check-cast p2, Landroid/os/Bundle;

    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string p1, "CAPTURE_TRIGGER"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p0, p1, :cond_1d

    goto :goto_16

    :cond_1d
    move v0, v1

    :goto_16
    return v0

    .line 47
    :pswitch_17
    sget-object p0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 48
    monitor-enter p0

    .line 49
    :try_start_3
    iget p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne p1, v0, :cond_1e

    goto :goto_17

    :cond_1e
    move v0, v1

    :goto_17
    monitor-exit p0

    return v0

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    .line 50
    :goto_18
    check-cast p2, Landroid/os/Bundle;

    const-string p0, "CAMERA_TYPE"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "VIDEO_RECORDING"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v0

    goto :goto_19

    :cond_1f
    move v2, v1

    :goto_19
    if-eqz v2, :cond_20

    goto :goto_1c

    :cond_20
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 51
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v0

    goto :goto_1a

    :cond_21
    move v2, v1

    .line 52
    :goto_1a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v2, :cond_22

    const-string p0, "CLI_ZOOM_ENABLE"

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_1c

    :cond_22
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p1

    if-eqz p1, :cond_25

    const-string p1, "ENABLE"

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_24

    const-string p0, "SAME_ID"

    invoke-virtual {p2, p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_1b

    :cond_23
    move v0, v1

    :cond_24
    :goto_1b
    move v1, v0

    :cond_25
    :goto_1c
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 53
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 54
    :pswitch_1
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 55
    :pswitch_2
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 56
    :pswitch_3
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 57
    :pswitch_4
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 58
    :pswitch_5
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 59
    :pswitch_6
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 60
    :pswitch_7
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 61
    :pswitch_8
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 62
    :pswitch_9
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 63
    :pswitch_a
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 64
    :pswitch_b
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 65
    :pswitch_c
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 66
    :pswitch_d
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 67
    :pswitch_e
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 68
    :pswitch_f
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 69
    :pswitch_10
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 70
    :pswitch_11
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 71
    :pswitch_12
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 72
    :pswitch_13
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 73
    :pswitch_14
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 74
    :pswitch_15
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 75
    :pswitch_16
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 76
    :pswitch_17
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 77
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
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
