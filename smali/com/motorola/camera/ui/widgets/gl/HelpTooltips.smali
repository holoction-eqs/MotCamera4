.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

.field public mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

.field public mHideTooltip:Z

.field public mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

.field public final mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mShowSpotColorLevelTip:Z

.field public mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

.field public final mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

.field public final mVisibilityListeners:Landroid/util/ArraySet;

.field public final mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;

    invoke-direct {v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    aput-object v2, v1, p2

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;

    invoke-direct {v2, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$SpotColorAdjustLevelTooltip;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Landroid/util/ArraySet;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    invoke-direct {p2, v5}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;-><init>(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v0, 0x15

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    return-void
.end method


# virtual methods
.method public final animateDismissCurrentTooltip()V
    .locals 10

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;

    const/4 v9, 0x1

    invoke-direct {v1, p0, v9}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    const-wide/16 v2, 0xc8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final animateDisplayCurrentTooltip()V
    .locals 10

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;

    const/4 v9, 0x0

    invoke-direct {v2, p0, v9}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V

    const-wide/16 v3, 0x12c

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mVisibilityListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final checkTooltips()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final dismissCurrentTooltip()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->markDismissed()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->checkTooltips()V

    :cond_2
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HelpTooltips"

    return-object p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_ADJUST_SELECT_COLOR_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onKeyEvent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized onPreDraw([F[F[F)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onRotate(I)V
    .locals 2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->animateDisplayCurrentTooltip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCurrentTooltip(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    iget-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setDisplayOrientation(I)V

    :cond_1
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/ColorToolbox;->tooltipBackground:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    filled-new-array {v6, v6, v6, v6}, [I

    move-result-object v6

    iget-object v7, v5, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setColors([I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    filled-new-array {v6, v7, v3}, [I

    move-result-object v3

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->setColors([I)V

    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mRadius:F

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v7, v6

    mul-float/2addr v7, v5

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v5

    div-float/2addr v7, v5

    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mShowCloseIcon:Z

    iput-boolean v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    iget-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mUseDynamicViewSize:Z

    iput-boolean v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mUseDynamicViewSize:Z

    if-nez v5, :cond_4

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mSize:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v7, v5, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    :cond_4
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_6

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    :cond_6
    :goto_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v7, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTitleResource:I

    if-lez v7, :cond_7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextResource:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mActionResource:I

    if-lez v9, :cond_8

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    iget-object v9, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_5

    :cond_9
    invoke-virtual {v8, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_5
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez v7, :cond_a

    const-string v7, " "

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_6

    :cond_a
    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_6
    const/4 v7, -0x1

    invoke-virtual {v9, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-boolean v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mUseDynamicViewSize:Z

    const/4 v10, 0x2

    const/4 v12, 0x4

    const/high16 v13, 0x41400000    # 12.0f

    const/4 v14, 0x0

    if-eqz v7, :cond_f

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    const/high16 v11, 0x435c0000    # 220.0f

    mul-float/2addr v11, v7

    const/high16 v15, 0x43440000    # 196.0f

    mul-float/2addr v15, v7

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    mul-float/2addr v5, v7

    mul-float/2addr v5, v6

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    iget-boolean v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v7, :cond_b

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v7, v13

    add-float/2addr v5, v7

    sub-float/2addr v15, v7

    :cond_b
    cmpl-float v7, v5, v11

    if-lez v7, :cond_c

    float-to-int v7, v15

    invoke-virtual {v9, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    :cond_c
    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    iget v15, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v9, v15

    mul-float/2addr v9, v6

    add-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v4

    :cond_d
    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v4

    :cond_e
    new-instance v4, Lcom/motorola/camera/PreviewSize;

    invoke-static {v11, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v5, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    goto/16 :goto_8

    :cond_f
    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->width:I

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    mul-float/2addr v7, v6

    iget v15, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v7, v15

    float-to-int v7, v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    iget-boolean v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v7, :cond_10

    mul-float/2addr v15, v13

    sub-float/2addr v5, v15

    :cond_10
    float-to-int v5, v5

    invoke-virtual {v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    iget-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v5, Lcom/motorola/camera/PreviewSize;->height:I

    const/high16 v7, 0x41c00000    # 24.0f

    iget v15, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v15, v7

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    iget v11, v4, Landroid/graphics/Point;->y:I

    :cond_11
    int-to-float v4, v11

    add-float/2addr v15, v4

    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v15, v4

    float-to-int v4, v15

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v7, v13

    add-float/2addr v7, v4

    float-to-int v4, v7

    :cond_12
    if-le v4, v5, :cond_14

    sub-int/2addr v4, v5

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v7, Lcom/motorola/camera/PreviewSize;->width:I

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    add-int/2addr v7, v4

    invoke-direct {v5, v9, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowDirection:I

    if-ne v5, v10, :cond_13

    invoke-virtual {v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v5, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    goto :goto_7

    :cond_13
    if-ne v5, v12, :cond_14

    invoke-virtual {v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v5, v14, v4, v14}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_7
    invoke-virtual {v3, v12, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_14
    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    const/high16 v5, 0x42700000    # 60.0f

    iget v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v7, v5

    iget-object v5, v8, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v7, v5

    float-to-int v5, v7

    if-le v5, v4, :cond_15

    sub-int/2addr v5, v4

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    iget-object v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v7, Lcom/motorola/camera/PreviewSize;->width:I

    add-int/2addr v8, v5

    iget v5, v7, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v4, v8, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    :cond_15
    :goto_8
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->updateDisplay(ILcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowDirection:I

    iput v14, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowPosition:F

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowThickness:F

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v5, v7

    div-float/2addr v5, v6

    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v4, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setPostScale(FFF)V

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v9, v6

    iget v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mRadius:F

    mul-float/2addr v9, v11

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v11

    div-float/2addr v9, v11

    invoke-virtual {v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/RoundedRectangleTexture;->setRadius(F)V

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowDirection:I

    invoke-static {v7}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMVisibility(I)Z

    move-result v7

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;

    invoke-virtual {v9, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    mul-float v7, v5, v6

    invoke-virtual {v9, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowDirection:I

    invoke-static {v7}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMRotation(I)F

    move-result v7

    invoke-virtual {v9, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowDirection:I

    invoke-static {v7}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMX$1(I)F

    move-result v11

    add-float/2addr v4, v5

    mul-float/2addr v4, v11

    invoke-static {v7}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMY(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowPosition:F

    mul-float/2addr v7, v11

    add-float/2addr v7, v4

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowDirection:I

    invoke-static {v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMY(I)F

    move-result v11

    add-float/2addr v3, v5

    mul-float/2addr v3, v11

    invoke-static {v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMX$1(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mArrowPosition:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v9, v7, v4, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v4, v6

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingX:F

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v5, v7

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    mul-float/2addr v9, v7

    neg-float v7, v4

    add-float/2addr v7, v5

    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTitleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v15, v6

    add-float/2addr v15, v7

    iget-boolean v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v10, :cond_16

    neg-float v15, v15

    :cond_16
    sub-float v10, v3, v9

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v12

    iget v12, v12, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v6

    sub-float v12, v10, v12

    invoke-virtual {v11, v15, v12, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v12, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v15, v6

    add-float/2addr v15, v7

    iget-boolean v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v7, :cond_17

    neg-float v15, v15

    :cond_17
    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v6

    sub-float/2addr v10, v7

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    goto :goto_9

    :cond_18
    move v7, v14

    :goto_9
    sub-float/2addr v10, v7

    invoke-virtual {v12, v15, v10, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mActionTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1a

    sub-float v5, v4, v5

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v6

    sub-float/2addr v5, v10

    iget-boolean v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v10, :cond_19

    neg-float v5, v5

    :cond_19
    neg-float v10, v3

    add-float/2addr v10, v9

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    div-float/2addr v9, v6

    add-float/2addr v9, v10

    invoke-virtual {v7, v5, v9, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1a
    iget-boolean v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mShowClose:Z

    if-eqz v5, :cond_1c

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mCloseTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v7, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    mul-float/2addr v9, v13

    div-float/2addr v9, v7

    invoke-virtual {v5, v9, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mDensity:F

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v7

    sub-float/2addr v4, v8

    mul-float/2addr v13, v7

    div-float/2addr v13, v6

    sub-float/2addr v4, v13

    iget-boolean v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mIsRtl:Z

    if-eqz v6, :cond_1b

    neg-float v4, v4

    :cond_1b
    iget v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->mTextPaddingY:F

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v2, v8

    add-float/2addr v2, v6

    mul-float/2addr v2, v7

    sub-float/2addr v3, v2

    invoke-virtual {v5, v4, v3, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_1c
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    :cond_1d
    :goto_a
    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltips:[Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->checkTooltips()V

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CALL_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mZoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mModeToggleListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHOW_MODE_COMPONENT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    goto :goto_2

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mHideTooltip:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->SPOT_COLOR_DRAGGING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mShowSpotColorLevelTip:Z

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->unloadTexture()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_THRESHOLD:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->SpotColorLevelChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
