.class public final Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;
.super Lcom/motorola/camera/fsm/camera/CameraRunnable;
.source "SourceFile"


# instance fields
.field public final mCameraListeners:Ljava/util/Map;

.field public final mCreateCaptureSessionListener:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

.field public mMcfSupportCurrentMode:Z

.field public mSessionMode:I


# direct methods
.method public static -$$Nest$mcheckComplete(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object p2, Lcom/motorola/camera/CameraKpi$KPI;->CREATE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraRunnable;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCreateCaptureSessionListener:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    return-void
.end method

.method public static onSessionClosed(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ERROR_RETRY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_retry"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;->removePreviousOneShotErrorCallback(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->META_DATA_AUX_BAYER_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_1
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->closeMcfStream(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/VideoMode;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfInputStream;->close()V

    :cond_6
    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf;->closeReprocess(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "cameraId"

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v2, v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->surfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    if-ne v2, v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_8
    const-string v0, "CreateCaptureSessionRunnable"

    const-string v2, "mcf close exception."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "QCFA_SHOT"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraSession$enumunboxing$(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/device/CameraStateManager;->setPreviewStatus$enumunboxing$(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/device/CameraStateManager;->setLinked(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    sget-object v2, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iget-object v3, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;

    if-eqz v3, :cond_d

    iget-object v4, v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriterLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/media/ImageWriter;->close()V

    iput-object v1, v3, Lcom/motorola/camera/saving/ImageCaptureManager$ReprocWriterHolder;->mImageWriter:Landroid/media/ImageWriter;

    :cond_c
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_d
    :goto_5
    iget-object v1, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mReprocWriterMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->clearZslCaptureMap()V

    iget-object v1, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-static {v5}, Lcom/motorola/camera/saving/ImageCaptureManager;->releaseImages(Lcom/motorola/camera/saving/CaptureHolder;)V

    goto :goto_7

    :cond_e
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_6

    :cond_f
    iget-object v1, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mCaptureHolderMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v5}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V

    goto :goto_9

    :cond_10
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_8

    :cond_11
    iget-object v1, v2, Lcom/motorola/camera/saving/ImageCaptureManager;->mUnprocessedImages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachines()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->resetState()V

    goto :goto_a

    :cond_12
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_13

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->CLOSE_SESSION:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_13
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mSessionMode:I

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p3, :cond_1

    move p3, v1

    goto :goto_1

    :cond_1
    move p3, v2

    :goto_1
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocCameraTypes(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0, p2, p3, v2, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    goto :goto_3

    .line 6
    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackSlaveCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentBackCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/device/CameraStateManager;->getCameraOpen$enumunboxing$(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_6

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    :goto_3
    iget-boolean p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mMcfSupportCurrentMode:Z

    invoke-virtual {p0, p2, p1, v2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final setupSession(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/settings/CameraType;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p2 .. p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/motorola/camera/device/CameraStateManager;->setCameraSession$enumunboxing$(Ljava/lang/String;I)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;

    invoke-direct {v5, v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCameraListeners:Ljava/util/Map;

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isAvailableSessionKeys(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->isEmptyPreviewBuilders()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    :goto_1
    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v9}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/settings/CustomKeyHelper;->ISMOTCAMERA_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v9, v2, v3, v10}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperZoomMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setExtendedMaxZoom(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setDualCaptureMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKZslMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKHfpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkQuickPreviewOn(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setCurrentMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v9

    instance-of v9, v9, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    if-eqz v9, :cond_5

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSuperNightMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setUwDcAppProcess(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperNightMode()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    sget-object v9, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v9, v9, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomModeSwitchGains:[F

    sget-object v10, Lcom/motorola/camera/settings/CustomKeyHelper;->MOT_CONTROL_SR_ZOOM_RT_GAIN_RANGE_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v10, v2, v3, v9}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v3, v1, v2}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->enableMTKISPTuningData(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v9

    instance-of v9, v9, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    if-eqz v9, :cond_6

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMTKSmvrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoHDR10Mode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setMtkSHDRMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVideoNightVision(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setAutoFocusTrackingEnable(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-static {v1, v2, v3, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setVstabIhc(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    invoke-static {v1, v2, v3, v7}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->setRecordMirror(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_6
    :goto_2
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v8

    :goto_3
    new-array v9, v7, [Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aput-boolean v6, v9, v6

    iget-object v11, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onSurfaceKeysRequired()Ljava/util/ArrayList;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;

    iget-object v13, v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->cameraId:Ljava/lang/String;

    invoke-static {v13, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_4

    :cond_8
    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v13, v13, Lcom/motorola/camera/fsm/camera/FsmContext;->mSurfaceManager:Lcom/motorola/camera/fsm/camera/SurfaceManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v13, Lcom/motorola/camera/fsm/camera/SurfaceManager;->surfaceMap:Ljava/util/TreeMap;

    invoke-virtual {v13, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Surface;

    goto :goto_5

    :cond_9
    move-object v13, v8

    :goto_5
    if-nez v13, :cond_a

    goto :goto_4

    :cond_a
    new-instance v14, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v14, v13}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    iget-object v12, v12, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceKey;->physicalCameraId:Ljava/lang/String;

    if-eqz v12, :cond_b

    invoke-virtual {v14, v12}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    aput-boolean v7, v9, v6

    :cond_b
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    aget-boolean v11, v9, v6

    if-eqz v3, :cond_d

    move v12, v7

    goto :goto_6

    :cond_d
    move v12, v6

    :goto_6
    or-int/2addr v11, v12

    aput-boolean v11, v9, v6

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v11, Landroid/util/Size;

    new-instance v12, Landroidx/media3/extractor/VorbisUtil$Mode;

    invoke-direct {v12}, Landroidx/media3/extractor/VorbisUtil$Mode;-><init>()V

    move/from16 v13, p4

    iput-boolean v13, v12, Landroidx/media3/extractor/VorbisUtil$Mode;->blockFlag:Z

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v13

    iput v13, v12, Landroidx/media3/extractor/VorbisUtil$Mode;->windowType:I

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    iput v11, v12, Landroidx/media3/extractor/VorbisUtil$Mode;->transformType:I

    const/16 v11, 0x23

    iput v11, v12, Landroidx/media3/extractor/VorbisUtil$Mode;->mapping:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/settings/CameraType;->isOfflineReproc()Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v4, p2

    invoke-static {v8, v4}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v4

    goto :goto_7

    :cond_f
    move-object/from16 v4, p2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    :cond_10
    invoke-static {v4, v6}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v4

    :goto_7
    if-nez v4, :cond_11

    const-string v4, "CreateCaptureSessionRunnable"

    const-string v7, "No input sizes defined!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v7, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mState:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-direct {v7, v11, v13, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v4, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_9

    :cond_11
    new-instance v7, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v7, v8, v4, v11}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    goto :goto_8

    :cond_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaSession(I)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    new-instance v7, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getQcfaRawImageFormat()I

    move-result v11

    invoke-direct {v7, v8, v4, v11}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    :goto_8
    move-object v11, v7

    goto :goto_a

    :cond_13
    :goto_9
    move-object v11, v8

    :goto_a
    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;->mCreateCaptureSessionListener:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v8, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    aget-boolean v13, v9, v6

    sget-object v14, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v15, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v14, Lcom/motorola/camera/device/CameraService;->mServiceHandler:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/Handler;

    move-object v0, v15

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    move-object v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v12

    move-object v9, v11

    move/from16 v10, p3

    move v11, v13

    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Ljava/util/ArrayList;Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$CreateCaptureSessionCameraListener;Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;Landroid/os/Handler;Landroid/os/Handler;Landroidx/media3/extractor/VorbisUtil$Mode;Landroid/hardware/camera2/params/InputConfiguration;ZZ)V

    invoke-virtual {v14, v15}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    return-void
.end method
