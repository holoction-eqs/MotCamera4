.class public final Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBuilders:Ljava/util/List;

.field public final mCameraId:Ljava/lang/String;

.field public final mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public final mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;Ljava/lang/String;Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/Mcf$ShotSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;-><init>()V

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mBuilders:Ljava/util/List;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-void
.end method


# virtual methods
.method public final getBuilders()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mBuilders:Ljava/util/List;

    return-object p0
.end method

.method public final getCameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final playShutterAndSendComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v0, v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureCompletePending:Z

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkCaptureComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mIsUnlockShutterEarlyDone:Z

    :cond_2
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureCompletePending:Z

    :cond_3
    return-void
.end method

.method public final processCaptureBufferLost(I)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mCancelSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfCancelInterface;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelJob(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final processForChanges(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-string v2, "McfCaptureRequestRunnable"

    if-nez v1, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string p0, "processForChanges: CaptureRequest tag is null!"

    goto :goto_2

    :cond_1
    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v1, :cond_5

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string p0, "MCF request holder is null"

    :goto_2
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v1, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrBurstEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-static {v0, p1}, Lcom/motorola/camera/IqConfigManager;->isQcMfnrBurstEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-static {v0, p1}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p1

    monitor-enter v1

    :try_start_0
    iget v0, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    sub-int/2addr v0, p1

    iput v0, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    if-gez v0, :cond_7

    iput v5, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit v1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->block()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->setBlockShutter(Z)V

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method public final processForEarlierShutter(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez p1, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string p0, "CaptureRequest tag is null!"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v0, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string p0, "invalid holder!"

    :goto_0
    const-string p1, "McfCaptureRequestRunnable"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isEarlyShutterScene()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v1, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->playShutterAndSendComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object p1, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_NV_SLOW_CAPTURE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutter:Z

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->playShutterOnce(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final processForFailures(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v1, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    const-string v4, "McfCaptureRequestRunnable"

    if-nez v3, :cond_0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No job matching "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v5, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;

    if-nez v6, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No request matching "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v4, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->removeShotTimeoutCallback(Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    iget-object v1, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v1, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrBurstEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, p2}, Lcom/motorola/camera/IqConfigManager;->isQcMfnrBurstEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-static {p1, p2}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p1

    monitor-enter v1

    :try_start_0
    iget p2, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    sub-int/2addr p2, p1

    iput p2, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    if-gez p2, :cond_2

    iput v4, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->setBlockShutter(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getMcfStateMachine()Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    move-result-object p0

    iget-object p1, v3, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget p1, p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    if-eqz p0, :cond_4

    iput-boolean v4, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mIsUnlockShutterEarlyDone:Z

    :cond_4
    iget p0, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumRequests:I

    if-lez p0, :cond_5

    iget p0, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumFailures:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v6, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;->mNumFailures:I

    invoke-static {v0, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->checkJpegReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfRequestHolder;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    :cond_5
    return-void
.end method

.method public final processForPartial(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIModes(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->processForEarlierShutter(Landroid/hardware/camera2/CaptureRequest;)V

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_SUPPORT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-nez v4, :cond_1

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string p0, "CaptureRequest tag is null!"

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-nez v1, :cond_2

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    const-string p0, "MCF request holder is null"

    :goto_0
    const-string p1, "McfCaptureRequestRunnable"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2
    iget-object v4, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-boolean v4, v4, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrBurstEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v6}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v6

    iget-object v7, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mQcMfnrBurstRefCount:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->block()Z

    move-result v7

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->mShutterThrottle:Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;

    if-eqz v7, :cond_4

    invoke-virtual {v5, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->setBlockShutter(Z)V

    move v3, v2

    goto :goto_1

    :cond_4
    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;->mRootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v7, v7, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v7}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/motorola/camera/IqConfigManager;->isQcMfnrBurstEnabled(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v6, Lcom/motorola/camera/settings/CustomKeyHelper;->QC_MFNR_BURST_ENABLE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v6, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    if-nez p2, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    if-gtz p2, :cond_8

    invoke-virtual {v5, v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->setBlockShutter(Z)V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v5, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->setBlockShutter(Z)V

    invoke-static {p1, v0}, Lcom/motorola/camera/IqConfigManager;->mfnrShutterThrottle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)J

    move-result-wide v7

    monitor-enter v5

    :try_start_0
    iget-wide v9, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J

    cmp-long p2, v7, v9

    if-eqz p2, :cond_7

    iput-wide v7, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_7
    monitor-exit v5

    move v3, v6

    :cond_8
    :goto_1
    if-eqz v3, :cond_12

    invoke-virtual {v5, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->setBlockShutter(Z)V

    invoke-static {p1, v0}, Lcom/motorola/camera/IqConfigManager;->mfnrShutterThrottle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)J

    move-result-wide v2

    monitor-enter v5

    :try_start_1
    iget-wide v6, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J

    cmp-long p2, v2, v6

    if-eqz p2, :cond_9

    iput-wide v2, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$ShutterThrottle;->mDuration:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit v5

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/motorola/camera/IqConfigManager;->mMfnrShutterDelayEnable:Z

    const-wide/16 v2, 0x0

    if-nez p2, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {p1, v0}, Lcom/motorola/camera/IqConfigManager;->getQcMfnrNumFrames(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_b

    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->mfnrLowLightExposureHint()F

    move-result p2

    float-to-long v5, p2

    add-int/lit8 p1, p1, -0x1

    int-to-long p1, p1

    mul-long/2addr p1, v5

    goto :goto_3

    :cond_b
    :goto_2
    move-wide p1, v2

    :goto_3
    cmp-long v0, p1, v2

    if-lez v0, :cond_c

    iget-object v0, v4, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/work/Worker$2;

    const/16 v3, 0x19

    invoke-direct {v2, v3, p0, v1}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_c
    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->playShutterAndSendComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_d
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMtkMfnrCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-eq v4, v5, :cond_e

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v4, v5, :cond_f

    :cond_e
    move v2, v3

    :cond_f
    if-eqz v2, :cond_10

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_CONTROL_CAPTURE_NEXT_READY_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_12

    iget-object p1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfJobHolderMap:Ljava/util/Map;

    iget p2, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    if-eqz p1, :cond_12

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->playShutterAndSendComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    :cond_12
    :goto_4
    return-void
.end method

.method public final processForStarted(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isFastCaptureUIModes(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->processForEarlierShutter(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public final repeating(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mFrameTarget:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v0, v1, :cond_0

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_MCF_PROCESS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    .line 3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_JPEG_REQUEST:Lcom/motorola/camera/CameraKpi$KPI;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_YUV_CAPTURE:Lcom/motorola/camera/CameraKpi$KPI;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final sendComplete()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfReprocHolder;->mReprocRequest:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->mMcfReprocList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->postCheckCaptureRunnables(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrktCaptureRequestRunnable{mBuilders="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mBuilders:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSeqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mShotSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
