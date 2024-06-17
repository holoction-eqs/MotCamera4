.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final mOpenCameraListener:Lcom/airbnb/lottie/model/MutablePair;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/MutablePair;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;->mOpenCameraListener:Lcom/airbnb/lottie/model/MutablePair;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 5

    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mIsActivityOnTop:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_TOP_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v3, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v4, -0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/motorola/camera/device/exception/CameraExceptionWrapper;-><init>(Lcom/motorola/camera/fsm/camera/StateKey;Ljava/lang/Exception;I)V

    const/4 p0, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_0
    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v2, "FACING"

    if-eqz v0, :cond_5

    invoke-virtual {p2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    const-string v4, "CAMERA_TYPE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/settings/CameraType;

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;->run$com$motorola$camera$fsm$camera$states$runnables$OpenCameraRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 1
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 2
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;->run$com$motorola$camera$fsm$camera$states$runnables$OpenCameraRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final run$com$motorola$camera$fsm$camera$states$runnables$OpenCameraRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v3, Lcom/motorola/camera/CameraKpi$KPI;->RESUME_TO_OPEN_CAMERA:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/device/CameraStateManager;->clear()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "USE_CASE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v7

    :goto_1
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getMainCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v10

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v5, v11, :cond_4

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v5, v11, :cond_4

    if-eqz v6, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v7

    :goto_3
    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v5, v11, :cond_5

    move v5, v7

    goto :goto_4

    :cond_5
    move v5, v8

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v11

    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10, v11}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(IZ)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const-string v10, "CAMERA_TYPE"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/settings/CameraType;

    const/4 v12, -0x1

    const-string v13, "CameraModeSwitch$ModeOpenCameraRunnable"

    if-nez v10, :cond_6

    invoke-static {v12, v12, v11}, Lcom/motorola/camera/settings/SettingsManager;->decideCameraType(IIZ)Lcom/motorola/camera/settings/CameraType;

    move-result-object v10

    sget-object v14, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    if-ne v10, v14, :cond_6

    const-string v0, "cameraType is UNKNOWN"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v15, v15, Lcom/motorola/camera/settings/SettingsManager;->mCameraMap:Ljava/util/EnumMap;

    invoke-virtual {v15}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move v12, v7

    goto :goto_6

    :cond_7
    const/4 v12, -0x1

    goto :goto_5

    :cond_8
    move v12, v8

    :goto_6
    if-nez v12, :cond_9

    invoke-static {v14}, Lcom/motorola/camera/settings/SettingsManager;->isExternalCamera(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v12, v7

    goto :goto_7

    :cond_9
    move v12, v8

    :goto_7
    if-eqz v12, :cond_a

    const-string v1, "OPEN_CAMERA_ERROR"

    invoke-virtual {v4, v1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "IS_EXTERNAL_CAMERA"

    invoke-virtual {v4, v1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2, v4, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v12

    if-nez v12, :cond_b

    sget-object v12, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    if-eq v10, v12, :cond_b

    move v12, v7

    goto :goto_8

    :cond_b
    move v12, v8

    :goto_8
    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;->mOpenCameraListener:Lcom/airbnb/lottie/model/MutablePair;

    iget-object v15, v14, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    iget-object v15, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    if-eqz v12, :cond_c

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen$enumunboxing$(Ljava/lang/String;I)V

    invoke-virtual {v2, v1, v7}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    iget-object v7, v14, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0, v14, v15}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/airbnb/lottie/model/MutablePair;Landroid/os/Handler;)V

    :cond_c
    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->switchInDualCaptureModeByLayoutChange(Landroid/os/Bundle;)Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-ne v4, v10, :cond_d

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Landroid/util/Size;

    move/from16 v19, v6

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_PREVIOUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v7}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iput-object v10, v6, Lcom/motorola/camera/settings/SettingsManager;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v22

    move-object/from16 v23, v2

    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/settings/SettingsManager;->getCliVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    sget-object v22, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual60fps(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v22

    if-eqz v22, :cond_e

    sget-object v22, Lcom/motorola/camera/settings/CameraType;->CLI_ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static/range {v22 .. v22}, Lcom/motorola/camera/settings/SettingsManager;->getCliVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v22

    move/from16 v24, v12

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    move-object/from16 v22, v3

    new-instance v3, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;

    const/16 v0, 0xf

    invoke-direct {v3, v0}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v12, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;

    const/4 v12, 0x2

    invoke-direct {v3, v12, v2}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;-><init>(ILjava/util/List;)V

    move/from16 v25, v9

    goto/16 :goto_c

    :cond_e
    move-object/from16 v22, v3

    move/from16 v24, v12

    move/from16 v25, v9

    goto/16 :goto_d

    :cond_f
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move/from16 v24, v12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual8KSize(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual8KSize(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    move/from16 v25, v9

    goto :goto_b

    :cond_11
    :goto_a
    sget-object v3, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v12, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;

    move/from16 v25, v9

    const/16 v9, 0x10

    invoke-direct {v12, v9}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v9, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;

    const/4 v12, 0x3

    invoke-direct {v9, v12, v2}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;-><init>(ILjava/util/List;)V

    invoke-interface {v3, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_b
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual60fps(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentVirtual60fps(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    sget-object v0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;

    const/16 v9, 0x11

    invoke-direct {v3, v9}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;

    const/4 v9, 0x4

    invoke-direct {v3, v9, v2}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_13
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_PORTRAIT_HD:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getNormalVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;

    const/16 v9, 0x12

    invoke-direct {v3, v9}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;

    const/4 v9, 0x5

    invoke-direct {v3, v9, v2}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda5;-><init>(ILjava/util/List;)V

    :goto_c
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_14
    :goto_d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    new-instance v9, Lcom/motorola/camera/VideoFormat;

    new-instance v12, Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v26

    move-object/from16 v27, v13

    invoke-static/range {v26 .. v26}, Lcom/motorola/camera/settings/SettingsManager;->getInitVideoSize(Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-direct {v9, v12}, Lcom/motorola/camera/VideoFormat;-><init>(Lcom/motorola/camera/PreviewSize;)V

    sget-object v12, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v9, v12}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    if-nez v12, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/motorola/camera/settings/SettingsHelper;->isHevcSupported(Lcom/motorola/camera/VideoFormat;Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    if-eqz v12, :cond_15

    goto :goto_e

    :cond_15
    const/4 v12, 0x0

    goto :goto_f

    :cond_16
    :goto_e
    const/4 v12, 0x1

    :goto_f
    iput-boolean v12, v9, Lcom/motorola/camera/VideoFormat;->mIsHevcSupported:Z

    iget-object v12, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v13

    invoke-virtual {v12, v13, v3, v9}, Lcom/motorola/camera/settings/PersistBehavior;->load(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_17

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    :cond_17
    if-eqz v3, :cond_18

    sget-object v12, Lcom/motorola/camera/VideoFormat;->EMPTY:Lcom/motorola/camera/VideoFormat;

    invoke-static {v12, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    :cond_18
    move-object v3, v9

    :cond_19
    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v12, v12, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v12, :cond_1a

    new-instance v12, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;

    const/16 v13, 0x13

    invoke-direct {v12, v13}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v12}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    sget-object v12, Lcom/motorola/camera/VideoHelper;->UNSUPPORTED_DESKTOP_SIZES:Ljava/util/ArrayList;

    iget-object v13, v3, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    goto :goto_10

    :cond_1a
    move-object v9, v3

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/VideoFormat;

    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    iget-object v13, v12, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v12, v12, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1d

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-object v13, v9, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-static {v13, v12}, Lcom/motorola/camera/VideoHelper;->isSameResolution(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-static {v14, v12}, Lkotlin/collections/ArraysUtilJVM;->hasAspectRatio(Ljava/util/List;Landroid/util/Size;)Z

    move-result v13

    if-nez v13, :cond_1b

    invoke-static {v12}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1e
    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v14}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v3, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v7, Landroidx/viewpager/widget/ViewPager$1;

    const/16 v9, 0xb

    invoke-direct {v7, v9}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v3, v15}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/VideoFormat;

    invoke-static {v3, v7}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Lcom/motorola/camera/CameraApp;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v13

    invoke-virtual {v13, v7, v12}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v14, v13, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f

    iget-object v13, v13, Lcom/motorola/camera/settings/SettingsManager;->mFormatToSummaryMap:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v12

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsManager;->getHighSpeedVideoAllowedFormats(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;

    invoke-direct {v13, v2, v3, v7}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v13, v12}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v14, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_ASPECT_RATIO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v14, v7}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v7, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_RESOLUTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v7, Landroidx/viewpager/widget/ViewPager$1;

    invoke-direct {v7, v9}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/VideoFormat;

    invoke-static {v13}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    invoke-static {v6, v3}, Lcom/motorola/camera/settings/SettingsManager;->getVideoResolutionString(Lcom/motorola/camera/CameraApp;Lcom/motorola/camera/VideoFormat;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13

    :cond_21
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMacroCamera()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_REOPEN:Lcom/motorola/camera/settings/Setting$UpdateType;

    goto :goto_14

    :cond_22
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/settings/Setting$UpdateType;->PARAM_AND_RESTART:Lcom/motorola/camera/settings/Setting$UpdateType;

    :goto_14
    iput-object v2, v0, Lcom/motorola/camera/settings/Setting;->mUpdateType:Lcom/motorola/camera/settings/Setting$UpdateType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v2, :cond_23

    const/4 v0, 0x1

    goto :goto_15

    :cond_23
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_24

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_FRNT_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_16

    :cond_24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE_BACK_OVR:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_16
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Range;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEFAULT:Landroid/util/Range;

    invoke-virtual {v2, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    const-string v7, "SettingsManager"

    if-eqz v3, :cond_2c

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    if-eqz v0, :cond_2b

    array-length v3, v0

    if-nez v3, :cond_25

    goto :goto_19

    :cond_25
    array-length v3, v0

    const/16 v9, 0x190

    move v12, v9

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v3, :cond_27

    aget-object v13, v0, v9

    invoke-virtual {v13}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v15, 0x1e

    if-lt v13, v15, :cond_26

    if-gt v14, v15, :cond_26

    if-ge v14, v12, :cond_26

    move v12, v14

    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_27
    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v13, -0x1

    :goto_18
    array-length v14, v0

    if-ge v3, v14, :cond_29

    aget-object v14, v0, v3

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v15, v12, :cond_28

    if-ge v9, v14, :cond_28

    move v13, v3

    move v9, v14

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_29
    if-ltz v13, :cond_2a

    aget-object v0, v0, v13

    goto :goto_1b

    :cond_2a
    const-string v0, "Can\'t find an appropriate frame rate range!"

    goto :goto_1a

    :cond_2b
    :goto_19
    const-string v0, "No supported frame rates returned!"

    :goto_1a
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    :cond_2c
    :goto_1b
    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_DEBUG_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_FPS_RANGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v9, Landroid/util/Range;

    if-eqz v0, :cond_2d

    invoke-virtual {v2, v0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2d
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v6}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_2e
    if-nez v4, :cond_2f

    if-nez v1, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoom()V

    :cond_2f
    if-eqz v1, :cond_34

    if-eqz v5, :cond_34

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureRearMasterCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    if-ne v10, v1, :cond_30

    const/4 v1, 0x1

    goto :goto_1c

    :cond_30
    const/4 v1, 0x0

    :goto_1c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    if-ne v10, v2, :cond_31

    const/4 v2, 0x1

    goto :goto_1d

    :cond_31
    const/4 v2, 0x0

    :goto_1d
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    if-eqz v0, :cond_32

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_MASTER_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_32
    if-eqz v1, :cond_33

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_REAR_SLAVE_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_33
    if-eqz v2, :cond_34

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_FRONT_ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupZoomLimitMaxValue()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/Setting;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v4, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v3, 0x7f1204b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v3, 0x7f1204b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/motorola/camera/settings/Setting;->addValueToSummaryEntry(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->updateMediaVolumes()V

    goto :goto_1e

    :cond_36
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->MOTION_PHOTOS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v3, v1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_38

    if-eqz v2, :cond_37

    const/16 v3, 0x30

    if-ne v2, v3, :cond_38

    :cond_37
    const/4 v2, 0x1

    goto :goto_1f

    :cond_38
    const/4 v2, 0x0

    :goto_1f
    if-eqz v2, :cond_39

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheOriginalFilter()Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x1

    goto :goto_20

    :cond_39
    const/4 v2, 0x0

    :goto_20
    if-eqz v2, :cond_3a

    iget-boolean v2, v1, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz v2, :cond_3c

    goto :goto_21

    :cond_3a
    iget-boolean v2, v1, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/settings/Setting;->setLocked(Z)V

    goto/16 :goto_1e

    :cond_3b
    iget-boolean v2, v1, Lcom/motorola/camera/settings/Setting;->mLocked:Z

    if-eqz v2, :cond_3c

    :goto_21
    invoke-virtual {v1, v8}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_3c
    const/4 v2, 0x1

    invoke-virtual {v1, v8, v2}, Lcom/motorola/camera/settings/Setting;->setLocked(Ljava/lang/Object;Z)V

    goto/16 :goto_1e

    :cond_3d
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_STABILIZATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_REGION_CONFIG:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_22

    :cond_3e
    iget-object v2, v1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    goto/16 :goto_1e

    :cond_3f
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignore settig "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_40
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v8, v0}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->OUTPUT_YUV_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    new-array v3, v0, [Landroid/util/Size;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/PreviewSize;->transformFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_23
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_41

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/PreviewSize;

    new-instance v9, Landroid/util/Size;

    iget v12, v6, Lcom/motorola/camera/PreviewSize;->width:I

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v9, v12, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_41
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PANO_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PANO_SELFIE_PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v3}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v1, v4, v3}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v1, v6, v3}, Lcom/motorola/camera/settings/SettingsManager;->setSupportedValues(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DEFAULT_SIZE:Landroid/util/Size;

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v4, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v6, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v11, v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePictureSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v11, v0, v5}, Lcom/motorola/camera/settings/SettingsManager;->setInitialVideoSize(ZZZ)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TRUE_FALSE:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :cond_42
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->KEEP_LAST_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_TAP_ANYWHERE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v11, :cond_43

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    goto :goto_24

    :cond_43
    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :goto_24
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_SESSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v8}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QCFA_REMOSAIC_FINISHED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;->SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->getInt(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_44

    move v0, v2

    goto :goto_25

    :cond_44
    const/4 v0, 0x0

    :goto_25
    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->AUDIO_SOUND_FORCED:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;

    iget-boolean v4, v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    if-nez v4, :cond_45

    iget-boolean v4, v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    const-string v5, "audio.camerasound.force"

    invoke-static {v5, v4}, Lkotlin/ExceptionsKt;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    iput-boolean v2, v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mSet:Z

    :cond_45
    iget-boolean v2, v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_BOOL;->mValue:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android"

    const-string v5, "config_camera_sound_forced"

    const-string v6, "bool"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_46

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_26

    :cond_46
    const/4 v3, 0x0

    :goto_26
    if-nez v3, :cond_48

    if-nez v0, :cond_48

    if-eqz v2, :cond_47

    goto :goto_27

    :cond_47
    const/4 v0, 0x0

    goto :goto_28

    :cond_48
    :goto_27
    const/4 v0, 0x1

    :goto_28
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_49

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v0}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_29

    :cond_49
    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    :goto_29
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->WATERMARK_TIMESTAMP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->setAllowedValues(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/util/List;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBGServiceProcessingSupported()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBGServiceProcessingSupported()Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isPhotosProcessingSupported()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz v0, :cond_4a

    if-eqz v2, :cond_4a

    const/4 v0, 0x1

    goto :goto_2a

    :cond_4a
    const/4 v0, 0x0

    :goto_2a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_4b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->NATIVE_MAX_EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/settings/Setting;->setValue(Ljava/lang/Object;)V

    :cond_4c
    const/4 v0, 0x1

    invoke-static {v10, v11, v0}, Lcom/motorola/camera/settings/SettingsManager;->setupHdr(Lcom/motorola/camera/settings/CameraType;ZZ)V

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->setupFaceBeauty(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->setupAutoNV()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/settings/CaptureIntent;->isGeoAllowed()Z

    move-result v2

    if-eqz v2, :cond_4d

    goto :goto_2b

    :cond_4d
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->FALSE_LIST:Ljava/util/List;

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->setAllowedValues(Ljava/util/List;)V

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCurrentCamera dur:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MCF_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mcf initialization blocks dur:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->setupDualCameraAllowedValues(Z)V

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->setupModeAllowedValues(Z)V

    if-eqz v25, :cond_53

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getMainCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v3, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-static {v3, v0, v11}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getFallbackMode(ILjava/util/List;Z)I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v2

    if-ne v2, v3, :cond_50

    invoke-static {v0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    :cond_50
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSlider(Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_51

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/motorola/camera/settings/ModeSettingsHelper;->saveSlider(Ljava/util/ArrayList;)V

    :cond_51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MODE"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move v3, v0

    goto :goto_2c

    :cond_52
    move-object/from16 v1, p0

    :goto_2c
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3, v11}, Lcom/motorola/camera/settings/SettingsHelper;->getDualCameraModeByMode(IZ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_2d

    :cond_53
    move-object/from16 v1, p0

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->resetState()V

    goto :goto_2e

    :cond_54
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_55

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_MASTER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v28, v2

    move-object v2, v0

    move-object/from16 v0, v28

    goto :goto_2f

    :cond_55
    const/4 v7, 0x0

    :cond_56
    :goto_2f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    :cond_57
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    :cond_58
    :goto_30
    if-nez v24, :cond_59

    move-object/from16 v3, v23

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen$enumunboxing$(Ljava/lang/String;I)V

    xor-int/lit8 v4, v7, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    move-object/from16 v5, v21

    iget-object v6, v5, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v20

    invoke-static {v0, v1, v5, v4}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/airbnb/lottie/model/MutablePair;Landroid/os/Handler;)V

    goto :goto_31

    :cond_59
    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v3, v23

    :goto_31
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_5a
    const/4 v0, 0x2

    invoke-virtual {v3, v2, v0}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen$enumunboxing$(Ljava/lang/String;I)V

    invoke-virtual {v3, v2, v7}, Lcom/motorola/camera/device/CameraStateManager;->setMaster(Ljava/lang/String;Z)V

    iget-object v0, v5, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v5, v4}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/airbnb/lottie/model/MutablePair;Landroid/os/Handler;)V

    :cond_5b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v3, v2, v6}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen$enumunboxing$(Ljava/lang/String;I)V

    invoke-static {v2, v1, v5, v4}, Lcom/motorola/camera/device/CameraService;->openCamera(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Lcom/airbnb/lottie/model/MutablePair;Landroid/os/Handler;)V

    goto :goto_32

    :cond_5c
    if-eqz v19, :cond_5d

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MCF_PROCESSING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5d
    return-void
.end method
