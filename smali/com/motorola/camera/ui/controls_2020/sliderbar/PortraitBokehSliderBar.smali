.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;
.super Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine$FaceDetectionListener;
.implements Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehSliderBar;


# static fields
.field public static final LISTENED_STATES:Ljava/util/Set;


# instance fields
.field public bokehLevelError:Z

.field public bokehMaxLevel:I

.field public bokehMinLevel:I

.field public portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

.field public seekBar:Landroid/widget/SeekBar;

.field public seekText:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->LISTENED_STATES:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    const-string v1, "StateKeyCollectionBuilde\u2026\n                .build()"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->LISTENED_STATES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    return-void
.end method


# virtual methods
.method public final getDrawableIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f0801f7

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getRotatedDrawables()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRotatedViews()Ljava/util/List;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekText:Landroid/widget/TextView;

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->LISTENED_STATES:Ljava/util/Set;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    :cond_2
    move v3, v1

    :cond_3
    if-nez v3, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getLayoutResource()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->inflateViewStub()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a030d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->rotateDrawables(IZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    new-instance v1, Landroidx/preference/SeekBarPreference$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/preference/SeekBarPreference$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v1, 0x7f0a0310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->updateIconsVisibility()V

    :cond_6
    return-void
.end method

.method public final isCurrentComponentAvailable()Z
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleBokehMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDepthMode()Z

    move-result p0

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

.method public final isFeatureInUse()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isTapSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized onFaceDetected([Landroid/hardware/camera2/params/Face;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onFaceDetected([Landroid/hardware/camera2/params/Face;)V
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

.method public final registerSubFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->needFaceDetect()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.fsm.camera.subfsms.FaceDetectStateMachine"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/FaceDetectStateMachine;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showSliderBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->isCurrentComponentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showSliderBar()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void
.end method

.method public final showToggle()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->isCurrentComponentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->showToggle()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->seekText:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120502

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isRTBokehBarSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/RTBokehModel;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/RTBokehModel;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;Lcom/motorola/camera/EventListener;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x12

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SingleBokehModel;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehSliderBar;Lcom/motorola/camera/EventListener;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->setupPortraitBokeh()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "changeEvent.context"

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->registerSubFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->registerSubFsmListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->onSingleShot(Lcom/motorola/camera/fsm/ChangeEvent;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->setAllowVisibleState(Z)V

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final declared-synchronized updateIconsVisibility()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->portraitBokehModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/IPortraitBokehModel;->isPortraitBokehSupported()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;->bokehLevelError:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
