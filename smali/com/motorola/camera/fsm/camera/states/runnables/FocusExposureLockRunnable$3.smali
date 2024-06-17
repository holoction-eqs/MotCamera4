.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;
.super Lcom/motorola/camera/device/callables/CaptureRequestAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$isEmptyPreviewBuilders:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->val$cameraId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->val$isEmptyPreviewBuilders:Z

    invoke-direct {p0}, Lcom/motorola/camera/device/callables/CaptureRequestAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->val$cameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotReceived:Z

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->processForChanges(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public final onCaptureProgressed(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->val$cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$3;->val$isEmptyPreviewBuilders:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotPartialReceived:Z

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->processForPartialChanges(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V

    :cond_1
    :goto_0
    return-void
.end method
