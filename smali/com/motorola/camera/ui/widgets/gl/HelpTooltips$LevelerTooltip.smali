.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;
.super Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V
    .locals 7

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    new-instance p1, Landroid/util/SizeF;

    const/high16 p2, 0x43700000    # 240.0f

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-direct {p1, p2, v0}, Landroid/util/SizeF;-><init>(FF)V

    const p2, 0x7f1205e1

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(ILandroid/util/SizeF;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    const v1, 0x7f1205db

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(IILandroid/util/SizeF;ZZZ)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void

    :goto_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final markDismissed()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    const-string p0, "IS_SELECTED"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->HELP_TOOLTIP_LEVELER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SELECT_COLOR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :goto_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_NO_LEVELER_CAPTURE_IMAGE_COUNT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_LEVELER_STEP:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/16 v4, 0x13

    if-ne v0, v4, :cond_3

    if-ne v3, v1, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->showTutorial()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    move v2, v1

    :goto_1
    return v2

    :goto_2
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateDisplay(ILcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x4

    const/16 v3, 0xb4

    const/4 v4, 0x0

    const/16 v5, 0x5a

    const/16 v6, 0x10e

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$LevelerTooltip;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isLevelerSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v1, v4, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    iget-object v0, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    mul-float/2addr v11, v10

    div-float/2addr v11, v7

    if-eq p1, v5, :cond_1

    if-ne p1, v6, :cond_4

    :cond_1
    iget-object v10, p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget v10, v10, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    const v12, 0x3fa66666    # 1.3f

    cmpl-float v10, v10, v12

    if-nez v10, :cond_4

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p2

    sget-object v10, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x21

    if-eq v10, v12, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v10, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/lit16 v10, v10, 0xa0

    div-int/lit16 v10, v10, 0x140

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne p2, v10, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    const/high16 p2, 0x42b40000    # 90.0f

    sub-float/2addr v11, p2

    :cond_4
    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v6, :cond_5

    move p2, v4

    move v3, p2

    goto :goto_4

    :cond_5
    div-float p2, v9, v7

    add-float/2addr p2, v4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    add-float/2addr v3, p2

    add-float/2addr v3, v11

    goto :goto_2

    :cond_6
    div-float p2, v9, v7

    sub-float p2, v0, p2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr p2, v3

    sub-float/2addr p2, v11

    goto :goto_3

    :cond_7
    div-float p2, v9, v7

    sub-float p2, v4, p2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr p2, v3

    sub-float v3, p2, v11

    :goto_2
    move p2, v0

    goto :goto_4

    :cond_8
    div-float p2, v9, v7

    add-float/2addr p2, v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    add-float/2addr v3, p2

    add-float p2, v3, v11

    :goto_3
    move v3, v4

    :goto_4
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    iget-object v2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    invoke-static {v2}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    div-float/2addr v9, v7

    sub-float/2addr v0, v9

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v7

    sub-float/2addr v0, p1

    sub-float p2, v0, v11

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    :cond_9
    invoke-virtual {v1, v3, p2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :goto_5
    return-void

    :goto_6
    invoke-virtual {v1, v4, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v9, 0x42400000    # 48.0f

    mul-float/2addr v9, v0

    div-float/2addr v9, v7

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    add-float/2addr v10, v9

    const/high16 v9, 0x41800000    # 16.0f

    mul-float/2addr v9, v0

    add-float/2addr v9, v10

    iget-object v10, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v10, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v11

    mul-float/2addr v11, v0

    div-float/2addr v11, v7

    sub-float/2addr v10, v11

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p2

    invoke-static {p2}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, v8, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p2

    div-float/2addr p2, v7

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float v10, p2, v0

    :cond_a
    if-eqz p1, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v6, :cond_e

    goto :goto_7

    :cond_b
    sub-float/2addr v10, v9

    goto :goto_7

    :cond_c
    neg-float v9, v9

    goto :goto_8

    :cond_d
    add-float/2addr v10, v9

    :goto_7
    move v9, v4

    :cond_e
    :goto_8
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    invoke-virtual {v1, v9, v10, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
