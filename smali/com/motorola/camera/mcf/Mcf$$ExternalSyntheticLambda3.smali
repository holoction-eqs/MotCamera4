.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$4f83676f415fea3e0864e659ff73a74ead4293ad4c6b37312d766cf2d47b3f56$0()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onBestShotVideoTrigger(Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$5344aa0870c9004872da6615240088c066ee0b730909d686a1e89417817cabc6$0()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onAIScene(Lcom/motorola/camera/mcf/McfCallbackAIScene;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$5b671e4699ad5704c2278306f5beb4257599b4ce7fed242851c15eb2ed1f34c3$0()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    iget-object v3, p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;->onModelStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$6b292bebe118136226e61c0c2f3894157ba66494fa1537ea4ccd6fa1ae6ffb64$0()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget v1, p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->RTBOKEH_STATES:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/settings/FastSettingsManager;->MODE_MENU_SHOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-nez v2, :cond_3

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f120614

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    goto/16 :goto_2

    :pswitch_1
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f12061e

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    goto :goto_2

    :pswitch_2
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f12060e

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    goto :goto_2

    :pswitch_3
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f120615

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    goto :goto_2

    :pswitch_4
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f120617

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->getCurrentScene()Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->isAutoNV()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f12061a

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v4, 0x4

    iput v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    goto :goto_2

    :pswitch_6
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SEGMENTATION_MODE:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    const v4, 0x7f120611

    goto :goto_1

    :cond_2
    const v4, 0x7f120612

    :goto_1
    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 v4, 0xdac

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->duration(I)V

    :goto_2
    invoke-static {v3, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_3
    :goto_3
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onRealTimeDepthStatus(Lcom/motorola/camera/mcf/McfRtDepthStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$6d20bc918fb298a66ef76a688d4925a1213c2b78181bd6d44274b9aac54ecda4$0()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackModelResults;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;->onModelResults(Lcom/motorola/camera/mcf/McfCallbackModelResults;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$885da76e1132ad18eddee256d7cc7744b124debabd99d709db5595961f3d82cc$0()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onMotNVDetect(Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$8ff065c7aa3d222cde26ea4e7dd2ccf8500122480bd382539783e34f41d0bb5e$0()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfSceneProp;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfSceneProp;->getKeys()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda6;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$cbf535be245b41cdbc7ae36bd947a87335fd7b1adfa743beae7680297cf3d3ee$0()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onMotDRSDv2(Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$eba839c10b518104fa90010cdf1e8a4abeffb1ab707bec859db869837b9f0893$0()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;->POSTCAPFRAME:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfAuxFrameData;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->getNewInstance(Lcom/motorola/camera/mcf/McfInstanceIdentifier;)Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;->onPostViewFrame(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;Lcom/motorola/camera/mcf/McfAuxFrameData;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method private final run$com$motorola$camera$fsm$camera$CameraFsm$$InternalSyntheticLambda$3$af7557a7cefc1f3f10ddd4653427aeb373da2a65dbe1eaf128779a5229a25807$1()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/Trigger;->mData:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    invoke-virtual {v1}, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->selectAll()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DATE_TAKEN"

    iget-wide v5, v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->ts:J

    invoke-virtual {v10, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "PROCESSING_URI"

    invoke-virtual {v10, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "THUMB_WIDTH"

    iget v5, v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbWidth:I

    invoke-virtual {v10, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "THUMB_HEIGHT"

    iget v5, v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbHeight:I

    invoke-virtual {v10, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "THUMB_PATH"

    iget-object v5, v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v10, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/camera/CameraData;

    iget-wide v6, v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->uuid:J

    iget-object v5, v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->mediaStoreUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, ""

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/motorola/camera/background/provider/BgCaptureRecord;->getTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v5

    iget-object v6, v3, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/work/impl/StartStopTokens;

    const-string v7, "task_id"

    invoke-virtual {v6, v7, v5}, Landroidx/work/impl/StartStopTokens;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v5, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-wide v6, v2, Lcom/motorola/camera/background/provider/BgCaptureRecord;->jobNum:J

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SaveImageService"

    const-string v2, "buildBgProcessing failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;->handleStorageFull(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :goto_1
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/common/TaskId;

    iget-object v2, v0, Lcom/motorola/camera/saving/SaveImageService;->mProcessingRecords:Ljava/util/Map;

    iget-wide v3, p0, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CameraData;

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/saving/CaptureHolder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$$ExternalSyntheticLambda0;->onJpegImageReceived(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnailFile:Ljava/io/File;

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->mProcessingFiles:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string p0, " success"

    goto :goto_2

    :cond_1
    const-string p0, " failed"

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhotosProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/panorama/PanoCallable;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/panorama/PanoCallableReturn;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/panorama/PanoCallable;->callback(Lcom/motorola/camera/panorama/PanoCallableReturn;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->sendMcfParameters$enumunboxing$(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v1

    sget-object v5, Lcom/motorola/camera/mcf/McfParameters$Modes;->OFF:Lcom/motorola/camera/mcf/McfParameters$Modes;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    new-instance v1, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v1}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SINGLE_BOKEH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_3

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->SF_BOKEH:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    const-string v2, "RTBokehMode"

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    goto/16 :goto_9

    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v4, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v4}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v3

    sget-object v6, Lcom/motorola/camera/mcf/McfParameters$Modes;->ON:Lcom/motorola/camera/mcf/McfParameters$Modes;

    if-nez v3, :cond_9

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCameraMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    :goto_5
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v5, v6

    :cond_8
    const-string v3, "SegmentationMode"

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    :goto_6
    iget-boolean v2, v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mIsCliDisplay:Z

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfMultiFrameBokehSupported(Z)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/motorola/camera/mcf/McfParameters;->setSceneMode(Ljava/lang/String;)V

    :cond_a
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_RT_DEPTH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v5, v6

    :cond_b
    const-string v2, "RTBokehMode"

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfParameters$Modes;->getJsonValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/motorola/camera/mcf/McfParameters;->addJsonObject(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->DEPTH_RENDER:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    :goto_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->updateSceneMode(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/mcf/Mcf$SceneMode;Z)V

    :goto_8
    invoke-static {v4}, Lcom/motorola/camera/device/CameraService;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTorchControlEnabledForCurrentCamera()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    if-eqz p0, :cond_c

    iget-object v0, v0, Lcom/motorola/camera/mcfmanagers/McfSettingManager;->mTorchControlListener:Lcom/motorola/camera/mcfmanagers/McfSettingManager$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_c
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/motorola/camera/jms/BgJobManager$BgJobHolder;->mMediaData:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    if-eqz v1, :cond_e

    invoke-static {v1}, Lcom/motorola/camera/saving/SaveImageService;->saveImage(Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;)V

    goto :goto_a

    :cond_e
    const-string v1, "BgJobManager"

    const-string v2, "Found a pending job, but it has no mMediaData"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_f
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/motorola/camera/jms/BgJobManager;->notifyQueueEmpty()V

    :cond_10
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRatioControlSupported()Z

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_13

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float v2, v5, v2

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v2, 0x3cf5c28f    # 0.03f

    cmpg-float p0, p0, v2

    if-gez p0, :cond_11

    move p0, v4

    goto :goto_b

    :cond_11
    move p0, v1

    :goto_b
    iget-boolean v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    if-nez v2, :cond_12

    if-eqz p0, :cond_12

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;

    invoke-interface {v6}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;->onZoomCompleted()V

    goto :goto_c

    :cond_12
    iput-boolean p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomCompleted:Z

    :cond_13
    iget-boolean p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    if-eqz p0, :cond_18

    iput-boolean v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mFirstFrame:Z

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result p0

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v2

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_14

    move v2, v4

    goto :goto_d

    :cond_14
    move v2, v1

    :goto_d
    if-eqz v2, :cond_15

    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->NOT_ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    goto :goto_e

    :cond_15
    iget v2, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomTarget:F

    sub-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_16

    move v1, v4

    :cond_16
    if-eqz v1, :cond_17

    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMED:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    goto :goto_e

    :cond_17
    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;->ZOOMING:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    :goto_e
    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mZoomState:Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomState;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-interface {v2, p0, v3}, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;->onZoomStateChange(FLcom/motorola/camera/settings/CameraType;)V

    goto :goto_f

    :cond_18
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsHelper;->isOfflineReprocSupported(Z)Z

    move-result v1

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_19

    new-instance v1, Lcom/motorola/camera/fsm/RequestWrapper;

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_19
    new-instance v1, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-boolean v5, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mIsMaster:Z

    invoke-direct {v1, v2, v3, v5}, Lcom/motorola/camera/fsm/RequestWrapper;-><init>(IIZ)V

    :goto_10
    iput-object p0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    if-nez p0, :cond_1a

    iput-object v4, v1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    :cond_1a
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mRequestListener:Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateReprocRequestRunnable;->mIdx:I

    invoke-interface {p0, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$RequestListener;->onRequest(ILcom/motorola/camera/fsm/RequestWrapper;)V

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$CreateRequestsRunnable;->onComplete(I)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->sShotTimeoutCallbacks:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable;->cancelCleanup(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable$1;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/storage/MediaVolume;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1c

    move v1, v4

    :cond_1c
    :goto_11
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->getMediaVolume(Z)Lcom/motorola/camera/storage/MediaVolume;

    move-result-object v1

    if-nez v1, :cond_1d

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Current storage location is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_1d
    invoke-virtual {v1, p0}, Lcom/motorola/camera/storage/MediaVolume;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_13

    :cond_1e
    sget-object v1, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/storage/MediaVolumesHolder$addFreeBytesUpdatedListener$$inlined$runOnWorker$1;

    invoke-direct {v2, v0, v4}, Lcom/motorola/camera/storage/MediaVolumesHolder$addFreeBytesUpdatedListener$$inlined$runOnWorker$1;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    const-string v2, "shotType"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mediaVolume"

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficient(Lcom/motorola/camera/ShotType;J)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not enough space: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->onError(Ljava/lang/Exception;)V

    goto :goto_13

    :cond_1f
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->this$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-nez p0, :cond_20

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Video session data is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;->onError(Ljava/lang/Exception;)V

    goto :goto_13

    :cond_20
    invoke-virtual {p0}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    new-instance v3, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v3}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;-><init>(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/RecordingTime;)V

    sget-object v1, Lcom/motorola/camera/device/CameraService$LazyLoader;->INSTANCE:Lcom/motorola/camera/device/CameraService;

    new-instance v3, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;

    invoke-direct {v3, v0, v2, p0}, Lcom/motorola/camera/device/callables/SetNextVideoFileCallable;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$StartRecorderRunnable$MaxFileSizeApproachingRunnable;Lcom/motorola/camera/capturedmediadata/CapturedVideoData;Lcom/motorola/camera/capturedmediadata/VideoSessionData;)V

    invoke-virtual {v1, v3}, Lcom/motorola/camera/device/CameraService;->addCallable(Lcom/motorola/camera/device/callables/CameraCallable;)V

    :goto_13
    return-void

    :pswitch_c
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$fsm$camera$CameraFsm$$InternalSyntheticLambda$3$af7557a7cefc1f3f10ddd4653427aeb373da2a65dbe1eaf128779a5229a25807$1()V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraFsm;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;->getStatesToListenFor()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_22

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraFsm;->mCameraFsm:Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_21
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_22
    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/RecorderStartCallable$MediaStatusWrapper;->mListener:Lcom/motorola/camera/device/callables/MediaStatusListener;

    invoke-interface {v0, p0}, Lcom/motorola/camera/device/callables/MediaStatusListener;->onStatusCallback(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$eba839c10b518104fa90010cdf1e8a4abeffb1ab707bec859db869837b9f0893$0()V

    return-void

    :pswitch_10
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$cbf535be245b41cdbc7ae36bd947a87335fd7b1adfa743beae7680297cf3d3ee$0()V

    return-void

    :pswitch_11
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$8ff065c7aa3d222cde26ea4e7dd2ccf8500122480bd382539783e34f41d0bb5e$0()V

    return-void

    :pswitch_12
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$885da76e1132ad18eddee256d7cc7744b124debabd99d709db5595961f3d82cc$0()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$6d20bc918fb298a66ef76a688d4925a1213c2b78181bd6d44274b9aac54ecda4$0()V

    return-void

    :pswitch_14
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$6b292bebe118136226e61c0c2f3894157ba66494fa1537ea4ccd6fa1ae6ffb64$0()V

    return-void

    :pswitch_15
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$5b671e4699ad5704c2278306f5beb4257599b4ce7fed242851c15eb2ed1f34c3$0()V

    return-void

    :pswitch_16
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$5344aa0870c9004872da6615240088c066ee0b730909d686a1e89417817cabc6$0()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->run$com$motorola$camera$device$callables$CreateCaptureSessionCallable$2$$InternalSyntheticLambda$6$4f83676f415fea3e0864e659ff73a74ead4293ad4c6b37312d766cf2d47b3f56$0()V

    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_2
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onArcsoftDRSD(Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_15

    :cond_23
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_19
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onBSTDRSD(Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_16

    :cond_24
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1a
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_4
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onJGDRSD(Lcom/motorola/camera/mcf/McfCallbackJGDrsd;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_17

    :cond_25
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1b
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    iget-object v0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;->mCreateCaptureSessionListener:Lcom/motorola/camera/device/callables/CreateCaptureSessionListener;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable$1;->this$0:Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraRunnable;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    monitor-enter v0

    :try_start_5
    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->mStateListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;->onAutoCapture(Lcom/motorola/camera/mcf/McfCallbackAutoCapture;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_18

    :cond_26
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1c
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$b28UpXe2lafVaTLvQVzKI2GhKYg(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V

    return-void

    :goto_19
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/provider/BgCaptureRecord;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mBgCaptureRecords:Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "record"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordRepository;->mDao:Lcom/google/android/material/datepicker/CalendarStyle;

    if-eqz v0, :cond_27

    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_6
    iget-object v1, v0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    check-cast v1, Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v1, p0}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    iget-object p0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    iget-object p0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    goto :goto_1a

    :catchall_5
    move-exception p0

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    throw p0

    :cond_27
    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
