.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;
.super Lcom/motorola/camera/fsm/ChangeListener;
.source "SourceFile"


# static fields
.field public static final LISTENED_STATES:Ljava/util/Set;


# instance fields
.field public final coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

.field public final memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    const-string v1, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/fsm/ChangeListener;-><init>()V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    return-void
.end method


# virtual methods
.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 12

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->AUTO_FOCUS:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->memoryModule:Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;

    const-string v7, "changeEvent.context"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoViewModel;->coreModule:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v8, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {p1, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    const-string v7, "shouldRun"

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object v11, v10, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v11, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    const-string v11, "None"

    invoke-virtual {v0, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    :goto_1
    iget-object v10, v10, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    invoke-virtual {v0, v10}, Lcom/motorola/camera/device/CameraStateManager;->addStateListener(Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;)V

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->nvSettingListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;

    invoke-direct {v1, p1, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor$start$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v5, v4, v1, v8}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iput-boolean v9, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MEMORY_STATS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    iput-object p0, v6, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;

    invoke-direct {p1, v6, v5}, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule$startRunning$1;-><init>(Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v5, v4, p1, v8}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iput-boolean v9, v6, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->isRunning:Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto/16 :goto_5

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {p1, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v7, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/motorola/camera/device/CameraService;->getCameraStateManager()Lcom/motorola/camera/device/CameraStateManager;

    move-result-object v0

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->statusListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoCameraStatusListener;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->focusStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoFocusListener;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->envInfoListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->mcfStateListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->LISTENED_NOTIFIERS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->notifiersListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->previewSizeListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->nvSettingListener:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$$ExternalSyntheticLambda0;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->batteryDrainMonitor:Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/appinfo/BatteryDrainMonitor;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->isRunning:Z

    :cond_8
    iget-boolean p0, v6, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->isRunning:Z

    if-eqz p0, :cond_9

    iget-object p0, v6, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;)V

    iput-boolean v4, v6, Lcom/motorola/camera/ui/controls_2020/appinfo/MemoryModule;->isRunning:Z

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_9
    :goto_5
    return-void
.end method
