.class public abstract Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# static fields
.field public static final sShotTimeoutCallbacks:Landroid/util/ArrayMap;


# instance fields
.field public mCameraId:Ljava/lang/String;

.field public final mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

.field public mIsComplete:Z

.field public mIsQcfaCompleteSent:Z

.field public mIsQcfaShot:Z

.field public mRequestCount:I

.field public mRequestsCompleted:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sShotTimeoutCallbacks:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/CameraRunnable;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    return-void
.end method

.method public static postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$$ExternalSyntheticLambda0;J)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sShotTimeoutCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sShotTimeoutCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public captureBufferLost()V
    .locals 0

    return-void
.end method

.method public captureFailed()V
    .locals 0

    return-void
.end method

.method public getBuilders()Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isQcfaEarlierShot()Z
    .locals 1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onComplete()V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public processCaptureBufferLost(I)V
    .locals 0

    return-void
.end method

.method public processForChanges(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionEarlierTimeout()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    :cond_1
    return-void
.end method

.method public processForPartial(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_NEXT_READY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete()V

    :cond_6
    :goto_0
    return-void
.end method

.method public processForStarted(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    return-void
.end method

.method public repeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLongExposureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExposureTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v2, v1, v0, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->removeTarget(Lcom/motorola/camera/fsm/camera/SurfaceManager;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2, p1}, Lcom/motorola/camera/device/CameraService;->setRepeatingRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getCameraId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestsCompleted:I

    sget-object p3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "HAL_PROCESSING"

    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QCFA_SHOT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaShot:Z

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsQcfaCompleteSent:Z

    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isNonMcfShotInQcfaMode(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "SHUTTER_PLAYED"

    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->getBuilders()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->appendAppInfoToMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestCount:I

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCaptureRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$1;

    iget-object v7, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p3

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p3, p0, v5, v7}, Lcom/motorola/camera/device/CameraService;->capture(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;Landroid/os/Handler;)V

    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->repeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 1
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->isQcfaEarlierShot()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSingleSessionEarlierTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    if-eqz v0, :cond_4

    .line 2
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p3, p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;I)V

    .line 4
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQcfaFastCaptureUITimeout:J

    goto :goto_2

    .line 5
    :cond_4
    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isSwHwQcfaShot(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p3, p3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;I)V

    .line 6
    sget-object p0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    .line 7
    aget-wide p0, p0, p1

    :goto_2
    invoke-static {p2, p3, v0, p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->postShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;ILcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable$$ExternalSyntheticLambda0;J)V

    goto :goto_4

    :cond_5
    if-le v0, v1, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    iget p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mRequestCount:I

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    .line 8
    sget-object p1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    .line 9
    new-instance p2, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;

    .line 10
    iget-object p3, p1, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    .line 11
    move-object v6, p3

    check-cast v6, Landroid/os/Handler;

    move-object v1, p2

    move-object v4, p0

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/device/callables/CaptureBurstRequestCallable;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/motorola/camera/device/callables/CameraListener;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-virtual {p1, p2}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_4

    :cond_7
    const-string p2, "CaptureRequestRunnable"

    const-string p3, "No builders available for capture"

    .line 13
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 15
    new-instance p3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    .line 17
    invoke-direct {p3, v0, p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 18
    invoke-virtual {p2, p3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_8
    :goto_4
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p0

    if-nez p0, :cond_9

    .line 19
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 20
    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public sendComplete()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void
.end method

.method public final sendComplete(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "HAL_PROCESSING"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mIsComplete:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const-string v1, "SEQ_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 5
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    .line 6
    invoke-direct {p1, v1, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method
