.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final mProcessingComplete:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;->mProcessingComplete:Z

    return-void
.end method


# virtual methods
.method public final canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p2

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getMaxAllowedJobs(Lcom/motorola/camera/mcf/Mcf$SceneMode;)I

    move-result p2

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->LOW_LIGHT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SUPER_RESOLUTION:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isNormal()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isSuperNight()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBgServiceProcessingEnable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->HDR:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    sget-object v1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v1, v1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobSlipMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/motorola/camera/JsonConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p2, v0

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->sStateMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$ProcessingCompleteGuardRunnable;->mProcessingComplete:Z

    if-eqz p0, :cond_5

    if-lt p1, p2, :cond_7

    :cond_5
    if-nez p0, :cond_6

    if-ge p1, p2, :cond_7

    :cond_6
    invoke-static {}, Lcom/motorola/camera/saving/ImageCaptureManager;->isFallBackAllowed()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    return v2
.end method
