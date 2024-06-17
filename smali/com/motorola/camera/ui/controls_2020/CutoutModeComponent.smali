.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"


# static fields
.field public static final HIDE_STATES:Ljava/util/ArrayList;

.field public static final INFLATION_STATES:Ljava/util/ArrayList;

.field public static final LISTENED_STATES:Ljava/util/Set;


# instance fields
.field public final applyPreviewChangeListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

.field public bottomBracketMargin:F

.field public final breathingAnimationSet:Landroid/view/animation/AnimationSet;

.field public final context$delegate:Lkotlin/Lazy;

.field public controlPanelOpen:Z

.field public currentStatus:I

.field public final density:F

.field public final detectBackground$delegate:Lkotlin/Lazy;

.field public final detectBrackets$delegate:Lkotlin/Lazy;

.field public faceDetected:Z

.field public final faceDetectedRunnable$delegate:Lkotlin/Lazy;

.field public final faceDetectedTransition$delegate:Lkotlin/Lazy;

.field public final fadeDuration$delegate:Lkotlin/Lazy;

.field public final guideBottom$delegate:Lkotlin/Lazy;

.field public final guideText$delegate:Lkotlin/Lazy;

.field public final guideTop$delegate:Lkotlin/Lazy;

.field public final headlineText$delegate:Lkotlin/Lazy;

.field public infoMessage:I

.field public final infoText$delegate:Lkotlin/Lazy;

.field public final mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

.field public final panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public final previewSize:Lcom/motorola/camera/PreviewSize;

.field public scaleAnimPlaying:Z

.field public final scaleDuration$delegate:Lkotlin/Lazy;

.field public shouldKeepHidden:Z

.field public shouldRepeatBreathingAnimation:Z

.field public final textGroup$delegate:Lkotlin/Lazy;

.field public topBracketMargin:F

.field public final viewfinderGuide$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v1, "MODE_WAIT_LOADING_KEY"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v2, "MODE_SHOW_UI_KEY"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->HIDE_STATES:Ljava/util/ArrayList;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const-string v3, "MODE_HIDE_UI_KEY"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/google/common/base/Joiner;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lcom/google/common/base/Joiner;-><init>(I)V

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v3, v2}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v3, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    const-string v1, "StateKeyCollectionBuilde\u2026KEY)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 4

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v0}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {p2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget p2, p2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->density:F

    new-instance p2, Landroid/view/animation/AnimationSet;

    invoke-direct {p2, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 p2, 0x4

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->currentStatus:I

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleDuration$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->fadeDuration$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->context$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 v3, 0xa

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoText$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 v3, 0x9

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->headlineText$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBackground$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 v3, 0x8

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideTop$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/4 v3, 0x6

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideBottom$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/4 v3, 0x7

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideText$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 v3, 0xf

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->viewfinderGuide$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 v3, 0xe

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->textGroup$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBrackets$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    invoke-direct {v0, p0, p2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedTransition$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 p2, 0xb

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->applyPreviewChangeListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->context$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-context>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public final getDetectBackground()Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBackground$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-detectBackground>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getDetectBrackets()Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->detectBrackets$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-detectBrackets>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getFaceDetectedRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedRunnable$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetectedTransition$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/TransitionDrawable;

    return-object p0
.end method

.method public final getFadeDuration()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->fadeDuration$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeadlineText()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->headlineText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-headlineText>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getInfoText()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoText$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-infoText>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getScaleDuration()J
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleDuration$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final getTextGroup()Landroidx/constraintlayout/widget/Group;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->textGroup$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-textGroup>(...)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/constraintlayout/widget/Group;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->breathingAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->viewfinderGuide$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "<get-viewfinderGuide>(...)"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0700fd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->guideText$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "<get-guideText>(...)"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->updateLayout()V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700f6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    div-float v2, v1, v8

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v13

    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x1

    move-object v4, v14

    move v5, v1

    move v6, v8

    move v7, v1

    move v10, v13

    move v12, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f0b0013

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v14, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    move-object v4, v10

    move v5, v1

    move v6, v2

    move v8, v2

    move v9, v15

    move-object v1, v10

    move v10, v13

    move v2, v11

    move/from16 v11, v16

    move v15, v12

    move v12, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v1, v15}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final rotate(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getTextGroup()Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getInfoText()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getHeadlineText()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->rotateTextView(Landroid/widget/TextView;Z)V

    :cond_0
    return-void
.end method

.method public final rotateTextView(Landroid/widget/TextView;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-static {v0, v1}, L_COROUTINE/ArtificialStackFrames;->getRotation(FI)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    iget p2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_2

    const/16 v3, 0x10e

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700fe

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700ff

    :goto_2
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_3
    return-void
.end method

.method public final scaleMargin(Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v4, v1

    :goto_0
    if-eqz p1, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v1

    :goto_1
    if-eqz p1, :cond_2

    move v8, v0

    goto :goto_2

    :cond_2
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v8, v1

    :goto_2
    if-eqz p1, :cond_3

    move v10, v0

    goto :goto_3

    :cond_3
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v10, v1

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move v9, v1

    goto :goto_4

    :cond_4
    move v9, v0

    :goto_4
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->topBracketMargin:F

    float-to-int v1, v1

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v0

    :goto_5
    if-eqz p1, :cond_6

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->bottomBracketMargin:F

    float-to-int p1, p1

    move v5, p1

    goto :goto_6

    :cond_6
    move v5, v0

    :goto_6
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez p1, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;

    move-object v2, p1

    move-object v11, p0

    invoke-direct/range {v2 .. v11}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$scaleMargin$scaleAnim$1;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IIIIIIILcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getScaleDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getDetectBrackets()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    goto :goto_7

    :cond_7
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    new-instance p1, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p1, v1, p0, v3}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->scaleAnimPlaying:Z

    :goto_7
    return-void
.end method

.method public final setSegmentationStatus$enumunboxing$(IIZ)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->currentStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-ne p2, v1, :cond_2

    :cond_0
    if-eq v0, v1, :cond_1

    if-eq p2, v1, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    :cond_2
    move p3, v1

    goto :goto_0

    :cond_3
    move p3, v2

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoMessage:I

    if-eq p1, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez p3, :cond_5

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->currentStatus:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->infoMessage:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/TransitionDrawable;I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    if-ne p2, v1, :cond_7

    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->faceDetected:Z

    if-nez p1, :cond_8

    const-string p1, ""

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(newInfoMessage)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    new-instance p2, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1, p0, p1}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_a

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez p1, :cond_9

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/16 p3, 0xa

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getScaleDuration()J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getFaceDetectedTransition()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/TransitionDrawable;I)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_a
    :goto_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldRepeatBreathingAnimation:Z

    :goto_4
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v5, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->applyPreviewChangeListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->HIDE_STATES:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean v5, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const v2, 0x7f120610

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2, v1, v5}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->unregisterListener(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3, v4}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v2, v1, v5}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->unregisterListener(Lcom/motorola/camera/fsm/ChangeEvent;)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final unregisterListener(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->mMcfAdapter:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->applyPreviewChangeListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public final updateLayout()V
    .locals 7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v4, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->previewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;FLcom/motorola/camera/ui/layoutmanager/LayoutValue;II)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    return-object p0
.end method
