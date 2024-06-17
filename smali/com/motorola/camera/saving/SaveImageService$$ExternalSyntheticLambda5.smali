.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-boolean p1, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v0, p0

    const/16 v1, 0x8

    iget v2, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->$r8$classId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "this$0"

    const/4 v6, 0x0

    iget-boolean v7, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v0, v0, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->$r8$clinit:I

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    if-eqz v7, :cond_0

    move v6, v1

    :cond_0
    invoke-interface {v0, v6, v1}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_1
    return-void

    :pswitch_1
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->animateZoomSlider(Z)V

    invoke-static {v7}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->triggerZoomVisibility(Z)V

    return-void

    :pswitch_2
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->getFaceBeautyState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setImageDrawable(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->beautyToggle:Landroid/widget/ImageButton;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    move v1, v6

    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-static {v0, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->enableManual$default(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;Z)V

    return-void

    :pswitch_3
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->SHOW_STATES:Ljava/util/Set;

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->hide()V

    goto :goto_3

    :cond_5
    iput-boolean v4, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->shouldShowToggleBar:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v6}, Landroid/view/View;->setSelected(Z)V

    :goto_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->showToggle()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;->animateShow()V

    :goto_3
    return-void

    :pswitch_4
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->MAIN_CLI_TEXT:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->buttonControl:Landroid/widget/Button;

    if-eqz v7, :cond_8

    if-eqz v1, :cond_b

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v5, :cond_7

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->MAIN_CLI_TEXT:Ljava/lang/String;

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->WIDE_CLI_TEXT:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v7, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v16, 0x3f8ccccd    # 1.1f

    mul-float v13, v7, v16

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v5, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v9, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;

    invoke-direct {v9, v0, v6}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;I)V

    invoke-virtual {v5, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v6, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v9, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v25, v9, v16

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v25}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v9, 0x7d0

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    new-instance v7, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;

    invoke-direct {v7, v0, v4}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent$animateZoomIn$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;I)V

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    :cond_8
    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v2, :cond_a

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->MAIN_CLI_TEXT:Ljava/lang/String;

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;->WIDE_CLI_TEXT:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_6
    return-void

    :pswitch_5
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->INFLATION_STATES:Ljava/util/Set;

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModesCloseButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    :goto_7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;->getModePill()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_8
    return-void

    :pswitch_6
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_e

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$9$lambda$8$$inlined$doOnNextLayout$1;

    invoke-direct {v2, v0, v7}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$onConfigurationChanged$lambda$9$lambda$8$$inlined$doOnNextLayout$1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_e
    return-void

    :pswitch_7
    check-cast v0, Landroid/view/View;

    sget v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    if-eqz v7, :cond_f

    const/4 v1, 0x4

    :cond_f
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_8
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_11

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    move v4, v6

    :goto_9
    if-eqz v4, :cond_11

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "IS_SELECTED"

    invoke-virtual {v3, v4, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_11
    return-void

    :pswitch_9
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->ON_VALUE_ALLOWED_SETTINGS:Ljava/util/List;

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v7, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfTorch:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->autoSetting:Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const-string v3, "FLASH.mName"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfTorch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TORCH_AUTO_TYPE"

    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_TORCH_AUTO_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v1, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->eventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_a
    check-cast v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    iget-object v1, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mPrivateTempVideoFile:Ljava/io/File;

    if-eqz v1, :cond_14

    if-eqz v7, :cond_13

    iget-object v2, v0, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v3}, Lcom/motorola/camera/storage/MediaFile;->asSharedMediaFile()Lcom/motorola/camera/storage/SharedMediaFile;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    const/16 v7, 0x4000

    invoke-virtual {v5, v7}, Lcom/motorola/camera/saving/FileName;->setAttribute(I)Lcom/motorola/camera/saving/FileName;

    move-object v7, v3

    check-cast v7, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    iget-object v7, v7, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaFilePath:Lcom/motorola/camera/storage/MediaFilePath;

    invoke-virtual {v5}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/motorola/camera/storage/MediaFilePath;->withFileName(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/motorola/camera/storage/StorageUtils;->copyTemporaryFileToMediaFile(Ljava/io/File;Lcom/motorola/camera/storage/MediaFile;)Z

    move-result v7

    if-eqz v7, :cond_12

    iput-object v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    goto :goto_a

    :cond_12
    const-string v2, "SaveImageService"

    const-string v4, "Unable to move timelapse file"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :goto_a
    if-eqz v4, :cond_13

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->notifyVideoSaveComplete(Lcom/motorola/camera/capturedmediadata/CapturedVideoData;)V

    :cond_13
    invoke-static {v1}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    :cond_14
    iget-object v0, v0, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mVideoThumbFile:Ljava/io/File;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->deleteTemporaryFile(Ljava/io/File;)V

    return-void

    :pswitch_b
    check-cast v0, Lcom/motorola/camera/CameraData;

    sget-object v1, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    if-eqz v7, :cond_15

    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/SaveListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveComplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v2, v0}, Lcom/motorola/camera/saving/SaveListener;->onSaveComplete(Lcom/motorola/camera/CameraData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    throw v1

    :cond_15
    iget-object v1, v1, Lcom/motorola/camera/saving/SaveImageService;->mSaveListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/saving/SaveListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".onSaveError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    :try_start_1
    invoke-interface {v2, v0}, Lcom/motorola/camera/saving/SaveListener;->onSaveError(Lcom/motorola/camera/CameraData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    throw v1

    :cond_16
    return-void

    :goto_d
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    if-eqz v7, :cond_17

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    invoke-virtual {v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-boolean v6, v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_e

    :cond_17
    sget v1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
