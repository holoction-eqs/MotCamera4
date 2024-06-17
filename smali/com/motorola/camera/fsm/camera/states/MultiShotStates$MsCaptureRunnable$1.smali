.class public final Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;
.super Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;
.source "SourceFile"


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$imageSize:I

.field public final synthetic val$rootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;ILcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$imageSize:I

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$rootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/SetRepeatingRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzno;->dumpCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->sendError()V

    goto :goto_1

    :cond_0
    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    iget-wide v2, p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->mShotStartTime:J

    sub-long v2, v0, v2

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v4, Lcom/motorola/camera/CameraKpi$KPI;->MULTI_SHOT_TO_SHOT:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    monitor-enter p1

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p1, v4, v2, v2, v3}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;Ljava/lang/Long;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    iput-wide v0, p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->mShotStartTime:J

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_0
    sget-boolean p1, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    invoke-static {p1}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_2
    :goto_1
    sget-object p1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-boolean p1, p1, Lcom/motorola/camera/saving/ImageCaptureManager;->mIsSaveQueueFull:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/MultiShotStates;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-boolean v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTISHOT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine;->onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_2

    :cond_3
    sget-boolean p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->mMtkCshotSupport:Z

    const-string p0, "MultiShotStates"

    const-string p1, "onCaptureCompleted, save queue is full and will not update count indicator"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final onCaptureFailed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->sendError()V

    :cond_0
    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceAborted()V
    .locals 0

    return-void
.end method

.method public final onCaptureSequenceCompleted()V
    .locals 0

    return-void
.end method

.method public final onCaptureStarted(Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$imageSize:I

    invoke-static {v0}, Lcom/motorola/camera/saving/ImageCaptureManager;->checkSaveQueueIsFull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$rootRecord:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "MULTI_SHOT_COUNT"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->val$cameraId:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/motorola/camera/saving/ImageCaptureManager;->onCaptureStarted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;J)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable$1;->this$1:Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates$MsCaptureRunnable;->sendError()V

    :cond_1
    return-void
.end method
