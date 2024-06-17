.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# instance fields
.field public final mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

.field public mCancelled:Z

.field public mMcfClose:Z

.field public final mMcfCloseLock:Ljava/lang/Object;

.field public final mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

.field public final mStopCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mStopCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final close(Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->cancelAllJobs()V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public final closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenSessionCameraIds()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const/4 v3, 0x1

    invoke-static {p1, v2, p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;->closeAllSessions(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->onSessionClosed(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 1

    instance-of p1, p1, Lcom/motorola/camera/device/exception/CameraNotOpenException;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 1
    const-class v1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureRecordMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iput-boolean v9, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto :goto_0

    :cond_0
    monitor-exit v1

    .line 4
    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v8, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "OUTSTANDING_QUEUE_SIZE"

    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->captureRecordSize()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v8, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    const/4 v10, 0x0

    .line 7
    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCancelled:Z

    .line 8
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v8, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    :cond_1
    invoke-virtual {v1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    .line 12
    sget-object v3, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    .line 13
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    .line 14
    sget-object v5, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Landroidx/core/text/BidiFormatter$Builder;

    .line 15
    iget-object v5, v5, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v4, v5}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    .line 17
    monitor-enter v3

    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v9

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfRequestHolder;->mProgressList:Ljava/util/ArrayList;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v10

    goto :goto_3

    :cond_4
    :goto_2
    move v6, v9

    :goto_3
    and-int/2addr v4, v6

    goto :goto_1

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v4, :cond_7

    .line 18
    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v9

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;

    .line 19
    iget-boolean v5, v5, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mIsUnlockShutterEarlyDone:Z

    xor-int/2addr v5, v9

    and-int/2addr v4, v5

    goto :goto_4

    .line 20
    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_7

    .line 21
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->cancelAllJobs()V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 22
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 23
    :cond_7
    :goto_5
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v1

    .line 24
    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mCameraStatusListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfCloseLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iput-boolean v10, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfClose:Z

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->isQueueEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mMcfQueueListener:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$1;->onQueueEmpty()V

    :cond_8
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 25
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/motorola/camera/device/CameraStateManager;->getOpenSessionCameraIds()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/device/CameraStateManager;->getPreviewStatus$enumunboxing$(Ljava/lang/String;)I

    move-result v5

    if-ne v9, v5, :cond_9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v6, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->mStopCameraListener:Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;

    .line 27
    iget-object v7, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehInHal(Z)Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 29
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 30
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v2

    if-eqz v1, :cond_b

    move v1, v5

    goto :goto_8

    :cond_b
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v9, v3

    move-object v3, v14

    move v10, v5

    move-object v5, v15

    move-object/from16 p3, v7

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$1;Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable$$ExternalSyntheticLambda0;Landroid/os/Handler;)V

    move-object/from16 v1, p3

    invoke-static {v14, v9, v15, v1}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    goto :goto_9

    :cond_c
    move v10, v5

    move-object v1, v7

    invoke-static {v14, v6, v15, v1}, Lcom/motorola/camera/device/CameraService;->stopRepeatingRequest(Ljava/lang/String;Lcom/motorola/camera/device/callables/StopRepeatingListener;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;)V

    .line 31
    :goto_9
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v1

    invoke-virtual {v1, v14, v10}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus$enumunboxing$(Ljava/lang/String;I)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_7

    :cond_d
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v11, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :catch_0
    const/4 v1, 0x0

    :goto_a
    if-nez v1, :cond_e

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    :catchall_1
    move-exception v0

    .line 32
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 33
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 34
    :cond_f
    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->closeCaptureSessions(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    .line 35
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 36
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v1

    .line 37
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    .line 38
    sget-object v2, Lcom/motorola/camera/analytics/UserExitAppEvent;->MCF_QUEUE_SIZE:Landroidx/core/text/BidiFormatter$Builder;

    .line 39
    iget-object v2, v2, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v3, v2}, Landroidx/work/impl/StartStopTokens;->putInt(ILjava/lang/String;)V

    :cond_10
    :goto_b
    const/4 v1, 0x1

    .line 41
    :goto_c
    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 42
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    if-eqz v1, :cond_12

    .line 43
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 44
    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mLastError:Ljava/lang/Object;

    .line 45
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_11

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "OPEN_CAMERA_ERROR"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x1

    goto :goto_d

    :cond_11
    const/4 v3, 0x0

    :goto_d
    invoke-static {v8, v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    .line 46
    iget-object v0, v8, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    .line 47
    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    .line 48
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    :cond_12
    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->requestAudioFocus(Z)V

    invoke-static {v0}, Lcom/motorola/camera/VideoHelper;->muteNotifications(Z)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->cleanUpLockedBut(Ljava/util/List;)V

    .line 51
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    .line 52
    iput-boolean v0, v1, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    .line 53
    iput-boolean v0, v1, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    .line 54
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache;->getInstance()Lcom/motorola/camera/ui/widgets/gl/ShaderCache;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/ShaderCache$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShaderCache;I)V

    const-string v0, "ShaderCache"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 55
    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    iput-object v1, v0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    .line 57
    const-class v2, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v2

    .line 58
    :try_start_8
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    .line 59
    iput-object v1, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v2

    .line 60
    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    monitor-exit v0

    return-void

    :catchall_3
    move-exception v0

    .line 61
    monitor-exit v2

    throw v0

    :catchall_4
    move-exception v0

    .line 62
    monitor-exit v1

    throw v0
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseAppRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
