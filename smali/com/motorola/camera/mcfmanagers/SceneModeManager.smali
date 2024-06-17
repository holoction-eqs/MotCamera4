.class public final Lcom/motorola/camera/mcfmanagers/SceneModeManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# static fields
.field public static sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

.field public static sIsFallBackCapture:Z

.field public static sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public static sSceneLockedForCapture:Z

.field public static sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    sput-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    new-instance v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    new-instance v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    sput-boolean v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsFallBackCapture:Z

    return-void
.end method

.method public static getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 2

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-object p0

    :cond_0
    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfMultiFrameBokehSupported(Z)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p3

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->MULTI_FRAME_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSFBokeh()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {p1, v0}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    invoke-static {p0, v0}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p3

    if-eqz p3, :cond_2

    if-nez p2, :cond_3

    :cond_2
    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :cond_5
    return-object p1
.end method

.method public static declared-synchronized getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 2

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawSuperNight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isJGSuperNight()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isLRNVAuto()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isASAutoSuperNight()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lcom/motorola/camera/IqConfigManager;->getIqJsonOverrideScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMfnr()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_1
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfHdrScBokehSupported(Z)Z

    move-result v0

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto :goto_2

    :cond_6
    move-object p0, p1

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfHdrScBokehSupported(Z)Z

    move-result v0

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p2

    invoke-static {p0, p1, v1, p2}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getBokehScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/Mcf$SceneMode;ZZ)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    :cond_9
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorVideoMode()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_b

    :cond_a
    const/4 v1, 0x1

    :cond_b
    if-nez v1, :cond_c

    if-nez p3, :cond_d

    :cond_c
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FAST_NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :cond_d
    return-object p0
.end method

.method public static declared-synchronized getNextCaptureScene(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/mcf/Mcf$SceneMode;
    .locals 4

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlash()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFlashAvailable()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v1

    :goto_0
    sget-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object v2, v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMfnrEnabledForCurrentMode()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    invoke-static {v2, v1, p0, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v2

    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsFallBackCapture:Z

    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFastCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-boolean p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    if-nez p0, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->isFallBackScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsFallBackCapture:Z

    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FALL_BACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthShotReady()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isBokeh()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_3
    :try_start_2
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK_SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v2, p0, :cond_4

    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HAL_FRAME_STACK:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v0

    return-object p0

    :cond_5
    :try_start_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isFastCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;)Z
    .locals 5

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getMaxAllowedJobs(Lcom/motorola/camera/mcf/Mcf$SceneMode;)I

    move-result p1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda4;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/motorola/camera/CameraKpi$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mForegroundProcessingMediaDataMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    int-to-long v0, p0

    add-long/2addr v3, v0

    int-to-long p0, p1

    cmp-long p0, v3, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized isFlashExpected()Z
    .locals 2

    .line 1
    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-boolean v1, v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isFlashExpected(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isFlashExpected()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p0

    return p0
.end method

.method public static isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFlashAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine;->getExposureInfo(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/ExposureStateMachine$ExposureInfo;->mState:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v3, p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result p0

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_4

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static sendCurrentSceneToListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object v0, v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized updateCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    const-string v0, "updateCurrentScene - "

    const-class v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    sget-object v3, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->canSafelyChangeStreamSetup()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object v0, v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_0
    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    sget-object v3, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    iget-object v4, v3, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iget-boolean v3, v3, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;->mIsFlash:Z

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sendCurrentSceneToListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized updateSceneMode(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V
    .locals 3

    const-class v0, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter v0

    if-nez p2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isHdr()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isMcfLowLightFrameStack()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUltraResModeMcfShotOnly()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaUpscaleOnly(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-boolean p2, p2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGainOnlyQcfaDecision:Z

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaShotGuardRunnable;->isAnalogGainThresholdMet(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlash()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isRawSuperNight()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isJGSuperNight()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isLRNVAuto()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isASAutoSuperNight()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isDisplayFlash()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoDisplayFlashLit()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :cond_3
    sput-object p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlash()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFlashAvailable()Z

    move-result p2

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p2

    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, p2, p0, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p1

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isFlashable()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DISPLAY_FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->FLASH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :cond_7
    :goto_2
    const-class p2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {v2, p1, v1}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p2

    sget-boolean p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    if-nez p1, :cond_8

    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateCurrentScene(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static updateStreamingRequests(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v2, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v2, v2, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    iget-object v3, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    iget-object v3, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v4, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v1, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mId:I

    invoke-static {v1, v4, p0, v2, v3}, Lcom/motorola/camera/fsm/camera/modes/RequestBuilderHelper;->processMcfSceneMode(ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/motorola/camera/fsm/camera/FsmContext;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_MODE_INIT:Ljava/util/List;

    return-object p0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    const-class p1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;

    monitor-enter p1

    :try_start_0
    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->isHalFlash(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentMcfSensorName(Z)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->INIT_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {v1, v3}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->getSceneMode(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    invoke-static {v1, v0, p0, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getModeSpecificScene(Lcom/motorola/camera/mcf/Mcf$SceneMode;ZLcom/motorola/camera/fsm/camera/FsmContext;Z)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sSceneLockedForCapture:Z

    new-instance v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sCurrentScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    new-instance v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    invoke-direct {v2, v1, v0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;-><init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    sput-object v2, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sWaitingScene:Lcom/motorola/camera/mcfmanagers/SceneModeManager$SceneFlashPair;

    sput-object v1, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sLastSceneIntentRequested:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-static {p0}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sendCurrentSceneToListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_3
    :goto_3
    return-void
.end method
