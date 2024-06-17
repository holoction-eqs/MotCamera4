.class public abstract Lcom/motorola/camera/ui/uicomponents/UIComponentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getComponents([Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;ILandroid/view/View;Lcom/motorola/camera/EventListener;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_10

    aget-object v3, p0, v2

    iget v4, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mOrder:I

    if-eq v4, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v4, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$Type;->mParentResId:Ljava/lang/Integer;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AUTO_ENHANCE:Z

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent;

    invoke-direct {v5, p2, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/AutoEnhanceSelectorComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_1
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;

    invoke-direct {v5, p3}, Lcom/motorola/camera/ui/uicomponents/MediaControlComponent;-><init>(Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_2
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;

    invoke-direct {v5, p3}, Lcom/motorola/camera/ui/uicomponents/InactivityComponent;-><init>(Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/VstabIhcLuxToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoNightVisionSupported()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_7
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_FOCUS_TRACKING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/AutoFocusTrackingComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :cond_4
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_b
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_c
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionSupported()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_d
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/BannerPromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_e
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_f
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SEGMENTATION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_10
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_11
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/appinfo/AppInfoComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_12
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/PreviewSwapNewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_13
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_14
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_15
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SCENE_OPT_IN:Z

    if-nez v3, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/SceneDetectionOptInComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_16
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_17
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/AudioLensSwitchToggleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_18
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_19
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_1a
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/PortraitBokehSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_1b
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_1c
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->CLI_MIRROR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v6}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_1d
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_1e
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/VideoPortraitComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_1f
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/TimeLapseSliderBar;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_20
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY:Z

    if-nez v3, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    if-nez v3, :cond_7

    goto/16 :goto_2

    :cond_7
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_21
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_22
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_23
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/RecordingToastComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_24
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/motorola/camera/settings/CameraType;->CLI_WIDE:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v3, :cond_8

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleSmallCliComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :cond_8
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/multicamera/ZoomToggleCliComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_25
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureControlButtonComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_26
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_27
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->getDisplayCutoutProvider()Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/motorola/camera/provider/interfaces/DisplayCutoutProvider;->getHasCutout()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_28
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/SceneDetectionDebugComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_29
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_2a
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/cli/onboard/component/CliOnboardComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_2b
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_2

    :cond_9
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_2c
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_2d
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_2e
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_2f
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_30
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_a

    goto/16 :goto_2

    :cond_a
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_31
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto/16 :goto_2

    :pswitch_32
    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;->instance$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;

    invoke-direct {v5, v4, p3, v3}, Lcom/motorola/camera/ui/controls_2020/dualcapture/CaptureBarDualCaptureControlComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureStateHelper;)V

    goto/16 :goto_2

    :pswitch_33
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v3, :cond_b

    goto :goto_2

    :cond_b
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/modesmenu/SmallScreenModesMenuComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_35
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v3, :cond_c

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_2

    :cond_c
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_36
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarCameraSwitchComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_37
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_38
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/DialogPopup;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_39
    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v3, :cond_d

    invoke-interface {p3}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_2

    :cond_d
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_3a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    goto :goto_2

    :pswitch_3b
    new-instance v5, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-direct {v5, v4, p3}, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    :cond_e
    :goto_2
    if-eqz v5, :cond_f

    invoke-interface {v5}, Lcom/motorola/camera/ui/uicomponents/UIComponent;->init()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_10
    return-object v0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
