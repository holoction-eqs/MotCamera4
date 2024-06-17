.class public Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

.field public mExposureLock:Z

.field public mFocusLock:Z

.field public mFrameCnt:I

.field public mHighSpeedRequestListener:Lcom/motorola/camera/device/callables/CallableListener;

.field public mIsComplete:Z

.field public mIsFlashExpected:Z

.field public final mLock:Z

.field public final mLockMap:Ljava/util/LinkedHashMap;

.field public final mLockType:I

.field public mPreTrigger:Z

.field public mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public mTimeoutChecking:Z

.field public mTimeoutFrames:I


# direct methods
.method public static -$$Nest$mprocessAutoFocusChanges(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;ZZ)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    if-eqz v7, :cond_1

    instance-of v0, p2, Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda1;

    move-object v1, v10

    move-object v2, p0

    move v5, p3

    move v6, p4

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Ljava/lang/Integer;ZZZLandroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    return-void
.end method

.method public static getAfState(Lcom/motorola/camera/fsm/camera/FsmContext;Z)I
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mLastAfState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getFocusBundle(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Landroid/os/Bundle;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "FOCUS_SUCCESS"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "FOCUS_LOCKED"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    const-string v1, "FOCUS_TIME"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    const-string v1, "FOCAL_LENGTH"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "FOCUS_TIMEOUT"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_FAILED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_SUCCESS:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    move-object v3, v4

    :cond_0
    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-virtual {v2, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    filled-new-array {p1, v1}, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/motorola/camera/utility/Flags;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    filled-new-array {p1, v0}, [Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/motorola/camera/utility/Flags;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :goto_2
    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    :cond_3
    return-void
.end method


# virtual methods
.method public final checkExposure(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    if-nez v1, :cond_3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v3, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted - missing android.control.mAeState!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide p2

    iget p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p0, v2, :cond_9

    iget-wide v4, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    cmp-long p0, v4, p2

    if-ltz p0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p0

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz p0, :cond_5

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v4, 0x5

    if-ne p0, v4, :cond_6

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRECAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v4, 0x4

    if-eq p0, v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_8

    :cond_7
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_8

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_8
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    iput-wide p2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_1
    return v0
.end method

.method public final checkFocus(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted - missing android.control.afState !"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v1, p0, :cond_2

    invoke-static {p1, v2, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p0, v1, :cond_3

    invoke-static {p1, v2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p0, v1, :cond_4

    move p0, v2

    goto :goto_0

    :cond_4
    move p0, v0

    :goto_0
    invoke-static {p1, v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    return v2
.end method

.method public final checkFocusTimeout(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-eqz v1, :cond_2

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFocusTimeoutDurationFlash:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Landroidx/work/Worker$2;

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V
    .locals 10

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v1, :cond_d

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v9, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-nez v1, :cond_4

    invoke-virtual {v9, v8}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v9, v6}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    :goto_3
    and-int/2addr v0, v1

    invoke-virtual {v9, v6}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v9, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v9, v5}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v9, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v9, v8}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v9, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->isEmptyPreviewBuilders()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v9, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v9, v2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v5, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    invoke-virtual {p0, v5, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->setRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {v9, v6}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v9, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move v1, v4

    goto :goto_6

    :cond_b
    :goto_5
    move v1, v3

    goto :goto_6

    :cond_c
    invoke-virtual {v9, v8}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_6

    :cond_d
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_6
    and-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v1, :cond_e

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v6}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_e
    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    move v1, v4

    goto :goto_8

    :cond_10
    :goto_7
    move v1, v3

    :goto_8
    and-int/2addr v0, v1

    iput-boolean v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    if-eqz v0, :cond_11

    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Landroidx/work/Worker$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    :cond_11
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v2, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    and-int/2addr v1, v2

    goto :goto_9

    :cond_12
    if-eqz v1, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-eq v0, v3, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_15
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getFocusBundle(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    iput v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    :cond_16
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FocusExposureLockRunnable"

    return-object p0
.end method

.method public final processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 10

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotReceived:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v8, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;

    const/4 v7, 0x2

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    iget v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    if-lt p1, v2, :cond_0

    const-string p1, "FocusExposureLockRunnable"

    const-string v2, "Lock focus time out"

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getFocusBundle(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    :cond_0
    return-void
.end method

.method public processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    iget-boolean v0, v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotPartialReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v5

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v5, 0x7

    .line 1
    iget v6, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v6, v5, :cond_0

    const/16 v5, 0x32

    goto :goto_0

    .line 2
    :cond_0
    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    .line 3
    :goto_0
    iput v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    .line 4
    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 5
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-boolean v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v10, :cond_3

    if-ne v6, v9, :cond_3

    const-string v11, "FOCUS_LOCK_SENT"

    invoke-virtual {v7, v11, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v3, "FOCUS_TIMEOUT"

    invoke-virtual {v7, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "FOCUS_LOCKED"

    invoke-virtual {v7, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    invoke-virtual {v0, v8, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_f

    :pswitch_0
    if-nez v10, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v11, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v11, v9

    :goto_2
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-nez v10, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v11, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v11, v9

    :goto_4
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v10, :cond_8

    if-nez v5, :cond_8

    move v5, v9

    goto :goto_5

    :cond_8
    move v5, v2

    :goto_5
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto/16 :goto_f

    :pswitch_1
    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    goto :goto_6

    :pswitch_2
    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    :goto_6
    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    goto :goto_f

    :pswitch_3
    if-nez v10, :cond_a

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    move v11, v2

    goto :goto_8

    :cond_a
    :goto_7
    move v11, v9

    :goto_8
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v10, :cond_b

    if-nez v5, :cond_b

    move v11, v9

    goto :goto_9

    :cond_b
    move v11, v2

    :goto_9
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-nez v10, :cond_d

    if-eqz v5, :cond_c

    goto :goto_a

    :cond_c
    move v5, v2

    goto :goto_b

    :cond_d
    :goto_a
    move v5, v9

    :goto_b
    iput-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    goto :goto_f

    :pswitch_4
    if-nez v10, :cond_f

    if-eqz v5, :cond_e

    goto :goto_c

    :cond_e
    move v11, v2

    goto :goto_d

    :cond_f
    :goto_c
    move v11, v9

    :goto_d
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v10, :cond_10

    if-nez v5, :cond_10

    iget-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-eqz v11, :cond_10

    move v11, v9

    goto :goto_e

    :cond_10
    move v11, v2

    :goto_e
    iput-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-nez v11, :cond_11

    if-nez v10, :cond_d

    :cond_11
    if-eqz v5, :cond_c

    goto :goto_a

    :goto_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureCapture()Z

    move-result v5

    const/4 v11, 0x2

    if-eqz v5, :cond_14

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareQCom()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_12
    iget-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    const-string v12, "ae_mode_manual_changed"

    if-eqz v5, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v13

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_13

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v5, v14}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v7, v12, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13
    if-nez v10, :cond_14

    invoke-virtual {v7, v12, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v12, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    :cond_14
    invoke-static {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;-><init>()V

    new-instance v7, Landroidx/work/Worker$2;

    const/16 v12, 0x18

    invoke-direct {v7, v12, v0, v3}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Landroidx/work/Worker$2;

    invoke-virtual {v4, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    invoke-virtual {v0, v1, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    iget-boolean v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_AFTER_EXPOSURE_READY:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v14, v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v7, :cond_16

    if-eqz v10, :cond_16

    if-ne v9, v6, :cond_16

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v7, v15, :cond_15

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v7, v15, :cond_16

    :cond_15
    invoke-virtual {v14, v13}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_10

    :cond_16
    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    :goto_10
    invoke-virtual {v0, v1, v9, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v14, v5}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v7

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v7, :cond_17

    invoke-virtual {v14, v8}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v14, v15}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_11

    :cond_17
    move v3, v9

    .line 7
    :goto_11
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v7

    if-nez v7, :cond_18

    goto :goto_12

    :cond_18
    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;-><init>()V

    new-instance v2, Landroidx/work/Worker$2;

    invoke-direct {v2, v12, v0, v7}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mTimeoutRunnable:Landroidx/work/Worker$2;

    invoke-virtual {v4, v7, v14}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v9, v6, :cond_19

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_19
    if-ne v11, v6, :cond_1a

    goto :goto_14

    :goto_12
    const/4 v2, 0x0

    goto :goto_15

    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v14, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    move-result v11

    invoke-virtual {v0, v1, v14, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z

    move-result v12

    or-int v2, v11, v12

    iget-boolean v11, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    or-int/2addr v2, v11

    iget-object v12, v14, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v11, :cond_1c

    if-eqz v10, :cond_1c

    if-ne v9, v6, :cond_1c

    sget-object v11, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v11, v9, :cond_1b

    sget-object v11, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v11, v9, :cond_1b

    sget-object v11, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v11, v9, :cond_1b

    sget-object v11, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v11, v9, :cond_1c

    :cond_1b
    invoke-virtual {v12, v13}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_13

    :cond_1c
    invoke-virtual {v0, v1, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z

    move-result v9

    or-int/2addr v2, v9

    :goto_13
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v10, :cond_1d

    const/4 v11, 0x1

    if-ne v11, v6, :cond_1d

    invoke-virtual {v12, v9}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    const/4 v2, 0x1

    :cond_1d
    invoke-virtual {v12, v5}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v12, v8}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v12, v15}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v12, v9}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    :cond_1e
    :goto_14
    invoke-virtual {v4, v7}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 8
    :cond_1f
    :goto_15
    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_25

    if-nez v3, :cond_20

    if-nez v2, :cond_20

    goto :goto_16

    :cond_20
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    const/4 v5, 0x1

    if-eqz v3, :cond_21

    invoke-virtual {v0, v1, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_21
    if-eqz v2, :cond_22

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_22
    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    if-eqz v3, :cond_23

    .line 9
    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    .line 10
    invoke-static {v1, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    invoke-static {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-virtual {v0, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_23
    if-eqz v2, :cond_24

    .line 13
    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_24
    return-void

    :cond_25
    :goto_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v2

    if-eqz v2, :cond_28

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAMERA_MODE_SHOW_SLAVE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 18
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    .line 19
    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 20
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualDepthMode()Z

    move-result v2

    if-nez v2, :cond_28

    :cond_26
    const/4 v2, 0x1

    if-eqz v10, :cond_27

    if-eq v6, v2, :cond_29

    :cond_27
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->stopRepeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_17

    :cond_28
    const/4 v2, 0x1

    :cond_29
    :goto_17
    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 21
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-boolean v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 4

    invoke-static {p2}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v1, p2}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "VIDEO_RECORDING"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v2, v0, p2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabIhc(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_3
    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->isEmptyPreviewBuilders()Z

    move-result v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlowMotionMode()Z

    move-result v1

    iget-object v3, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkSmvrMode()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$4;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/device/callables/CallableListener;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mHighSpeedRequestListener:Lcom/motorola/camera/device/callables/CallableListener;

    sget-object p2, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    iget-object v1, p2, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v1, Lcom/motorola/camera/device/callables/CreateHighSpeeedCaptureRequestsCallable;

    invoke-direct {v1, v0, p1, p0, v3}, Lcom/motorola/camera/device/callables/CreateHighSpeeedCaptureRequestsCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CallableListener;Landroid/os/Handler;)V

    iget-object p0, p2, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    invoke-static {v0, p1, p2, v2, v3}, Lcom/motorola/camera/device/CameraService;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;Landroid/os/Handler;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkFocusTimeout(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final sendComplete(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->mRefCnt:I

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->STREAM_MONO_CAPTURE:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public sendLockComplete(Landroid/os/Bundle;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public final setupExposureLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)Z
    .locals 8

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualStreamDepthMode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return v3

    :cond_0
    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    sget-object v4, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isHalZslEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->NO_REPROC_PRO_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeAuto()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-boolean v4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    :goto_3
    invoke-virtual {v0, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v5, v5, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    move v4, v1

    goto :goto_5

    :cond_6
    move v4, v3

    :goto_5
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v4, v4, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    move v4, v1

    :cond_8
    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz v4, :cond_a

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    if-eqz p0, :cond_9

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_7

    :cond_9
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    :goto_7
    invoke-virtual {p1, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return v1

    :cond_a
    invoke-virtual {p1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return v3
.end method

.method public final setupFocusLock(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v1, v3, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v8

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/fsm/RequestWrapper;->getCameraType(Z)Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAfState(Lcom/motorola/camera/fsm/camera/FsmContext;Z)I

    move-result v12

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, -0x1

    if-eq v12, v14, :cond_0

    if-eq v12, v13, :cond_0

    if-ne v12, v15, :cond_2

    :cond_0
    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    invoke-static/range {p3 .. p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v4

    monitor-enter v12

    :try_start_0
    iget-object v15, v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v15, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    monitor-exit v12

    if-nez v4, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/4 v12, 0x2

    if-nez v4, :cond_9

    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getAfState(Lcom/motorola/camera/fsm/camera/FsmContext;Z)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v15

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v15}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v15

    sget-object v13, Lcom/motorola/camera/mcf/Mcf;->FOCUS_PASSIVE_FOCUSED_GRANTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v15, v13}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    move v13, v7

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-ne v3, v12, :cond_7

    if-eqz v13, :cond_7

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v3, v7, :cond_7

    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFocusLockNeeded()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v7

    :goto_5
    if-nez v3, :cond_7

    move v3, v7

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    move v3, v7

    :goto_8
    iget-boolean v13, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v13, :cond_a

    if-nez v3, :cond_a

    move v3, v7

    goto :goto_9

    :cond_a
    const/4 v3, 0x0

    :goto_9
    xor-int/2addr v13, v7

    iget v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v15, v7, :cond_b

    if-eqz v13, :cond_b

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v13}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v13

    const-string v15, "FOCUS_LOCK_SENT"

    invoke-virtual {v13, v15}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_b
    iget v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/16 v12, 0x8

    if-eq v15, v14, :cond_d

    if-ne v15, v12, :cond_c

    goto :goto_a

    :cond_c
    const/4 v12, 0x5

    const/4 v14, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    move v14, v7

    const/4 v12, 0x5

    :goto_b
    if-ne v15, v12, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkIsp6S3ALib()Z

    move-result v12

    if-eqz v12, :cond_f

    monitor-enter v10

    :try_start_1
    iget v12, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v12, v7, :cond_e

    move v12, v7

    goto :goto_c

    :cond_e
    const/4 v12, 0x0

    :goto_c
    monitor-exit v10

    if-eqz v12, :cond_f

    move v12, v7

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v10

    throw v1

    :cond_f
    const/4 v12, 0x0

    :goto_d
    invoke-virtual {v10}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->isPassiveFocus()Z

    move-result v15

    if-nez v3, :cond_10

    if-eqz v13, :cond_11

    :cond_10
    if-nez v15, :cond_12

    :cond_11
    if-nez v14, :cond_12

    if-eqz v12, :cond_1e

    :cond_12
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v11, v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-static {v3, v7}, Lcom/motorola/camera/settings/SettingsHelper;->isContainedInArray([II)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isManualFocusEnabled()Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_13
    iget-boolean v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v3, :cond_17

    if-eqz v14, :cond_14

    invoke-virtual {v10, v6, v8, v7}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_f

    :cond_14
    monitor-enter v10

    :try_start_2
    iget v3, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_15

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v3, "AutoFocusStateMachine"

    const-string v4, "handleAfModeUninitialized: AF mode was not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v10

    goto :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_15
    :goto_e
    invoke-virtual {v10, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v10

    :goto_f
    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v3, v7, :cond_16

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "FOCUS_LOCK_SENT"

    invoke-virtual {v3, v4, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

    invoke-direct {v3, v0, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-virtual {v1, v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mAfStateListener:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->HAL_FOCUS_CALLBACK:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocusLockTime:J

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_17
    if-eqz v14, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v10, v6, v8, v3}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->triggerAutoFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_11

    :cond_18
    monitor-enter v10

    :try_start_5
    iget v3, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mCurrentAfMode:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_19

    monitor-enter v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    const-string v3, "AutoFocusStateMachine"

    const-string v9, "handleAfModeUninitialized: AF mode was not enabled"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v10

    goto :goto_10

    :catchall_3
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_19
    :goto_10
    invoke-virtual {v10, v1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->updateCurrentFocusMode(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v6, v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v10

    :goto_11
    if-eqz v4, :cond_1b

    monitor-enter v10

    :try_start_8
    iget-object v1, v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;->mFocusMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v11}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;

    if-eqz v1, :cond_1a

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$FocusHolder;->mWaitingUnlock:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_1a
    monitor-exit v10

    goto :goto_12

    :catchall_4
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_1b
    :goto_12
    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    const/4 v3, 0x7

    if-eq v3, v0, :cond_1c

    const/16 v3, 0x8

    if-eq v3, v0, :cond_1c

    move v4, v7

    goto :goto_13

    :cond_1c
    const/4 v4, 0x0

    :goto_13
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    if-eqz v4, :cond_1d

    iget-object v1, v1, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_15

    :catchall_5
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_1e
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v3, 0x0

    aget v1, v1, v3

    iput v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    goto :goto_14

    :cond_1f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    :goto_14
    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :goto_15
    iget-object v0, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v7

    return v0

    :catchall_6
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public final setupFullFrame(Lcom/motorola/camera/fsm/camera/FsmContext;ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    sget-object p2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p3, v0, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->addTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p3, v0, p2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setupPreTrigger(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Z)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, p3, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->getBuilder(Lcom/motorola/camera/fsm/camera/FsmContext;ZZ)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-static {p3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p3, 0x2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    :cond_1
    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_NOT_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    iget v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    if-ne v3, v6, :cond_4

    iget-object v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    if-eqz v6, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p2, v5}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return v0

    :cond_3
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_TIME_SENSITIVITY_REQUIRED:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_4
    sget-object p1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAwbSpeed:F

    const/4 v6, 0x0

    cmpl-float v7, p1, v6

    if-lez v7, :cond_7

    iget-boolean v7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move p1, v6

    :goto_2
    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->AWB_CONV_SPEED_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v2, v8}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v6, v7, v4, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result p0

    if-ne p0, p3, :cond_8

    goto :goto_4

    :cond_8
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4

    :cond_9
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    move v0, v3

    :goto_4
    if-eqz v0, :cond_c

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->EXPOSURE_PRETRIG_CHECK:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getHardwareLevel()I

    move-result p0

    if-ne p0, p3, :cond_b

    goto :goto_5

    :cond_b
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, p0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_c
    :goto_5
    invoke-virtual {p2, v5}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :goto_6
    invoke-virtual {p2, v5}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method public final shouldStreamSlaveInLpm()Z
    .locals 2

    invoke-super {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->shouldStreamSlaveInLpm()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->getCameraId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FocusExposureLockRunnable{mLockType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockType:I

    invoke-static {v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->stringValueOf$6(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFocusLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFocusLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExposureLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mExposureLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mPreTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeoutChecking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutChecking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFrameCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mFrameCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeoutFrames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mTimeoutFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFlashExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mIsFlashExpected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSceneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
