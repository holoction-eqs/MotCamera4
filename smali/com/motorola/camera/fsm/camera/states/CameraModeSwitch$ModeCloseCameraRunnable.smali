.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/callables/CameraListener;


# direct methods
.method public static closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearModesBuilders()V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    sget-object p2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStreams()V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStreams()V

    sget-object p2, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_2
    sget-object p2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-static {p2}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    sget-object p2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-static {p2}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->stop()V

    :cond_3
    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;->closeAllOpenedCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V

    return-void
.end method

.method public static closeAllOpenedCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->getOpenCameraIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->closeAllModeSessionSurfaces()V

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/device/CameraStateManager;->mCameraInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;

    iget-boolean v3, v3, Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;->mNeedCloseAfterError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    monitor-exit v0

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraOpen$enumunboxing$(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v5}, Lcom/motorola/camera/device/CameraStateManager;->setCloseAfterError(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->closeAllModeSessionSurfaces()V

    :cond_2
    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v6, "USE_CASE"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v3, v6, :cond_3

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v3, v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v6, Lcom/motorola/camera/device/callables/CloseCameraCallable;

    invoke-direct {v6, v2, p1, v3, v4}, Lcom/motorola/camera/device/callables/CloseCameraCallable;-><init>(Ljava/lang/String;Lcom/motorola/camera/device/callables/CameraListener;Landroid/os/Handler;Z)V

    invoke-virtual {v5, v6}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    return-void
.end method


# virtual methods
.method public final bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

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

.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger$SwitchType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SWITCH_TYPE"

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-static {p2, p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;->closeAllOpenedCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    .line 3
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_CALLED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p2, v0, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_1
    invoke-static {p2, p0, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;->closeAllCameras(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/device/callables/CameraListener;Z)V

    :goto_0
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
