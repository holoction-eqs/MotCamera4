.class public final Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final CLOSE_STATES:Ljava/util/Set;

.field public static final DISABLE_STATES:Ljava/util/Set;

.field public static final ENABLE_STATES:Ljava/util/Set;

.field public static final HIDE_STATES:Ljava/util/Set;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Ljava/util/Set;

.field public static final SHOW_STATES:Ljava/util/Set;


# instance fields
.field public captureControl:Landroid/widget/ImageButton;

.field public final controlPanelAutoHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public shouldKeepHidden:Z

.field public final showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v1, "MODE_WAIT_LOADING_KEY"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/common/base/Joiner;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v2, v2, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    const-string v4, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->SHOW_STATES:Ljava/util/Set;

    new-instance v5, Lcom/google/common/base/Joiner;

    invoke-direct {v5, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v7}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v5, v5, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    const-string v7, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {v5, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->HIDE_STATES:Ljava/util/Set;

    new-instance v8, Lcom/google/common/base/Joiner;

    invoke-direct {v8, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v9}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v9}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v8, v8, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    invoke-static {v8, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v8, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->DISABLE_STATES:Ljava/util/Set;

    new-instance v9, Lcom/google/common/base/Joiner;

    invoke-direct {v9, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v9, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->ENABLE_STATES:Ljava/util/Set;

    new-instance v9, Lcom/google/common/base/Joiner;

    invoke-direct {v9, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    invoke-virtual {v9, v6}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v6, v9, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    invoke-static {v6, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->CLOSE_STATES:Ljava/util/Set;

    new-instance v4, Lcom/google/common/base/Joiner;

    invoke-direct {v4, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v4, v6}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v4, v2}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v4, v8}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v4, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 5

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    sget-object p1, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$7:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    const-string v4, "mEventHandler.layoutManager"

    invoke-static {p2, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFilterMode()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-static {v3, p1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lcom/motorola/camera/Notifier$TYPE;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$showModeComponent$1;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {v3, p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lcom/motorola/camera/Notifier$TYPE;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final animateHide()V
    .locals 2

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->selectButtonAction(Landroid/view/View;ZZ)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public final animateShow()V
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->shouldKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlPanelSettings(Z)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f1204e4

    goto :goto_2

    :cond_3
    const v3, 0x7f1204e5

    :goto_2
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    cmpg-float v2, v2, v5

    if-nez v2, :cond_5

    move v4, v1

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    neg-float v5, v2

    goto :goto_4

    :cond_7
    const-string v3, "mEventHandler.layoutManager"

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :cond_8
    :goto_4
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_5
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->rotate(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->shouldKeepHidden:Z

    :cond_2
    return-void
.end method

.method public final remove$2()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->selectButtonAction(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove$2()V

    return-void
.end method

.method public final rotate(I)V
    .locals 10

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-static {v1, v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    if-eqz v8, :cond_3

    const v1, 0x7f0704cd

    if-eqz p1, :cond_2

    const/16 v2, 0x5a

    if-eq p1, v2, :cond_2

    const/16 v9, 0xb4

    if-eq p1, v9, :cond_1

    const/16 v2, 0x10e

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(II)V

    invoke-virtual {p0, v9}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->rotateCaptureControlIcon(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(II)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->rotateCaptureControlIcon(I)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_4
    return-void
.end method

.method public final rotateCaptureControlIcon(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p0

    invoke-static {p0, p1}, L_COROUTINE/ArtificialStackFrames;->getRotation(FI)F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent$rotate$1$1;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public final selectButtonAction(Landroid/view/View;ZZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_1

    const/high16 p3, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    if-eqz p2, :cond_5

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "IS_SELECTED"

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p3, v0, p2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f1204e4

    goto :goto_2

    :cond_6
    const p1, 0x7f1204e5

    :goto_2
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->captureControl:Landroid/widget/ImageButton;

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->CLOSE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->showModeComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->mShowFaceBeautyComponent:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->FACE_BEAUTY_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->shouldKeepHidden:Z

    :cond_1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->HIDE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->DISABLE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->ENABLE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xe

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    const/16 v3, 0x2f

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->getQuickViewDisplayMode(Z)I

    move-result p1

    if-ne p1, v3, :cond_b

    move v1, v2

    :cond_b
    if-eqz v1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto :goto_0

    :cond_c
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->shouldKeepHidden:Z

    goto :goto_2

    :cond_d
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto :goto_1

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    goto :goto_1

    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    :goto_2
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
