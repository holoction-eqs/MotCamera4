.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Ljava/util/Set;

.field public static final SHOWN_MODE_STATES:Ljava/util/Set;

.field public static final TOOLTIP_COUNT:I


# instance fields
.field public currentDualCaptureTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

.field public currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

.field public dualCaptureAudioLensSwitchToast:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$DualCaptureAudioLensSwitchToast;

.field public dualCaptureTooltip:Ljava/util/ArrayList;

.field public hasShownSettingTips:Z

.field public isControlPanelShown:Z

.field public isModeTutorialShown:Z

.field public isPhotoScreen:Z

.field public isShowTooltips:Z

.field public isZoomSliderShown:Z

.field public itemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public leftButton:Landroid/widget/Button;

.field public mScreenDensity:F

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public modeSliderComponent:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

.field public paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public rightButton:Landroid/widget/Button;

.field public rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final settingSingleTooltip$delegate:Lkotlin/Lazy;

.field public final settingTutorialChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;

.field public titleClose:Landroid/widget/ImageButton;

.field public titleIcon:Landroid/widget/ImageView;

.field public titleText:Landroid/widget/TextView;

.field public tooltips:Ljava/util/ArrayList;

.field public viewPager:Landroidx/viewpager2/widget/ViewPager2;

.field public final zoomSliderChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final zoomTooltip$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPressKeySwitchModeSupported()Z

    move-result v0

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->TOOLTIP_COUNT:I

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v1, "FIRST_USE_INTRO_KEY"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/common/base/Joiner;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v2, v2, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    const-string v4, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->SHOWN_MODE_STATES:Ljava/util/Set;

    new-instance v5, Lcom/google/common/base/Joiner;

    invoke-direct {v5, v3}, Lcom/google/common/base/Joiner;-><init>(I)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5, v2}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v5, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v0, v5, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    const/4 p2, 0x3

    invoke-static {p2, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->zoomTooltip$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-static {p2, p1}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->settingSingleTooltip$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isPhotoScreen:Z

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    sget-object p2, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$16:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->settingTutorialChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$zoomTooltip$2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->zoomSliderChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static getTooltipIndex()I
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.FIRS\u2026_USE_TOOLTIP_INDEX).value"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static setTooltipIndex(I)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP_INDEX:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldShowSuperSlowMotionTooltip()Z
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "get(SettingsManager.FIRS\u2026_SUPER_SLOW_MOTION).value"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final cliSkippedShowTutorial()Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TUTORIAL_SKIPPED:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.FIRS\u2026E_TUTORIAL_SKIPPED).value"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DUAL_SCREEN_DEFAULT_PREVIEW_REVIEW_ON:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final completeModeTutorial(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isModeTutorialShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isModeTutorialShown:Z

    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mSetting:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final completeTutorial(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget v0, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mHelpScreensModes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltip()V

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setTooltipIndex(I)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PLAY_TUTORIAL_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isPhotoScreen:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isPhotoScreen:Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/16 v1, 0x1b

    invoke-direct {p1, v1, p0, v0}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->completeModeTutorial(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    :goto_0
    return-void
.end method

.method public final getSettingSingleTooltip()Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->settingSingleTooltip$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final hideTooltip()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final hideTooltips()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final inflateViewStub()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0451

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->rootLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0489

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a044e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->itemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a045d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a045e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a045c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->titleClose:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a044c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->leftButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a044d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->rightButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0450

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->paginationDotsView:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenWidth:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenHeight:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const v3, 0x7f0a031d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v1

    :cond_2
    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeSliderComponent"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->modeSliderComponent:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ModeMenuTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;

    invoke-direct {v2, p0, v0, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;

    invoke-direct {v2, p0, v0, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$UnderwaterTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->tooltips:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;

    :cond_3
    return-void
.end method

.method public final isRtl()Z
    .locals 0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result p0

    return p0
.end method

.method public final onConfigurationChanged(Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x15e

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_1

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;I)V

    int-to-long v5, p1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getSettingSingleTooltip()Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    :cond_2
    if-eqz v3, :cond_3

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SettingSingleTooltip;I)V

    int-to-long v5, p1

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->zoomTooltip$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;->show()V

    :cond_4
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;I)V

    long-to-double v0, v0

    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    mul-double/2addr v0, v4

    double-to-long v0, v0

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final registerListener(Z)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->zoomSliderChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->settingTutorialChangeListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v4, 0x1

    invoke-static {v4, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_FIRST_TIME_USE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v4, 0x0

    invoke-static {v4, v3, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SETTING_TUTORIAL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v4, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_FIRST_TIME_USE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final rotate(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->superSlowMotionTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->rotate(F)V

    :cond_0
    return-void
.end method

.method public final setCurrentTooltip(I)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isZoomSliderShown:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isControlPanelShown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltip()V

    invoke-static {p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setTooltipIndex(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isShowTooltips:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isShowTooltips:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->modeSliderComponent:Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->enableClick(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final showDualCaptureTooltip(I)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showModeTutorial()V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isModeTutorialShown:Z

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lkotlin/ULong$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/ULong$Companion;->getScreen(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showTutorial(Ljava/util/List;)V

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/analytics/AnalyticsHelper;->mSessionValues:Landroidx/work/impl/StartStopTokens;

    const-string v1, "TUTORIAL_OPENED_MODE_LIST"

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/work/impl/StartStopTokens;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroidx/work/impl/StartStopTokens;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showTutorial(Ljava/util/List;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0, p1}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->registerListener(Z)V

    goto/16 :goto_a

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {v3, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "get(SettingsManager.FIRST_TIME_USE).value"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-nez v0, :cond_2

    if-eqz p1, :cond_6

    :cond_2
    invoke-static {v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setTooltipIndex(I)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showTutorial(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isPhotoScreen:Z

    goto/16 :goto_a

    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltips()V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result p1

    if-ne p1, v5, :cond_5

    return-void

    :cond_5
    if-gez p1, :cond_7

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isPhotoScreen:Z

    :cond_6
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showTutorial(Ljava/util/List;)V

    goto/16 :goto_a

    :cond_7
    invoke-static {v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setTooltipIndex(I)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_TOOLTIP:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_8
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TOOLTIP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result p1

    if-ne p1, v1, :cond_9

    move v4, v1

    :cond_9
    if-eqz v4, :cond_25

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isShowTooltips:Z

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result p1

    if-eq p1, v5, :cond_25

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setCurrentTooltip(I)V

    goto/16 :goto_a

    :cond_a
    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isShowTooltips:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltip()V

    goto/16 :goto_a

    :cond_b
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_24

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_9

    :cond_c
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_d

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltip()V

    goto/16 :goto_a

    :cond_d
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->SHOWN_MODE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const-string v0, "get(SettingsManager.FIRS\u2026ME_USE_ZOOM_SLIDER).value"

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result p1

    if-nez p1, :cond_13

    :cond_e
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSecondLaunch()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    const-string v2, "getCurrentCameraType()"

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    invoke-static {p1, v2}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomSupported(Lcom/motorola/camera/settings/CameraType;Z)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSecondLaunch()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->cliSkippedShowTutorial()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->EXITED_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p1, :cond_11

    if-ne v0, v5, :cond_11

    move p1, v1

    goto :goto_0

    :cond_11
    move p1, v4

    :goto_0
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->cliSkippedShowTutorial()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    :goto_1
    move p1, v1

    goto :goto_2

    :cond_13
    move p1, v4

    :goto_2
    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->zoomTooltip$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$ZoomTooltip;->show()V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_ZOOM_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_14
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hasShownSettingTips:Z

    if-nez p1, :cond_15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSecondLaunch()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->cliSkippedShowTutorial()Z

    move-result p1

    if-eqz p1, :cond_15

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hasShownSettingTips:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_15
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.FIRS\u2026E_USE_DUAL_CAPTURE).value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-nez p1, :cond_17

    :cond_16
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.FIRS\u2026DUAL_CAPTURE_VIDEO).value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    move p1, v1

    goto :goto_3

    :cond_18
    move p1, v4

    :goto_3
    if-eqz p1, :cond_19

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showDualCaptureTooltip(I)V

    :cond_19
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->shouldShowSuperSlowMotionTooltip()Z

    move-result p1

    if-eqz p1, :cond_1a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1a
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->Companion:Lkotlin/ULong$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    if-ne p1, v1, :cond_1d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_4

    :cond_1b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_VSTAB_IHC:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_4
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_5

    :cond_1c
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    const-string/jumbo v0, "{\n                    if\u2026      }\n                }"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6

    :cond_1d
    move p1, v4

    :goto_6
    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showModeTutorial()V

    :cond_1e
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_PHOTO_BOOTH_TUTORIAL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v2, "get(SettingsManager.FIRS\u2026OTO_BOOTH_TUTORIAL).value"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_7

    :cond_1f
    move v1, v4

    :goto_7
    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->showModeTutorial()V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_a

    :cond_20
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_8

    :cond_21
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_25

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_8

    :cond_22
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_25

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltip()V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->registerListener(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_23
    :goto_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->hideTooltips()V

    goto :goto_a

    :cond_24
    :goto_9
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->getTooltipIndex()I

    move-result p0

    if-ne p0, v5, :cond_25

    add-int/2addr p0, v1

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->setTooltipIndex(I)V

    :cond_25
    :goto_a
    return-void
.end method

.method public final updateTutorialControl(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V
    .locals 3

    const-string v0, "screenConfig"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->itemLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0603ea

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget v0, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mLeftButtonTextRes:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->leftButton:Landroid/widget/Button;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->leftButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_1
    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->mRightButtonTextRes:I

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->rightButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->rightButton:Landroid/widget/Button;

    if-eqz p1, :cond_7

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
