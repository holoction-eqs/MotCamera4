.class public final Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public final mModelStartedMap:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    new-instance v1, Lcom/motorola/camera/device/CameraService;

    invoke-direct {v1, p1, p2}, Lcom/motorola/camera/device/CameraService;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lcom/motorola/camera/device/CameraService;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/mcf/McfParameters;->loadModels([Lcom/motorola/camera/device/CameraService;)V

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized resetState()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->loadModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V

    new-instance p2, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p2}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    new-instance v0, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;

    sget-object v1, Lcom/motorola/camera/mcf/McfParameters$Modes;->ON:Lcom/motorola/camera/mcf/McfParameters$Modes;

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;-><init>(Lcom/motorola/camera/shared/ai/model/McfMlModel;Lcom/motorola/camera/mcf/McfParameters$Modes;)V

    filled-new-array {v0}, [Lcom/motorola/camera/mcf/McfParameters$ModelConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/motorola/camera/mcf/McfParameters;->configureModels([Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    invoke-static {p2}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stopAllModels()V
    .locals 3

    const-string v0, "mcf not supported by current mode:"

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "McfMlStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "McfMlStateMachine"

    const-string v1, "mcf not started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    new-instance v2, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;

    sget-object v3, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    invoke-direct {v2, p1, v3}, Lcom/motorola/camera/mcf/McfParameters$ModelConfig;-><init>(Lcom/motorola/camera/shared/ai/model/McfMlModel;Lcom/motorola/camera/mcf/McfParameters$Modes;)V

    filled-new-array {v2}, [Lcom/motorola/camera/mcf/McfParameters$ModelConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->configureModels([Lcom/motorola/camera/mcf/McfParameters$ModelConfig;)V

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    filled-new-array {p1}, [Lcom/motorola/camera/shared/ai/model/McfMlModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->unloadModel([Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    invoke-static {v0}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
