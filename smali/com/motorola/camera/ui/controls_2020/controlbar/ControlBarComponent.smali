.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final DISABLE_CLICK_STATES:Ljava/util/Set;

.field public static final HIDE_STATES:Ljava/util/Set;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Ljava/util/Set;

.field public static final SHOW_STATES:Ljava/util/Set;

.field public static final VIDEO_CAPTURE_STATES:Ljava/util/Set;


# instance fields
.field public final applyPreviewDoneListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

.field public cancelLayoutChangeAnimation:Z

.field public caretAnimator:Landroid/animation/Animator;

.field public clickEnabled:Z

.field public final controlBarItemsObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

.field public controlBarSettingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final controlBarSettingValuesObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

.field public final controlBarStateObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

.field public final controlPanelAutoHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public controlPanelToggle:Landroid/widget/ToggleButton;

.field public disableAnimationsAfterUpdate:Z

.field public final hasInflated$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

.field public hiddenState:Z

.field public isClosing:Z

.field public final isInModeChange$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

.field public itemDecorator:Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;

.field public lastCloseTimestamp:J

.field public final mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final maxItems:I

.field public final notifierListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

.field public playedCaretAnimation:Z

.field public quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

.field public quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

.field public final settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

.field public settingValuesRecycler:Landroidx/recyclerview/widget/RecyclerView;

.field public settingValuesSettingName:Landroid/widget/TextView;

.field public settingsBtn:Landroid/view/View;

.field public settingsGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public settingsText:Landroid/widget/TextView;

.field public final touchListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;

.field public final viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

.field public wasSuperSlowMotionEnabled:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    const-string v3, "isInModeChange"

    const-string v4, "isInModeChange()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "hasInflated"

    const-string v4, "getHasInflated()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_DOC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    const-string v2, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->HIDE_STATES:Ljava/util/Set;

    new-instance v3, Lcom/google/common/base/Joiner;

    invoke-direct {v3, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v3, v3, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->SHOW_STATES:Ljava/util/Set;

    new-instance v4, Lcom/google/common/base/Joiner;

    invoke-direct {v4, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v5}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v4, v4, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->VIDEO_CAPTURE_STATES:Ljava/util/Set;

    new-instance v5, Lcom/google/common/base/Joiner;

    invoke-direct {v5, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAPSHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_START_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v5, v5, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    invoke-static {v5, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->DISABLE_CLICK_STATES:Ljava/util/Set;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v7, "MODE_WAIT_LOADING_KEY"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/common/base/Joiner;

    invoke-direct {v7, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    invoke-virtual {v7, v6}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v7, v3}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v7, v5}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v7, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_FRAME_COLLECTED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v7, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "view.context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->viewModelFactory:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {v1, p2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    invoke-direct {v1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;-><init>(Lcom/motorola/camera/EventListener;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->viewModelFactory:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    :cond_1
    const-class p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/core/view/MenuHostHelper;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->viewModelFactory:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarViewModelFactory;

    if-eqz v2, :cond_3

    invoke-direct {v1, p1, v2}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-virtual {v1, p2, v0}, Landroidx/core/view/MenuHostHelper;->get(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    :goto_0
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->maxItems:I

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->wasSuperSlowMotionEnabled:Ljava/lang/Boolean;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;-><init>(Ljava/lang/Boolean;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    const/4 v1, 0x1

    invoke-direct {p2, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;-><init>(Ljava/lang/Boolean;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hasInflated$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;

    const/4 v2, 0x3

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object p1, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$8:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;

    const/4 v2, 0x2

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->applyPreviewDoneListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarItemsObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarSettingValuesObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarStateObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->touchListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;

    return-void

    :cond_3
    const-string p0, "viewModelFactory"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is not a ViewModelStoreOwner. Make sure to use Activity/Fragment as context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final access$showFeatureSettingChangedToast(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValueToToastResMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_3

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v7, 0x10

    invoke-direct {v6, p0, v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CLI_DUAL_SCREEN_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "count"

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f080177

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v4}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f080176

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10PlusSupported()Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f120290

    goto :goto_2

    :cond_6
    const p0, 0x7f12028f

    :goto_2
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(\n     \u2026main_setting_video_hdr10)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f1205b4

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DISMISS_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const p2, 0x7f12058e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    const-string v0, "isSuperSlowMotionEnable"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const p1, 0x7f1204c0

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->wasSuperSlowMotionEnabled:Ljava/lang/Boolean;

    const-string v2, "wasSuperSlowMotionEnabled"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const p1, 0x7f1204bf

    :cond_a
    :goto_3
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p1, "if (isSuperSlowMotionEna\u2026ingRes)\n                }"

    invoke-static {v2, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->wasSuperSlowMotionEnabled:Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance p2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {p2, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput v4, p2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mImageResource:I

    const/16 v0, 0xbb8

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->duration(I)V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public static fadeOutIcon(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static toRootViewCoordinates(Landroid/view/View;II)[I
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a026b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    aget v2, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    aput v2, v1, v4

    :cond_1
    aget p0, v1, v3

    aget v2, v0, v3

    add-int/2addr p1, v2

    add-int/2addr p1, p0

    aput p1, v1, v3

    aget p0, v1, v4

    aget p1, v0, v4

    add-int/2addr p2, p1

    add-int/2addr p2, p0

    aput p2, v1, v4

    return-object v1
.end method


# virtual methods
.method public final addOrRemoveItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->itemDecorator:Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final animateLayoutChange$enumunboxing$(Landroidx/recyclerview/widget/RecyclerView;IIZLkotlin/jvm/functions/Function0;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    move-object/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    iget-object v0, v8, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v5, "mParentView"

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v11

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v0, v3, v4

    aput v5, v3, v11

    invoke-static {v9, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_8

    :cond_3
    iget-object v5, v8, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    const-string v6, "mEventHandler.layoutManager"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v6, v5, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    if-eqz v6, :cond_4

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    move-object v6, v5

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_5

    return-void

    :cond_5
    add-int/lit8 v5, p3, 0x1

    iget v13, v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->maxItems:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v7, 0x7f070071

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    if-eqz v12, :cond_7

    if-lt v5, v13, :cond_7

    move v15, v11

    goto :goto_5

    :cond_7
    move v15, v4

    :goto_5
    const/4 v11, 0x3

    if-gt v5, v3, :cond_9

    div-int/2addr v14, v13

    int-to-float v5, v14

    sub-float/2addr v5, v7

    int-to-float v7, v3

    div-float/2addr v5, v7

    float-to-int v5, v5

    if-eqz v12, :cond_8

    move v7, v11

    goto :goto_6

    :cond_8
    move v7, v4

    goto :goto_6

    :cond_9
    if-eqz v15, :cond_b

    div-int/2addr v14, v13

    iget-object v5, v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->itemDecorator:Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;

    if-nez v5, :cond_a

    int-to-float v5, v14

    sub-float/2addr v5, v7

    int-to-float v7, v3

    div-float/2addr v5, v7

    float-to-int v5, v5

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;

    invoke-direct {v7, v5, v5}, Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;-><init>(II)V

    iput-object v7, v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->itemDecorator:Lcom/motorola/camera/ui/controls_2020/SpaceAroundItemDecorator;

    :cond_a
    move v5, v4

    move v7, v5

    goto :goto_6

    :cond_b
    div-int/2addr v14, v5

    move v5, v4

    const/4 v7, 0x4

    :goto_6
    if-eqz p4, :cond_d

    iput-boolean v4, v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->cancelLayoutChangeAnimation:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    new-instance v13, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;

    const/4 v0, 0x1

    invoke-direct {v13, v8, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    move-wide/from16 v17, v3

    move v3, v15

    move v4, v5

    move v5, v14

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Landroidx/recyclerview/widget/RecyclerView;ZIILcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;I)V

    if-eqz v12, :cond_c

    invoke-virtual {v13}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$mAutoDisplayFlashListener$1;->invoke$2()Ljava/lang/Object;

    move-wide/from16 v3, v17

    goto :goto_7

    :cond_c
    new-instance v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    int-to-long v1, v11

    move-wide/from16 v3, v17

    mul-long/2addr v1, v3

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;

    move-object/from16 v2, v16

    invoke-direct {v1, v9, v2, v3, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$updateControlBarBlock$1;J)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarSettingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    const/4 v11, 0x1

    if-ne v0, v11, :cond_e

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v9, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v9, v5, v4, v14, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    invoke-virtual {v8, v9, v15}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->addOrRemoveItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Z)V

    goto :goto_8

    :cond_e
    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iput-boolean v11, v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->cancelLayoutChangeAnimation:Z

    invoke-virtual {v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    invoke-virtual {v9, v5, v4, v14, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v8, v9, v15}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->addOrRemoveItemDecoration(Landroidx/recyclerview/widget/RecyclerView;Z)V

    if-eqz v10, :cond_f

    invoke-interface/range {p5 .. p5}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    filled-new-array {v0, v14}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;

    invoke-direct {v1, v9, v6, v7, v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_8
    if-eqz v0, :cond_11

    new-instance v1, Landroidx/transition/Transition$3;

    const/16 v2, 0xa

    invoke-direct {v1, v10, v2}, Landroidx/transition/Transition$3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_11
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final controlPanelToggleState(ZZ)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    const-string v5, "get(SettingsManager.FIRS\u2026_USE_CONTROL_PANEL_COUNT)"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v4, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v5

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesSettingName:Landroid/widget/TextView;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v4, -0x3e600000    # -20.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->caretAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->moveControlPanelToggle()V

    goto/16 :goto_7

    :cond_6
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesSettingName:Landroid/widget/TextView;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    move v2, v1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_4

    :cond_9
    move v0, v2

    :goto_4
    move v2, v6

    :goto_5
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;II)V

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_b
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    :goto_7
    if-nez p1, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->lastCloseTimestamp:J

    :cond_f
    if-nez p2, :cond_13

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_10

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_10
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p2, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {p2, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :goto_8
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz p2, :cond_12

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setControlPanelToggleClickable()V

    goto :goto_9

    :cond_13
    const-string p2, "IS_SELECTED"

    invoke-static {p2, p1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_9
    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p2, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->getToggleDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_a
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateSettingsButton(Z)V

    return-void
.end method

.method public final getLimitRotatedViews()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getSettingsGuideline(Landroid/view/View;Z)I
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getAllSettings(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->maxItems:I

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_1
    div-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070071

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p0, p1

    div-int/2addr p0, v1

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final getToggleDescription(Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f1204e4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n            mParentVie\u2026ol_panel_close)\n        }"

    goto :goto_0

    :cond_0
    const p1, 0x7f1204e5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n            mParentVie\u2026rol_panel_open)\n        }"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final init()V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    new-instance v3, Landroidx/work/JobListenableFuture$1;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;-><init>(Landroidx/work/JobListenableFuture$1;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a010c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f0b0024

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "context"

    const/4 v9, 0x1

    if-eqz v1, :cond_4

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$1;

    invoke-direct {v10, p0, v9}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;I)V

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    invoke-virtual {v10, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    iget v11, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v11, v11, 0x168

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v12, v11, v6

    if-gez v12, :cond_1

    add-float/2addr v11, v5

    :cond_1
    cmpl-float v12, v11, v4

    if-lez v12, :cond_2

    sub-float/2addr v11, v5

    :cond_2
    add-float/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, v10, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    :goto_1
    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    new-instance v10, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;

    invoke-direct {v10, p0, v7}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v10}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;-><init>(Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder$on$1;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v10, 0x7f0a010e

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_8

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$1;

    const/4 v11, 0x2

    invoke-direct {v10, p0, v11}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;I)V

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    new-instance v10, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    invoke-virtual {v10, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    iget v7, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    rsub-int v7, v7, 0x168

    int-to-float v7, v7

    sub-float/2addr v7, v6

    cmpg-float v8, v7, v6

    if-gez v8, :cond_5

    add-float/2addr v7, v5

    :cond_5
    cmpl-float v4, v7, v4

    if-lez v4, :cond_6

    sub-float/2addr v7, v5

    :cond_6
    add-float/2addr v6, v7

    invoke-virtual {v10, v6}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    :goto_2
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_8
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    const v4, 0x7f0a0235

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    goto :goto_3

    :cond_9
    move-object v1, v3

    :goto_3
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const-string v4, "mParentView"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v9}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateSettingsGuideline(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_a

    const v4, 0x7f0a0234

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object v1, v3

    :goto_4
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-eqz v1, :cond_b

    new-instance v4, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/16 v5, 0x12

    invoke-direct {v4, p0, v5}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_c

    const v4, 0x7f0a0237

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_5

    :cond_c
    move-object v1, v3

    :goto_5
    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_d

    const v3, 0x7f0a010b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_d
    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarSettingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a010f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->touchListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->getToggleDescription(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a010d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesSettingName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarItems:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarItemsObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarSettingValues:Landroidx/lifecycle/MediatorLiveData;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarSettingValuesObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v3, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlBarStateObserver:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda6;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    const-string v4, "mEventHandler.layoutManager"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->shouldIncludeAllSettings:Z

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExternalDisplaySupport()Z

    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateControlBar()V

    return-void
.end method

.method public final isControlPanelAvailableInCurrentMode()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->getControlPanelSettings(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    const-string v0, "mEventHandler.layoutManager"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isInModeChange()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    invoke-virtual {v1, p0, v0}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final moveControlPanelToggle()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0}, Ljms/IJobMgrService$_Parcel;->controlPanelGuidelineBottom(Landroid/content/Context;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->toRootViewCoordinates(Landroid/view/View;II)[I

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float p0, p0

    const/4 v1, 0x1

    aget v1, v2, v1

    int-to-float v1, v1

    sub-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->shouldIncludeAllSettings:Z

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final playExternalDisplayButtonAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v1, 0x7f020005

    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method public final remove$2()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :goto_0
    invoke-super {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove$2()V

    return-void
.end method

.method public final removeListeners()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->settingLockedChangedListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->unregisterLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingLockedChangeListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final rotate(I)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float v0, v0

    rsub-int v1, p1, 0x168

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_0

    add-float/2addr v1, v3

    :cond_0
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    sub-float/2addr v1, v3

    :cond_1
    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesRecycler:Landroidx/recyclerview/widget/RecyclerView;

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->setRotation(F)V

    iput p1, v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->uiOrientation:I

    goto :goto_0

    :cond_3
    instance-of v4, v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;

    iput v0, v3, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    goto :goto_0

    :cond_4
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setControlPanelToggleClickable()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hasInflated$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    invoke-virtual {v3, p0, v1}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public final setInModeChange(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isInModeChange$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    invoke-virtual {p0, v0, p1}, Lkotlin/properties/ObservableProperty;->setValue(Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Main;->RESET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto/16 :goto_18

    :cond_0
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->TORCH_CONTROL:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->EXPOSURE:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    sget-object v9, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v10, 0x2

    sget-object v11, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-string v14, "changeEvent.context"

    iget-object v15, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {v2, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    iget-object v8, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mcfStateAdapter$1;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    iget-object v7, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$autoExposureStateMachineListener$1;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mTorchControlListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    iget-object v5, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    iget-object v3, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget-object v2, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v13, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_2
    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;

    invoke-direct {v1, v15, v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    iget-object v1, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result v1

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v1, v10}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZI)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_19

    :cond_4
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;

    invoke-direct {v0, v15, v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    iget-object v0, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_5
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v16

    iget-object v10, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->applyPreviewDoneListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    iget-object v12, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iget-object v13, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelAutoHideListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-object/from16 v17, v9

    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->notifierListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;

    if-eqz v16, :cond_9

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    sget-object v16, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v2, v16, v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v18, v10

    iget-object v10, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hasInflated$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    invoke-virtual {v10, v2, v3}, Lkotlin/properties/ObservableProperty;->setValue(Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->playedCaretAnimation:Z

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;

    const/4 v3, 0x0

    invoke-direct {v2, v15, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$cancelSwitchToDefaultTimer$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/DelayKt;->runBlocking$default(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    iget-object v2, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v11}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->removeListeners()V

    iget-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {v2, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v2, v8}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    iget-object v8, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfStateAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$mcfStateAdapter$1;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    iget-object v7, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoExposureStateMachineListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$autoExposureStateMachineListener$1;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v6, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mTorchControlListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda1;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v2, v5}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v3

    iget-object v5, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mActivePhysicalCameraIdListener:Lcom/motorola/camera/Controller$PhysicalCameraIdListener;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v2

    iget-object v3, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->envListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v3, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mAutoDisplayFlashListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v3, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoSetting:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v13, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-static {v4, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v9}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    move-object/from16 v4, v18

    invoke-static {v2, v4}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-eqz v2, :cond_7

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-eqz v0, :cond_8

    iget v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->controlBarInteractions:I

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ANALYTICS_CONTROL_BAR_TAPS"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_19

    :cond_9
    move-object v4, v10

    const/4 v3, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v1, :cond_a

    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    iput v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->controlBarInteractions:I

    :goto_2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v0, :cond_b

    goto/16 :goto_19

    :cond_b
    iput v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->controlBarInteractions:I

    goto/16 :goto_19

    :cond_c
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-nez v2, :cond_37

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_16

    :cond_d
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "changeEvent.context.getB\u2026t.BundleType.SINGLE_SHOT)"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->isInCapture:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    goto/16 :goto_8

    :cond_10
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->removeListeners()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto/16 :goto_18

    :cond_11
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v5

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->HIDE_STATES:Ljava/util/Set;

    if-eqz v5, :cond_12

    iget-object v5, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/fsm/camera/FsmContext;

    move-object/from16 v7, v17

    invoke-static {v5, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_13
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v2, :cond_14

    const/4 v3, 0x0

    goto :goto_4

    :cond_14
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_4
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v2, :cond_15

    goto :goto_5

    :cond_15
    iput-boolean v3, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    :goto_5
    iput-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->clickEnabled:Z

    iget-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v4

    if-eqz v4, :cond_16

    iput-boolean v3, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->isInCapture:Z

    :cond_16
    if-nez v2, :cond_17

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    :cond_17
    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v9}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-virtual {v1, v6}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_18
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->playedCaretAnimation:Z

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->removeListeners()V

    goto/16 :goto_19

    :cond_19
    sget-object v5, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3b

    const-string v2, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v2, 0xe

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto/16 :goto_18

    :cond_1a
    const/4 v5, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v1, :cond_1b

    const/4 v2, 0x0

    goto :goto_7

    :cond_1b
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_7
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v1, :cond_1c

    goto :goto_8

    :cond_1c
    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    :goto_8
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->clickEnabled:Z

    goto/16 :goto_19

    :cond_1d
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    const/4 v5, 0x5

    const/4 v6, 0x4

    sget-object v7, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->VIDEO_CAPTURE_STATES:Ljava/util/Set;

    if-nez v2, :cond_2b

    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_f

    :cond_1e
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_20

    const/16 v2, 0x21

    invoke-static {v2}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m$3(Landroid/os/Bundle;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_9

    :cond_1f
    const-string v2, "CAPTURE_TRIGGER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    :goto_9
    move-object v12, v1

    check-cast v12, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    goto :goto_a

    :cond_20
    move-object v12, v3

    :goto_a
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eq v12, v1, :cond_21

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eq v12, v1, :cond_21

    const/4 v3, 0x1

    goto :goto_b

    :cond_21
    const/4 v3, 0x0

    :goto_b
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v3, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZI)V

    goto/16 :goto_18

    :cond_22
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->DISABLE_CLICK_STATES:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v1, :cond_23

    const/4 v2, 0x0

    goto :goto_c

    :cond_23
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_c
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v0, :cond_24

    goto/16 :goto_19

    :cond_24
    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    goto/16 :goto_19

    :cond_25
    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_26

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto/16 :goto_18

    :cond_26
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    :cond_27
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v1, :cond_28

    goto :goto_d

    :cond_28
    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_d
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v1, :cond_29

    goto :goto_e

    :cond_29
    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    :goto_e
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto/16 :goto_18

    :cond_2a
    invoke-static/range {p1 .. p1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldShowAllUi(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto/16 :goto_18

    :cond_2b
    :goto_f
    invoke-virtual {v1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v3, 0xf

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto :goto_10

    :cond_2c
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    :goto_10
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    return-void

    :cond_2d
    const/4 v2, 0x0

    iput-boolean v2, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->isInCapture:Z

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setInModeChange(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isExternalDisplaySupport()Z

    :cond_2e
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v2, :cond_2f

    const/4 v3, 0x1

    goto :goto_11

    :cond_2f
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;->clickEnabled:Z

    :goto_11
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingValuesAdapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;

    if-nez v2, :cond_30

    goto :goto_12

    :cond_30
    iput-boolean v3, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueAdapter;->clickEnabled:Z

    :goto_12
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/4 v7, 0x2

    invoke-direct {v2, v0, v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object v2, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v9}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v4}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_13

    :cond_31
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->settingChangedListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v3

    iget-object v4, v15, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->settingLockedChangedListener:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda0;

    invoke-static {v3, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingLockedChangeListener;)V

    goto :goto_14

    :cond_32
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->playedCaretAnimation:Z

    if-eqz v2, :cond_33

    goto :goto_15

    :cond_33
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_34

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_34
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CONTROL_PANEL_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "get(SettingsManager.FIRS\u2026ONTROL_PANEL_COUNT).value"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lt v2, v5, :cond_35

    goto :goto_15

    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->playedCaretAnimation:Z

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_36

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->caretAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_36

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f020000

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b000b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    iput-object v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->caretAnimator:Landroid/animation/Animator;

    :cond_36
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_15
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->FIRST_USE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "show_external_display_tips"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3b

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    :cond_37
    :goto_16
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v2

    if-eqz v2, :cond_38

    return-void

    :cond_38
    iget-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->shouldHideAllUi(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_17

    :cond_39
    invoke-static/range {p1 .. p1}, Ljms/IJobMgrService$_Parcel;->isTimerCapture(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    goto :goto_18

    :cond_3a
    :goto_17
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    :goto_18
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3b
    :goto_19
    return-void
.end method

.method public final updateControlBar()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->quickControlsRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->disableAnimationsAfterUpdate:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->shouldIncludeAllSettings:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isControlPanelAvailableInCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->setControlPanelToggleClickable()V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->updateSettingsButton(Z)V

    return-void
.end method

.method public final updateSettingsButton(Z)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsText:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->getSettingsGuideline(Landroid/view/View;Z)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsGuideline:Landroidx/constraintlayout/widget/Guideline;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    instance-of v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v4, :cond_3

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    :cond_3
    const/4 v1, 0x0

    if-eqz v3, :cond_4

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    int-to-float v3, v3

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    sub-float/2addr v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->controlBarState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;->DETAILS:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$ControlBarState;

    if-ne p1, v3, :cond_7

    const/4 p1, 0x4

    move v0, v1

    goto :goto_5

    :cond_7
    move p1, v2

    :goto_5
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsBtn:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda7;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;II)V

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    :goto_6
    return-void
.end method

.method public final updateSettingsGuideline(Landroid/view/View;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->getSettingsGuideline(Landroid/view/View;Z)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->settingsGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const-string v2, "guidelineEnd"

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-static {v0, v2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b0024

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method public final updateViewStub()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hasInflated$delegate:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$special$$inlined$observable$1;

    invoke-virtual {p0, v0, v1}, Lkotlin/properties/ObservableProperty;->setValue(Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
