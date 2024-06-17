.class public final Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public mShotStartTime:J

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->sendError()V

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SEQ_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v2}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v11

    sget-boolean v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkSpeedUpSupported:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    .line 1
    filled-new-array {v13}, [I

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->CS_KEY_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v6, v4, v11, v5}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SNAP_MODE:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v5, v4, v11, v6}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 4
    :goto_0
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    .line 7
    iget v4, v4, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;->mCurrentExpTime:F

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    .line 8
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v7, 0x1e

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    .line 9
    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 10
    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    div-float v7, v6, v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_1

    .line 11
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRatesLvl1:[F

    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v3

    aget v3, v7, v3

    goto :goto_1

    .line 12
    :cond_1
    sget-object v7, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v7, v7, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRates:[F

    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v3

    aget v3, v7, v3

    :goto_1
    int-to-byte v7, v13

    .line 13
    sget-object v8, Lcom/motorola/camera/settings/CustomKeyHelper;->DISABLE_UW_DC_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v10, v11, v7}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v7}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    const/4 v14, 0x0

    if-eqz v4, :cond_3

    .line 16
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v12, :cond_2

    goto :goto_2

    :cond_2
    move v4, v14

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v13

    :goto_3
    if-eqz v4, :cond_4

    int-to-float v3, v5

    :cond_4
    sget-object v8, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    .line 17
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 18
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v13, :cond_6

    move v8, v13

    goto :goto_5

    :cond_6
    :goto_4
    move v8, v14

    .line 20
    :goto_5
    invoke-static {v8}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 21
    invoke-virtual {v8}, Lcom/motorola/camera/storage/MediaVolume;->isPrimary()Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    sget-object v4, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->MULTI_SHOT_RATE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v4}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isFeatureLimited(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    :cond_9
    int-to-float v4, v5

    div-float v5, v4, v3

    float-to-int v5, v5

    rem-float/2addr v4, v3

    int-to-float v3, v5

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    goto :goto_6

    :cond_a
    move v6, v7

    :goto_6
    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 22
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v4

    if-eqz v4, :cond_b

    mul-int/lit8 v3, v3, 0x1

    .line 23
    div-int/lit8 v3, v3, 0x4

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_b
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    iget-object v9, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    move v8, v14

    :goto_7
    if-ge v8, v3, :cond_e

    .line 25
    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-nez v8, :cond_d

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v11, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-static {v10, v11}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendAppInfoToMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiInputOfflineReproc()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 26
    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 27
    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    .line 28
    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v4, v9

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 p1, v6

    move-object/from16 v6, v17

    move-object v13, v7

    move-object v7, v11

    move/from16 v17, v8

    move-object/from16 v8, p1

    move-object v12, v9

    move/from16 v9, v16

    .line 29
    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTargetWithPhysicalCamera(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Z)V

    goto :goto_8

    :cond_c
    move-object v13, v7

    move/from16 v17, v8

    move-object v12, v9

    move-object v4, v6

    invoke-static {v12, v10, v11, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_8
    invoke-static {v12, v10, v11, v13}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {v10, v11, v14}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setZslCropMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_9

    :cond_d
    move-object v4, v6

    move-object v13, v7

    move/from16 v17, v8

    move-object v12, v9

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    invoke-static {v12, v10, v11, v4}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-static {v12, v10, v11, v13}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :goto_9
    invoke-virtual {v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v17, 0x1

    move-object v9, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto :goto_7

    :cond_e
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v3, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->mShotStartTime:J

    .line 30
    :cond_f
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    .line 31
    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 32
    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v3, v4

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    .line 33
    new-instance v4, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;

    invoke-direct {v4, v0, v3, v2, v10}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;ILcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/lang/String;)V

    .line 34
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-static {v10, v15, v0, v4, v1}, Lcom/motorola/camera/device/CameraService;->setRepeatingBurst(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendError()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
