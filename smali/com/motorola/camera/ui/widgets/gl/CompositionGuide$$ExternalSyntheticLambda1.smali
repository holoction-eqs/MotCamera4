.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 37

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->$r8$classId:I

    const-string v2, ""

    const-string v3, "this$0"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_23

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v2

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v9, 0x41000000    # 8.0f

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v4, v1, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v3

    div-float/2addr v3, v6

    add-float/2addr v3, v1

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    mul-float/2addr v2, v9

    add-float/2addr v2, v4

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3, v1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    neg-float v2, v2

    invoke-virtual {v3, v1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateDots(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateModeIcon(I)V

    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mGuideText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void

    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->editFinish()V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v4, v2

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setMenuOrder(Ljava/util/ArrayList;)V

    :goto_1
    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onChanged$1()V

    return-void

    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    invoke-virtual {v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2

    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->$r8$clinit:I

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    invoke-virtual {v1, v5, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    :goto_2
    return-void

    :pswitch_6
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->-$$Nest$mdismissWindow(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V

    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dispatchReset()V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyCenterRoiAnimation(Z)V

    return-void

    :pswitch_8
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mFirstDrawing:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x96

    goto :goto_3

    :cond_5
    const-wide/16 v2, 0x3c

    :goto_3
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    :pswitch_9
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SmallCliModeComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->animateModeFadeOut()V

    return-void

    :pswitch_a
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void

    :pswitch_b
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;

    sget v1, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->$r8$clinit:I

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->mEnabledFastCaptureUITimer:Z

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/components/HoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f12013b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_NV_SLOW_CAPTURE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move v7, v8

    :goto_5
    if-eqz v7, :cond_9

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->NV_FRAME_COLLECTED_FINISHED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, v9}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_9
    return-void

    :pswitch_d
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;

    sget v1, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->$r8$clinit:I

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iput-boolean v7, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    new-instance v1, Ljava/io/File;

    const-string v3, "UxDump"

    invoke-static {v3}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "hierarchy"

    invoke-interface {v1, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rotation"

    invoke-interface {v1, v9, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "node"

    invoke-interface {v1, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "index"

    const-string v7, "0"

    invoke-interface {v1, v9, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "resource-id"

    const-string v8, "openGL-canvas"

    invoke-interface {v1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "text"

    invoke-interface {v1, v9, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v15, "class"

    invoke-interface {v1, v9, v15, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v14, "content-desc"

    invoke-interface {v1, v9, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v13, "selected"

    const-string v12, "false"

    invoke-interface {v1, v9, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v9, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v10, v10

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v9, v9

    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 p0, v12

    const-string v12, "[0.0,0.0]["

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v9, "]"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "StringBuffer().append(\"[\u2026t).append(\"]\").toString()"

    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v3

    const-string v3, "bounds"

    move-object/from16 v17, v11

    const/4 v11, 0x0

    invoke-interface {v1, v11, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    iput v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    const/4 v10, 0x1

    iput v10, v0, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v11, v10}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v10

    move-object/from16 v18, v12

    const-string v12, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.CameraPreview"

    invoke-static {v10, v12}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v12

    move-object/from16 v19, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v1, v13, v12}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v10, 0x0

    invoke-interface {v1, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, v11, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    const-string v12, "mTextureManager.allComponents"

    invoke-static {v10, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object v10, v0

    move-object v13, v10

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    sget-object v21, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eqz v14, :cond_2a

    const-string v10, "item.value"

    move-object/from16 v21, v4

    const-string v4, "item.key"

    move-object/from16 v23, v15

    const/4 v15, 0x2

    if-eq v14, v15, :cond_24

    const/16 v15, 0x12

    if-eq v14, v15, :cond_23

    const/16 v15, 0x15

    if-eq v14, v15, :cond_14

    const/16 v15, 0x21

    if-eq v14, v15, :cond_13

    const/16 v15, 0x19

    if-eq v14, v15, :cond_12

    const/16 v15, 0x1a

    if-eq v14, v15, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_11

    iget v12, v13, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v13, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    sget-object v14, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_SLIDER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v11, v14}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeSliderComponent"

    invoke-static {v14, v15}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->isVisible()Z

    move-result v15

    if-nez v15, :cond_c

    :goto_7
    move-object/from16 v29, v2

    move-object v15, v8

    move-object v4, v13

    move-object/from16 v2, v17

    move-object/from16 v31, v19

    move-object/from16 v25, v22

    move-object v8, v3

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    move-object/from16 v3, v18

    :goto_8
    move-object/from16 v18, v7

    goto/16 :goto_15

    :cond_c
    iget-object v15, v14, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v15}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v15

    invoke-virtual {v13, v14, v1, v12, v15}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v14, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;

    move-object/from16 v24, v11

    iget-boolean v11, v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v11, :cond_e

    const-string v11, "mode_slider_menu_button"

    invoke-virtual {v14, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    move-object/from16 v24, v11

    const/4 v14, 0x0

    :cond_e
    :goto_9
    const-string v11, "modeSlider.child"

    invoke-static {v14, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    const/4 v11, 0x0

    move v14, v11

    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-object/from16 v27, v13

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    iget-object v12, v12, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/RectF;

    move-object/from16 v26, v3

    iget v3, v12, Landroid/graphics/RectF;->left:F

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object/from16 v28, v9

    const/4 v9, 0x0

    invoke-virtual {v13, v3, v12, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v15}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v12, v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v9, v12

    iput v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v12, v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v9, v12

    iput v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget v12, v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v9, v12

    iput v9, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v11

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v29, v14, 0x1

    move-object v13, v10

    move-object v10, v0

    move-object/from16 v30, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v24

    move-object v11, v9

    move-object/from16 v9, p0

    move-object/from16 v36, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v36

    move-object/from16 v24, v4

    move-object/from16 v32, v13

    move-object/from16 v31, v19

    move-object/from16 v4, v27

    move-object v13, v1

    move-object/from16 v9, v22

    move-object/from16 v19, v15

    move-object/from16 v9, v23

    move-object v15, v3

    invoke-virtual/range {v10 .. v15}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v3, 0x0

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v14, v29

    goto :goto_b

    :cond_f
    move-object/from16 v26, v3

    move-object/from16 v30, v4

    move-object/from16 v28, v9

    move-object/from16 v32, v10

    move-object v4, v13

    move-object/from16 v31, v19

    move-object/from16 v9, v23

    move-object/from16 v19, v15

    move-object/from16 v36, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v36

    :goto_b
    move-object v13, v4

    move-object/from16 v23, v9

    move-object/from16 v15, v19

    move-object/from16 v3, v26

    move-object/from16 v9, v28

    move-object/from16 v4, v30

    move-object/from16 v19, v31

    move-object/from16 v10, v32

    move-object/from16 v36, v24

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v36

    goto/16 :goto_a

    :cond_10
    move-object/from16 v26, v3

    move-object/from16 v28, v9

    move-object v4, v13

    move-object/from16 v31, v19

    move-object/from16 v9, v23

    move-object/from16 v36, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v36

    const/4 v3, 0x0

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v19, v0

    move-object/from16 v29, v2

    move-object v15, v8

    goto/16 :goto_14

    :cond_11
    move-object/from16 v28, v9

    move-object v4, v13

    move-object/from16 v24, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v29, v2

    move-object v15, v8

    move-object/from16 v2, v18

    move-object/from16 v31, v19

    move-object/from16 v25, v22

    move-object v8, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v11

    move-object/from16 v3, v24

    goto/16 :goto_15

    :cond_12
    move-object/from16 v30, v4

    move-object/from16 v28, v9

    move-object v4, v13

    move-object/from16 v24, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v29, v2

    move-object v15, v8

    move-object/from16 v34, v10

    move-object/from16 v2, v18

    move-object/from16 v31, v19

    move-object/from16 v25, v22

    move-object v8, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v11

    move-object/from16 v3, v24

    goto/16 :goto_17

    :cond_13
    move-object/from16 v28, v9

    move-object v4, v13

    move-object/from16 v24, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v29, v2

    move-object v15, v8

    move-object/from16 v2, v18

    move-object/from16 v31, v19

    move-object/from16 v25, v22

    move-object v8, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v11

    move-object/from16 v3, v24

    goto/16 :goto_16

    :cond_14
    move-object/from16 v26, v3

    move-object/from16 v30, v4

    move-object/from16 v28, v9

    move-object/from16 v32, v10

    move-object v4, v13

    move-object/from16 v24, v18

    move-object/from16 v31, v19

    move-object/from16 v9, v23

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object v0, v11

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v3

    if-eqz v3, :cond_22

    iget v3, v4, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v10, v3, 0x1

    iput v10, v4, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {v0, v10}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ZoomComponent"

    invoke-static {v10, v11}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v11

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    :goto_c
    const-string v12, "["

    const-string v13, "]["

    const-class v14, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    if-eqz v11, :cond_16

    const/4 v11, 0x0

    invoke-interface {v1, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v11, v4, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    add-int/lit8 v15, v11, 0x1

    iput v15, v4, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mChildIndex:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-interface {v1, v15, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "Zoom_slider"

    invoke-interface {v1, v15, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v15, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v15, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v22

    invoke-interface {v1, v15, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v11, v31

    move-object/from16 v0, p0

    invoke-interface {v1, v15, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v15, v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v0, 0x4

    invoke-virtual {v15, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    const/high16 v23, 0x40000000    # 2.0f

    div-float v15, v15, v23

    sub-float/2addr v4, v15

    iget v15, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float v11, v11, v23

    sub-float/2addr v15, v11

    iget v11, v0, Landroid/graphics/PointF;->x:F

    move-object/from16 v25, v9

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    div-float v9, v9, v23

    add-float/2addr v9, v11

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomBarLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float v11, v11, v23

    add-float/2addr v11, v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-object/from16 v4, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-object/from16 v9, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, v18

    invoke-static {v0, v15}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object/from16 v15, v26

    invoke-interface {v1, v11, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d

    :cond_16
    move-object/from16 v19, v0

    move-object/from16 v25, v9

    move-object/from16 v4, v24

    move-object/from16 v15, v26

    move-object/from16 v9, v28

    const/4 v11, 0x0

    :goto_d
    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v0

    move-object/from16 v26, v15

    const-string v15, "Zoom_button"

    if-eqz v0, :cond_1f

    invoke-interface {v1, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v11, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v11, v7, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v11, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v14

    move-object/from16 v14, v25

    invoke-interface {v1, v11, v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v22

    invoke-interface {v1, v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v24, v3

    move-object/from16 v22, v15

    move-object/from16 v15, v31

    move-object/from16 v3, p0

    invoke-interface {v1, v11, v15, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v11

    move-object/from16 v3, v17

    iget-object v15, v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v11, v15}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v15

    iget v3, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v25, v0

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v27, 0x40000000    # 2.0f

    div-float v0, v0, v27

    sub-float/2addr v3, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move-object/from16 v28, v2

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float v2, v2, v27

    sub-float/2addr v0, v2

    iget v2, v15, Landroid/graphics/PointF;->x:F

    move-object/from16 v29, v14

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float v14, v14, v27

    add-float/2addr v14, v2

    iget v2, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomButtonLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float v15, v15, v27

    add-float/2addr v15, v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v15, v26

    invoke-interface {v1, v3, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->isZoomButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mTeleToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    move-object/from16 v18, v10

    if-eqz v14, :cond_17

    iget-boolean v10, v14, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v10, :cond_17

    const-string v10, "zoom_toggle_tele"

    invoke-virtual {v3, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_18

    iget-boolean v14, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v14, :cond_18

    const-string v14, "zoom_toggle_wide"

    invoke-virtual {v3, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mUWideToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$1;

    if-eqz v10, :cond_19

    iget-boolean v14, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v14, :cond_19

    const-string v14, "zoom_toggle_uwide"

    invoke-virtual {v3, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mMacroToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v10, :cond_1a

    iget-boolean v14, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v14, :cond_1a

    const-string v14, "zoom_toggle_macro"

    invoke-virtual {v3, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mPortraitCloseUpToggle:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$6;

    if-eqz v0, :cond_1c

    iget-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v10, :cond_1c

    const-string v10, "zoom_toggle_close_up"

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1b
    move-object/from16 v18, v10

    const/4 v3, 0x0

    :cond_1c
    :goto_e
    const-string v0, "zoomComponent.child"

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v14

    move-object/from16 v26, v0

    iget v0, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    move-object/from16 v27, v15

    iget v15, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    move-object/from16 v33, v11

    iget v11, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v0, v11

    iget v11, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v15, v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v14, v30

    invoke-static {v11, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v14, v32

    invoke-static {v10, v14}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v32, v3, 0x1

    move-object/from16 v34, v14

    const/4 v14, 0x0

    invoke-interface {v1, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v6, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v14, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v14, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v29

    invoke-interface {v1, v14, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v3, v28

    move-object/from16 v36, v25

    move-object/from16 v25, v11

    move-object/from16 v11, v36

    invoke-interface {v1, v14, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isSelected()Z

    move-result v28

    move-object/from16 v29, v3

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v11

    move-object/from16 v11, v31

    invoke-interface {v1, v14, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v14, v17

    iget-object v3, v14, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    iget v11, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v11, v11

    const/high16 v35, 0x40000000    # 2.0f

    div-float v11, v11, v35

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float v3, v3, v35

    invoke-virtual {v14, v11, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v14, v3, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v3, 0x2

    new-array v11, v3, [F

    const/16 v35, 0x0

    aput v0, v11, v35

    const/4 v0, 0x1

    aput v15, v11, v0

    new-array v3, v3, [F

    invoke-virtual {v14, v3, v11}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    new-instance v11, Landroid/graphics/PointF;

    aget v14, v3, v35

    aget v0, v3, v0

    invoke-direct {v11, v14, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget v0, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v3, v14

    sub-float/2addr v0, v3

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v15, v14

    sub-float/2addr v3, v15

    iget v15, v11, Landroid/graphics/PointF;->x:F

    move-object/from16 v35, v8

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v8, v14

    add-float/2addr v8, v15

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v10, v14

    add-float/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v8, v27

    invoke-interface {v1, v3, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, v29

    move/from16 v3, v32

    goto :goto_10

    :cond_1d
    move-object/from16 v26, v0

    move-object/from16 v35, v8

    move-object/from16 v33, v11

    move-object v8, v15

    move-object/from16 v0, v28

    move-object/from16 v34, v32

    move-object/from16 v28, v25

    move-object/from16 v25, v29

    :goto_10
    move-object v15, v8

    move-object/from16 v29, v25

    move-object/from16 v25, v28

    move-object/from16 v11, v33

    move-object/from16 v32, v34

    move-object/from16 v8, v35

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    goto/16 :goto_f

    :cond_1e
    move-object/from16 v35, v8

    move-object v8, v15

    move-object/from16 v0, v28

    move-object/from16 v28, v25

    move-object/from16 v25, v29

    const/4 v3, 0x0

    sget-object v10, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_11

    :cond_1f
    move-object v0, v2

    move/from16 v24, v3

    move-object/from16 v35, v8

    move-object/from16 v23, v14

    move-object/from16 v2, v18

    move-object/from16 v28, v22

    move-object/from16 v8, v26

    move-object/from16 v18, v10

    move-object/from16 v22, v15

    :goto_11
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v3

    move-object/from16 v10, v18

    if-eqz v3, :cond_20

    iget-object v3, v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mSegmentLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    goto :goto_12

    :cond_20
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_21

    const/4 v3, 0x0

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v3, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v11, v22

    invoke-interface {v1, v3, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v15, v35

    invoke-interface {v1, v3, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    invoke-interface {v1, v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v14, v28

    invoke-interface {v1, v3, v14, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v23, v0

    move-object/from16 v11, v31

    move-object/from16 v0, p0

    invoke-interface {v1, v3, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getLabelPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v17, v6

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v3

    iget v6, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v18, v7

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    const/high16 v22, 0x40000000    # 2.0f

    div-float v7, v7, v22

    sub-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float v11, v11, v22

    sub-float/2addr v7, v11

    iget v11, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v25, v14

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float v14, v14, v22

    add-float/2addr v14, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getSegmentLabelLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->y:F

    div-float v10, v10, v22

    add-float/2addr v10, v3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v1, v6, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_13

    :cond_21
    move-object/from16 v29, v0

    move-object/from16 v18, v7

    move-object/from16 v0, v17

    move-object/from16 v23, v25

    move-object/from16 v25, v28

    move-object/from16 v15, v35

    move-object/from16 v17, v6

    :goto_13
    move-object v13, v0

    move-object v3, v4

    move-object/from16 v26, v19

    move-object/from16 v27, v31

    move-object/from16 v19, v2

    move-object/from16 v31, v8

    move-object v8, v15

    goto/16 :goto_1d

    :cond_22
    move-object/from16 v19, v0

    move-object/from16 v29, v2

    move-object v15, v8

    move-object/from16 v23, v9

    :goto_14
    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v25, v22

    move-object/from16 v3, v24

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    move-object/from16 v17, v6

    goto/16 :goto_8

    :goto_15
    move-object v10, v0

    move-object v13, v4

    move-object/from16 v26, v19

    move-object/from16 v27, v31

    move-object/from16 v19, v2

    move-object/from16 v31, v8

    move-object v8, v15

    goto/16 :goto_20

    :cond_23
    move-object/from16 v29, v2

    move-object v15, v8

    move-object v4, v13

    move-object/from16 v2, v17

    move-object/from16 v31, v19

    move-object/from16 v25, v22

    move-object v8, v3

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    move-object/from16 v3, v18

    move-object/from16 v18, v7

    :goto_16
    move-object/from16 v26, v19

    move-object/from16 v27, v31

    move-object/from16 v19, v2

    move-object/from16 v31, v8

    move-object v8, v15

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object v15, v8

    move-object/from16 v34, v10

    move-object v4, v13

    move-object/from16 v2, v17

    move-object/from16 v31, v19

    move-object/from16 v25, v22

    move-object v8, v3

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    move-object/from16 v3, v18

    move-object/from16 v18, v7

    :goto_17
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_29

    iget v6, v4, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v4, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mIndex:I

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MODES_MENU:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-object/from16 v14, v19

    invoke-virtual {v14, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v7

    const-string v10, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ModeMenuComponent"

    invoke-static {v7, v10}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object v10, v7, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    invoke-virtual {v4, v7, v1, v6, v13}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseComponent(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, v7, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mModesItemCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v19, v2

    const-string v2, "mode_%d"

    invoke-static {v11, v2, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v7, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v19

    goto :goto_18

    :cond_25
    move-object/from16 v19, v2

    goto :goto_19

    :cond_26
    move-object/from16 v19, v2

    const/4 v7, 0x0

    :goto_19
    const-string v2, "modeMenus.child"

    invoke-static {v7, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v11

    iget-object v10, v10, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/RectF;

    iget v12, v10, Landroid/graphics/RectF;->left:F

    iget v10, v10, Landroid/graphics/RectF;->top:F

    move-object/from16 v22, v2

    const/4 v2, 0x0

    invoke-virtual {v11, v12, v10, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v12, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v10, v12

    iput v10, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v12, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v10, v12

    iput v10, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v10, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget v11, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v10, v11

    iput v10, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v12, v30

    invoke-static {v10, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v10, v34

    invoke-static {v7, v10}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-int/lit8 v24, v6, 0x1

    move-object/from16 v26, v10

    move-object v10, v0

    move-object/from16 v27, v31

    move-object/from16 v28, v12

    move-object v12, v7

    move-object v7, v13

    move-object v13, v1

    move-object/from16 v30, v28

    move-object/from16 v28, v26

    move-object/from16 v26, v14

    move v14, v6

    move-object/from16 v31, v8

    move-object v8, v15

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->parseRectTexture(Ljava/lang/String;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lorg/xmlpull/v1/XmlSerializer;ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v6, v24

    goto :goto_1b

    :cond_27
    move-object/from16 v22, v2

    move-object v7, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v31

    move-object/from16 v28, v34

    move-object/from16 v31, v8

    move-object v8, v15

    :goto_1b
    move-object v13, v7

    move-object v15, v8

    move-object/from16 v2, v22

    move-object/from16 v14, v26

    move-object/from16 v34, v28

    move-object/from16 v8, v31

    move-object/from16 v31, v27

    goto/16 :goto_1a

    :cond_28
    move-object/from16 v26, v14

    move-object/from16 v27, v31

    move-object/from16 v31, v8

    move-object v8, v15

    const/4 v2, 0x0

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_1c
    move-object v10, v0

    goto :goto_1e

    :cond_29
    move-object/from16 v26, v19

    move-object/from16 v27, v31

    move-object/from16 v19, v2

    move-object/from16 v31, v8

    move-object v8, v15

    move-object v13, v4

    :goto_1d
    move-object v14, v0

    goto :goto_1f

    :cond_2a
    move-object/from16 v29, v2

    move-object/from16 v31, v3

    move-object/from16 v21, v4

    move-object/from16 v26, v11

    move-object v4, v13

    move-object/from16 v23, v15

    move-object/from16 v3, v18

    move-object/from16 v27, v19

    move-object/from16 v25, v22

    move-object/from16 v18, v7

    move-object/from16 v19, v17

    move-object/from16 v17, v6

    :goto_1e
    move-object v13, v4

    move-object v14, v10

    :goto_1f
    move-object v10, v14

    :goto_20
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v17, v19

    move-object/from16 v4, v21

    move-object/from16 v15, v23

    move-object/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v19, v27

    move-object/from16 v2, v29

    move-object/from16 v18, v3

    move-object/from16 v3, v31

    goto/16 :goto_6

    :cond_2b
    move-object/from16 v21, v4

    const/4 v0, 0x0

    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v2, v21

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/motorola/camera/ui/uicomponents/UxDumpGlComponent;->mRunning:Z

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return-void

    :pswitch_e
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->setCaptureBarGuidelinePosition(Z)V

    return-void

    :pswitch_f
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :pswitch_10
    move-object v1, v2

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFormData()V

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    :cond_2c
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    :cond_2d
    if-eqz v9, :cond_2e

    invoke-virtual {v9, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v9, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v9, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_2e
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-nez v2, :cond_2f

    goto :goto_21

    :cond_2f
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;

    invoke-direct {v5, v0, v3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;

    const/4 v6, 0x2

    invoke-direct {v3, v0, v6}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v4, v5, v3}, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_21
    sget-object v2, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v2}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v4}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v6, 0x7

    new-array v7, v6, [Ljava/lang/Object;

    sget-boolean v8, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v8

    if-eqz v8, :cond_30

    const-string v8, ".cn"

    goto :goto_22

    :cond_30
    move-object v8, v1

    :goto_22
    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x55d71eb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const/4 v5, 0x3

    aput-object v1, v7, v5

    const/4 v1, 0x4

    aput-object v2, v7, v1

    const/4 v1, 0x5

    aput-object v3, v7, v1

    const/4 v1, 0x6

    aput-object v4, v7, v1

    const-string v1, "https://help.motorola.com%s/hc/apps/camera/index.php?v=%s&app=%s&t=%s&m=%s&sku=%s&os=%s"

    const-string v2, "format(format, *args)"

    invoke-static {v7, v6, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v2, :cond_31

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_31
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz v1, :cond_32

    const v2, 0x7f060366

    iget-object v0, v0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_32
    return-void

    :pswitch_11
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/generic/HighlightSwitchPreference;->itemView:Landroid/view/View;

    iget-object v2, v0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v3, 0x7f0603b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v4, 0x7f0603a7

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const-string v5, "backgroundColor"

    filled-new-array {v3, v2}, [I

    move-result-object v2

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x2bc

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Landroidx/transition/Transition$2;

    invoke-direct {v3, v1, v4}, Landroidx/transition/Transition$2;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->shouldAnimate:Z

    return-void

    :pswitch_12
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ProgressBar;

    sget v1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->ALPHA_ENABLED:F

    const-string v1, "$it"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    :pswitch_13
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->updateEnabledAndType()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->setGridType()V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide;->updateGridVisibility(Z)V

    :cond_34
    return-void

    :goto_23
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/ImageReaderWrapper;

    iget-object v1, v0, Lcom/motorola/camera/utility/ImageReaderWrapper;->mListener:Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;

    if-eqz v1, :cond_35

    invoke-interface {v1, v0}, Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;->onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V

    :cond_35
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
