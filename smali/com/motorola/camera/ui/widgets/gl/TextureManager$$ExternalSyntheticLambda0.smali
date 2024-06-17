.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TextureManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TOUCH_TO_EXPOSE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TEXTURE_ATLAS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p0

    move-object v0, v4

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V

    goto/16 :goto_5

    :cond_0
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;

    invoke-direct {v7, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/RearMasterZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_FRONT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/FrontZoomComponent;

    invoke-direct {v7, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/RearSlaveZoomComponent;

    invoke-direct {v7, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/RearSlaveZoomComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->CLI_SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR_VIDEO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v6

    :goto_0
    const/4 v8, 0x1

    if-nez v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v8

    :goto_2
    if-nez v6, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MEDIA_CODEC:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-direct {v6, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    invoke-direct {v6, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->SHUTTER_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    invoke-direct {v6, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->TIMER_COUNTDOWN:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    invoke-direct {v6, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-direct {v6, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FRONT_FLASH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HELP_TOOLTIPS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->NAV_BAR_BACKGROUND:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz v2, :cond_7

    move-object v2, v4

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_7

    move v7, v8

    :cond_7
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HOLD_STILL:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    if-eqz v7, :cond_8

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    goto :goto_3

    :cond_8
    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->COMPOSITION_GUIDE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    invoke-direct {v6, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    :goto_3
    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDocScanSupported()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSlideScanSupported()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DOC_SCAN_UI:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lcom/motorola/camera/instrumentreport/DeveloperMenu;->isMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MLRN_GROUND_TRUTHS_SELECTOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->UX_DUMP:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PANO_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isGroupSelfieSupported(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->GROUP_SELFIE_UI_COMPONENT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->DEBUG_ID:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCinemagraphSupported()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    invoke-direct {v5, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    invoke-virtual {v0, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v5, :cond_f

    goto :goto_4

    :cond_f
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mOrientation:I

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onRotate(I)V

    goto :goto_4

    :cond_10
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Ljava/util/Collection;)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->PICTURE_REVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HDR10:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->registerStateChangeListener(Lcom/motorola/camera/fsm/camera/StateChangeListener;)V

    :cond_11
    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    :goto_5
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_3D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->$r8$lambda$gIJSkKcI-tThnvzTHp91NvVZEKM(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->checkMainUiLoading()V

    return-void

    :goto_6
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->$r8$lambda$gIJSkKcI-tThnvzTHp91NvVZEKM(Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
