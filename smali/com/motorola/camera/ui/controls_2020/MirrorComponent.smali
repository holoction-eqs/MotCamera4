.class public final Lcom/motorola/camera/ui/controls_2020/MirrorComponent;
.super Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Ljava/util/Set;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Ljava/util/Set;

.field public static final SHOW_STATES:Ljava/util/Set;


# instance fields
.field public brightnessButton:Landroid/widget/ImageButton;

.field public brightnessState:Z

.field public firstShowEffect:Z

.field public frameButton:Landroid/widget/ImageButton;

.field public final guidelineBrightnessPaddingBottom$delegate:Lkotlin/Lazy;

.field public final guidelineBrightnessPaddingTop$delegate:Lkotlin/Lazy;

.field public final guidelineFramePaddingEnd$delegate:Lkotlin/Lazy;

.field public final guidelinePaddingBottom$delegate:Lkotlin/Lazy;

.field public final guidelinePaddingEnd$delegate:Lkotlin/Lazy;

.field public final guidelinePaddingSliderBarBottom$delegate:Lkotlin/Lazy;

.field public final guidelinePaddingSliderBarTop$delegate:Lkotlin/Lazy;

.field public final guidelinePaddingStart$delegate:Lkotlin/Lazy;

.field public final guidelinePaddingTop$delegate:Lkotlin/Lazy;

.field public helpButton:Landroid/widget/ImageButton;

.field public final hideAdjustRunnable:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;

.field public isZoomEnabled:Z

.field public final mEffectSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

.field public mFadeIn:Landroid/view/animation/Animation;

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public menuButton:Landroid/widget/ImageButton;

.field public mirrorControlPanel:Landroid/view/View;

.field public shouldSaveState:Z

.field public zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public zoomStartProgress:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v1, "MODE_WAIT_LOADING_KEY"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/common/base/Joiner;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object v1, v1, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    const-string v3, "StateKeyCollectionBuilde\u2026s())\n            .build()"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->SHOW_STATES:Ljava/util/Set;

    new-instance v3, Lcom/google/common/base/Joiner;

    invoke-direct {v3, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_FIRST_USE:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v4}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v3, v3, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    const-string v4, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v3, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->HIDE_STATES:Ljava/util/Set;

    new-instance v5, Lcom/google/common/base/Joiner;

    invoke-direct {v5, v2}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {v5, v2}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v5, v2}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v5, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    invoke-virtual {v5, v3}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v5, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 4

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->firstShowEffect:Z

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/4 v0, 0x7

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    const/4 v0, 0x3

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingStart$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingEnd$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/16 v2, 0x8

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingTop$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/4 v2, 0x4

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingBottom$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/4 v2, 0x6

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarTop$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/4 v3, 0x5

    invoke-direct {p2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarBottom$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineFramePaddingEnd$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/4 v3, 0x2

    invoke-direct {p2, p0, v3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingTop$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-static {v0, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingBottom$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;

    const/16 v0, 0xa

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$guidelinePaddingEnd$2;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mEffectSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->hideAdjustRunnable:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final getGuidelineBrightnessPaddingTop()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingTop$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-guidelineBrightnessPaddingTop>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingEnd$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-guidelinePaddingEnd>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingSliderBarTop()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarTop$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-guidelinePaddingSliderBarTop>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingStart$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-guidelinePaddingStart>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mirrorControlPanel:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a021b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a00a4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a028d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v3, 0x7f0a0294

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_4

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;

    invoke-direct {v3, p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Landroidx/appcompat/widget/AppCompatSeekBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v2, v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->initIconOrientation()V

    return-void
.end method

.method public final initIconOrientation()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent;

    invoke-virtual {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isMirrorMode()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "captureIntent.isMirrorMode"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateFrameButton(I)V

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateZoomSeekBar(I)V

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateBrightnessButton(I)V

    :cond_0
    return-void
.end method

.method public final registerSettingsChangeListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mEffectSettingChangeListener:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x1

    invoke-static {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :goto_0
    return-void
.end method

.method public final resetShowTime(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->hideAdjustRunnable:Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showAdjustIcon(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final rotate(I)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotate(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    const-string v1, "<get-guidelinePaddingBottom>(...)"

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingBottom$delegate:Lkotlin/Lazy;

    const-string v3, "<get-guidelinePaddingTop>(...)"

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingTop$delegate:Lkotlin/Lazy;

    const/16 v5, 0x10e

    const/16 v6, 0xb4

    const/16 v7, 0x5a

    const-string v8, "mEventHandler.layoutManager"

    iget-object v9, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    if-eqz v0, :cond_4

    invoke-interface {v9}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v7, :cond_3

    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setX(F)V

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/constraintlayout/widget/Guideline;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setX(F)V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/constraintlayout/widget/Guideline;

    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setY(F)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    invoke-interface {v9}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v8

    const v9, 0x7f0700a3

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_7

    if-eq p1, v7, :cond_7

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    :cond_8
    :goto_5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateZoomSeekBar(I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateFrameButton(I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->updateBrightnessButton(I)V

    return-void
.end method

.method public final setScreenBrightness(Z)V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showAdjustIcon(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showControlPanel(Z)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->registerSettingsChangeListener(Z)V

    goto/16 :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    iput v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    iput v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iput v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->registerSettingsChangeListener(Z)V

    goto/16 :goto_2

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->HIDE_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->setScreenBrightness(Z)V

    :cond_4
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_6

    move p1, v1

    goto :goto_0

    :cond_6
    move p1, v4

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    const/4 v5, 0x6

    invoke-direct {v0, p1, p0, v5}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showAdjustIcon(Z)V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_7

    const/16 v5, 0x12c

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v6, 0x7f080209

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    if-eqz p1, :cond_8

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->firstShowEffect:Z

    :cond_8
    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    if-nez v0, :cond_9

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_9
    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->shouldSaveState:Z

    if-eqz p1, :cond_d

    :goto_1
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->setScreenBrightness(Z)V

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showControlPanel(Z)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;-><init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    iput v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->initIconOrientation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateBrightnessButton(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    const-string v2, "mEventHandler.layoutManager"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    const v2, 0x7f070071

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelineBrightnessPaddingTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_0

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineBrightnessPaddingBottom$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<get-guidelineBrightnessPaddingBottom>(...)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateFrameButton(I)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    const-string v2, "mEventHandler.layoutManager"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    const-string v2, "<get-guidelineFramePaddingEnd>(...)"

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelineFramePaddingEnd$delegate:Lkotlin/Lazy;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070071

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_2

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_2

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setX(F)V

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingTop$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<get-guidelinePaddingTop>(...)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateZoomSeekBar(I)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    const-string v2, "mEventHandler.layoutManager"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    const v3, 0x7f070071

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingEnd()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingSliderBarTop()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->getGuidelinePaddingStart()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->guidelinePaddingSliderBarBottom$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<get-guidelinePaddingSliderBarBottom>(...)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {v0, p0}, Landroid/view/View;->setRotation(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
