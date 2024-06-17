.class public final Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final CLEAN_STATES:Ljava/util/Set;

.field public static final DISABLE_STATES:Ljava/util/Set;

.field public static final ENABLE_STATES:Ljava/util/Set;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Ljava/util/Set;

.field public static final LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;


# instance fields
.field public currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

.field public isEnabled:Z

.field public isOtherComponentVisible:Z

.field public final mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

.field public final multiVisibilitySubject$delegate:Lkotlin/Lazy;

.field public final optInClose$delegate:Lkotlin/Lazy;

.field public final optInIcon$delegate:Lkotlin/Lazy;

.field public final optInOpen$delegate:Lkotlin/Lazy;

.field public optInPill:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final optInText$delegate:Lkotlin/Lazy;

.field public final otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

.field public final scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v1, "MODE_WAIT_LOADING_KEY"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/common/base/Joiner;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v1, v1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    const-string v3, "StateKeyCollectionBuilde\u2026\n                .build()"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->DISABLE_STATES:Ljava/util/Set;

    new-instance v4, Lcom/google/common/base/Joiner;

    invoke-direct {v4, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v4, v4, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->ENABLE_STATES:Ljava/util/Set;

    new-instance v5, Lcom/google/common/base/Joiner;

    invoke-direct {v5, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v5, v5, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-static {v5, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->CLEAN_STATES:Ljava/util/Set;

    new-instance v6, Lcom/google/common/base/Joiner;

    invoke-direct {v6, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    invoke-virtual {v6, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v6, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v6, v5}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v6, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v6, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->LISTENED_STATES:Ljava/util/Set;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SCAN_BAR_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/Notifier$TYPE;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->LISTENED_VISIBILITY_NOTIFIERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInClose$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInText$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInIcon$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInOpen$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->otherComponentsVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$otherComponentsVisibilityListener$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$optInIcon$2;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-static {v0, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->multiVisibilitySubject$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;Lcom/motorola/camera/EventListener;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;-><init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    return-void
.end method

.method public static showMacroToast(Z)V
    .locals 3

    const v0, 0x7f12059f

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/16 v0, 0xfa0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->duration(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final animateIfVisibilityChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isOptInActiveScene()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->isOtherComponentVisible:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "IS_SELECTED"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->unsupportedInMacroScene()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->showMacroToast(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v2, v1

    :cond_2
    if-nez v2, :cond_6

    invoke-static {v3, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->OPT_IN_PILL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {v3, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->OPT_IN_PILL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->unsupportedInMacroScene()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->showMacroToast(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final hidePill(Lcom/motorola/camera/scenedetection/scene/Scene$Type;)Z
    .locals 3

    const-string v0, "sceneType"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->NIGHT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->NIGHT_SCENE_OPT_IN:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupportedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVSupported(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    sget-object p0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, p1, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSATFallbackSupported()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const v1, 0x7f0a036b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_0
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInPill:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetSceneOptInSetting()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInClose$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInOpen$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final isOptInActiveScene()Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getOptType$enumunboxing$()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->getSceneOptInKey(Lcom/motorola/camera/scenedetection/scene/Scene;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    const-string v0, "getSceneOptInSetting(currentScene)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final registerSubFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isSceneDetectionSupported(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.McfStateMachine"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$mcfStateAdapter$1;

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final rotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->optInPill:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->scanBarCallback:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$scanBarCallback$1;

    const-string v2, "changeEvent.context"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->registerSubFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->multiVisibilitySubject$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->registerSubFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->multiVisibilitySubject$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->registerListeners(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/detector/ScanningEngine;->getInstance()Lcom/motorola/camera/detector/ScanningEngine;

    move-result-object p0

    iget-object v2, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    monitor-enter v2

    :try_start_1
    iget-object p0, p0, Lcom/motorola/camera/detector/ScanningEngine;->mCallbacks:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto/16 :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->SCENE_ACTION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "mEventHandler"

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/scenedetection/SceneDetectionManager;->queuedScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    instance-of v0, p1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.motorola.camera.scenedetection.scene.ActionScene"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/scenedetection/scene/ActionScene;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/scenedetection/scene/ActionScene;->doAction(Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->resetSceneOptInSetting()V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->DISABLE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashProcess()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->CLEAN_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->ENABLE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    goto :goto_1

    :cond_7
    :goto_0
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final unsupportedInMacroScene()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->currentScene:Lcom/motorola/camera/scenedetection/scene/Scene;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/scenedetection/scene/Scene;->getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MACRO:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final updateViewStub()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->animateIfVisibilityChanged()V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
