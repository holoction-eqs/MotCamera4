.class public final Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final Companion:Lkotlin/UByte$Companion;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Ljava/util/Set;

.field public static final REMOVE_STATES:Ljava/util/Set;

.field public static final SHOW_STATES:Ljava/util/Set;


# instance fields
.field public final controlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public expectedSlowMotionFileName:Ljava/lang/String;

.field public final settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public shouldKeepHiddenByLux:Z

.field public shouldKeepHiddenByPanel:Z

.field public shouldKeepHiddenByRemoveStates:Z

.field public slowMotionData:Lcom/motorola/camera/CameraData;

.field public slowMotionError:Z

.field public slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

.field public final slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

.field public superSlowMotionInstruction:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/UByte$Companion;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/UByte$Companion;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->Companion:Lkotlin/UByte$Companion;

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v1, "MODE_WAIT_LOADING_KEY"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/common/base/Joiner;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v1, v1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    const-string v3, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->SHOW_STATES:Ljava/util/Set;

    new-instance v4, Lcom/google/common/base/Joiner;

    invoke-direct {v4, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v4, v4, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->REMOVE_STATES:Ljava/util/Set;

    new-instance v6, Lcom/google/common/base/Joiner;

    invoke-direct {v6, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v5, v6, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-static {v5, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/google/common/base/Joiner;

    invoke-direct {v3, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v3, v5}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v0, v3, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    const-string v1, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$controlPanelVisibilityListener$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$controlPanelVisibilityListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$controlPanelVisibilityListener$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$controlPanelVisibilityListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->controlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 p2, 0x13

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->superSlowMotionInstruction:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a03da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->superSlowMotionInstruction:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public final shouldKeepHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByPanel:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByLux:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->controlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    const-string v7, "changeEvent.context"

    iget-object v8, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionSaveListener:Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$photoBoothSaveListener$1;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v9, v6, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->REMOVE_STATES:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v10}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {v1, v2, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v9}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v9, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    goto/16 :goto_9

    :cond_2
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v8}, Lcom/motorola/camera/saving/SaveImageService;->addSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    :cond_3
    iput-boolean v10, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHiddenByRemoveStates:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->shouldKeepHidden()Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;I)V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_2
    invoke-static {v8}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    goto/16 :goto_9

    :cond_6
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_7

    iput-object v11, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

    goto/16 :goto_8

    :cond_7
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v11

    :goto_3
    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v11

    :goto_4
    if-eqz v1, :cond_a

    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-object v1, v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/motorola/camera/storage/MediaFilePath;->getFileName()Ljava/lang/String;

    move-result-object v11

    :cond_a
    iput-object v11, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->expectedSlowMotionFileName:Ljava/lang/String;

    goto/16 :goto_9

    :cond_b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SUPER_SLOW_MOTION_POSTPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v10, v6, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v4}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {v8}, Lcom/motorola/camera/saving/SaveImageService;->removeSaveListener(Lcom/motorola/camera/saving/SaveListener;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_d
    :goto_5
    sget-object v2, Lcom/motorola/camera/storage/StorageUtils;->tempFilesList:[Ljava/io/File;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v3, "getInstance()"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "getContext().filesDir"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    sget-object v4, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    invoke-static {v4, v2, v3}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficient(Lcom/motorola/camera/ShotType;J)Z

    move-result v4

    const-string v5, "SuperSlowMotionComponent"

    if-eqz v4, :cond_e

    goto :goto_6

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Not enough internal space for Super Slow Motion: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    :goto_6
    if-eqz v9, :cond_f

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionError:Z

    if-eqz v2, :cond_10

    :cond_f
    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_10
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    if-eqz v1, :cond_12

    iget-object v13, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

    const/16 v2, 0x3c0

    if-eqz v13, :cond_11

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object v14

    const-string v4, "slowMotionData.fileName"

    invoke-static {v14, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v15

    invoke-virtual {v1}, Lcom/motorola/camera/CameraData;->getDateTaken()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v17, v4, v6

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v19

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v1

    div-int v20, v2, v1

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;-><init>(Lcom/motorola/camera/storage/MediaFile;Ljava/lang/String;JJII)V

    goto :goto_7

    :cond_11
    const-string v1, "saveSuperSlowMotion: SlowMotion original file is missing"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v11

    :goto_7
    if-eqz v3, :cond_12

    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v4}, Lcom/motorola/camera/storage/MediaFile;->toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;

    move-result-object v4

    const-string v5, "com.motorola.superslowmotion.intent.mediaFile"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.motorola.superslowmotion.intent.videoName"

    iget-object v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.motorola.superslowmotion.intent.videoDate"

    iget-wide v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoDate:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "com.motorola.superslowmotion.intent.targetVideoDate"

    iget-wide v5, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->targetVideoDate:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "com.motorola.superslowmotion.intent.videoFrameRate"

    iget v3, v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->getSuperSlowMotionBaseFrameRate()I

    move-result v3

    div-int/2addr v2, v3

    const-string v3, "com.motorola.superslowmotion.intent.slowDownRate"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v3, 0x12

    invoke-direct {v2, v1, v3, v10, v11}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1, v2}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_12
    :goto_8
    iput-object v11, v0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionData:Lcom/motorola/camera/CameraData;

    :cond_13
    :goto_9
    return-void
.end method

.method public final trySlowMotionReady(I)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    :try_start_0
    invoke-virtual {v1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->openReadParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move v1, v3

    :goto_0
    if-ne v1, v0, :cond_0

    move v3, v0

    :cond_0
    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SLOW_MOTION_READY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const-string v3, "SuperSlowMotionComponent"

    if-ge p1, v1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Slow motion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " still not in MediaStore, attempt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->slowMotionFile:Lcom/motorola/camera/storage/SharedMediaFile;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {p1}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getMediaStoreUri()Landroid/net/Uri;

    move-result-object v2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in MediaStore"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v3, 0x7f12009d

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v3, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v0, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v2, p1, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_1
    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_2
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
