.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;
.super Lcom/motorola/camera/ActivityBase;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ActivityStarter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;",
        "Lcom/motorola/camera/ActivityBase;",
        "Lcom/motorola/camera/ActivityStarter;",
        "<init>",
        "()V",
        "_COROUTINE/ArtificialStackFrames",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public dialog:Landroid/app/AlertDialog;

.field public final hideRunnable:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;

.field public isSplitScreen:Z

.field public tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

.field public final tooltipSetting$delegate:Lkotlin/SynchronizedLazyImpl;

.field public viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

.field public viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->hideRunnable:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;

    sget-object v0, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$5:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltipSetting$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltipSetting$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/Setting;

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v1, "tooltipSetting.value"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v2, "viewBinding.superSlowMotionTrimBar"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    invoke-virtual {v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->SETTING_UP:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->PROCESSING:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->showCancelDialog()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->showSkipDialog()V

    :goto_2
    return-void

    :cond_4
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->registerClient(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_20

    const-string v3, "com.motorola.superslowmotion.intent.mediaFile"

    const-class v5, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-static {v1, v3, v5}, Lcom/adobe/xmp/XMPUtils;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/storage/MediaFile$Memento;

    if-eqz v3, :cond_1f

    invoke-static {v3}, Lkotlin/UNINITIALIZED_VALUE;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v6

    const-string v3, "com.motorola.superslowmotion.intent.videoName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e

    const-string v3, "com.motorola.superslowmotion.intent.videoDate"

    const-wide/16 v8, -0x1

    invoke-virtual {v1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_1d

    const-string v3, "com.motorola.superslowmotion.intent.targetVideoDate"

    invoke-virtual {v1, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    cmp-long v3, v14, v12

    if-lez v3, :cond_1c

    const-string v3, "com.motorola.superslowmotion.intent.videoFrameRate"

    const/4 v8, -0x1

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    cmp-long v4, v4, v12

    if-lez v4, :cond_1b

    const-string v4, "com.motorola.superslowmotion.intent.slowDownRate"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v4, v1

    cmp-long v4, v4, v12

    if-lez v4, :cond_1a

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    move-object v5, v4

    move v13, v8

    move-wide v8, v10

    move-wide v10, v14

    move v12, v3

    move v3, v13

    move v13, v1

    invoke-direct/range {v5 .. v13}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;-><init>(Lcom/motorola/camera/storage/MediaFile;Ljava/lang/String;JJII)V

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->$r8$clinit:I

    sget-object v5, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v5, 0x7f0d00ff

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const-string v5, "inflate(LayoutInflater.from(this))"

    invoke-static {v1, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    new-instance v1, Landroidx/core/view/MenuHostHelper;

    new-instance v5, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$Factory;

    invoke-direct {v5, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$Factory;-><init>(Landroid/content/Context;Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;)V

    invoke-direct {v1, v0, v5}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {v1, v4}, Landroidx/core/view/MenuHostHelper;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iput-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const-string v5, "viewBinding"

    if-eqz v4, :cond_19

    invoke-virtual {v4, v1}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v4, "get(SettingsManager.PREVIEW_SIZE).value"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/util/Size;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_17

    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const-string v7, "viewModel"

    if-eqz v4, :cond_16

    iget-object v4, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    iget-object v4, v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayer:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setRestrictPlayheadPosition(Z)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_14

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;

    invoke-direct {v4, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_13

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnTimelineEditCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_12

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;

    invoke-direct {v4, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnTrimCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_11

    new-instance v4, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setOnFrameUpdateCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v4, "viewBinding.superSlowMotionTrimBar"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->getPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v8, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v8, v4, v3, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->previews:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v1, :cond_e

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingDone:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v1, :cond_d

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    const/4 v8, 0x2

    invoke-direct {v3, v0, v8}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingError:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v1, :cond_c

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;

    const/4 v7, 0x3

    invoke-direct {v3, v0, v7}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    iget-object v1, v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_b

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSkipButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_a

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_9

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string v3, "viewBinding.root"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$doOnLayout$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_8

    new-instance v3, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v4}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ActivityStarter;I)V

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const-string v1, "<this>"

    iget-object v3, v0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object v1, v3, Landroidx/lifecycle/Lifecycle;->internalScopeRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    new-instance v7, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    new-instance v9, Lkotlinx/coroutines/SupervisorJobImpl;

    invoke-direct {v9, v6}, Lkotlinx/coroutines/SupervisorJobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    sget-object v10, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v10, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    check-cast v10, Lkotlinx/coroutines/android/HandlerContext;

    iget-object v10, v10, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    invoke-virtual {v9, v10}, Lkotlinx/coroutines/JobSupport;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    invoke-direct {v7, v3, v9}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V

    :cond_5
    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    check-cast v1, Lkotlinx/coroutines/android/HandlerContext;

    iget-object v1, v1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v3, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$register$1;

    invoke-direct {v3, v7, v6}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl$register$1;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v1, v2, v3, v8}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_3
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14;

    invoke-direct {v3, v0, v6}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v1, v2, v3, v8}, Lkotlinx/coroutines/DelayKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v1, :cond_7

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_7
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_8
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_9
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_a
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_b
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_c
    invoke-static {v7}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_d
    invoke-static {v7}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_e
    invoke-static {v7}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_f
    invoke-static {v7}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_10
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_11
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_12
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_13
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_14
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_15
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_16
    invoke-static {v7}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_17
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_18
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_19
    invoke-static {v5}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing slow down rate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing video frame rate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing target video date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing video date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing video name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing media file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    invoke-static {p0}, Lcom/motorola/camera/storage/MediaVolumesHolder;->unregisterClient(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x7f08037c

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_0
    return-void

    :cond_2
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onPause()V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onResume()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onResume()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onStop()V

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    return-void
.end method

.method public final showCancelDialog()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelRequestOngoing:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1204be

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1204bc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    const v2, 0x7f12009b

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    const v1, 0x7f1204bd

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final showSkipDialog()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1204cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->data:Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;

    iget v2, v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionData;->sourceVideoFrameRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0x7f1204cd

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f12009b

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    const v2, 0x7f1204ce

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/JvmClassMappingKt;->launchGallery(Landroid/app/Activity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method

.method public final updateUiForSplitScreen(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "viewBinding"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0027

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v4, :cond_1

    iget-object v4, v4, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0704af

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v4, v0

    move v0, v1

    move v5, v4

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0704ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0704b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v6, v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0704b4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_1
    iget-object v6, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v6, :cond_8

    const-string v7, "viewBinding.superSlowMotionPreviewTopGuideline"

    iget-object v6, v6, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6, p1}, Ljms/IJobMgrService$_Parcel;->animatedSetGuidelineBegin(ILandroidx/constraintlayout/widget/Guideline;Z)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_7

    const-string v6, "viewBinding.superSlowMotionPreviewBottomGuideline"

    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v6}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int v4, v4

    invoke-static {v4, v0, p1}, Ljms/IJobMgrService$_Parcel;->animatedSetGuidelineEnd(ILandroidx/constraintlayout/widget/Guideline;Z)V

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_6

    const-string v2, "viewBinding.superSlowMot\u2026ProcessingBottomGuideline"

    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int v2, v5

    invoke-static {v2, v0, p1}, Ljms/IJobMgrService$_Parcel;->animatedSetGuidelineEnd(ILandroidx/constraintlayout/widget/Guideline;Z)V

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    if-eqz p0, :cond_4

    const/16 v1, 0x30

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_5
    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v3}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
