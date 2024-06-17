.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.source "SourceFile"


# instance fields
.field public mAnim:I

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

.field public mBtnDownPosition:Landroid/graphics/PointF;

.field public final mDensity:F

.field public final mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

.field public mDragDirection:I

.field public mDragDisableTime:J

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mLastPosition:Landroid/graphics/PointF;

.field public mLeftIgnoreArea:F

.field public mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mOnDownOrigin:Landroid/graphics/PointF;

.field public mOnOtherDownHandled:Z

.field public mOrientation:I

.field public mRightIgnoreArea:F

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public static -$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-direct {p1, p2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDisableTime:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;-><init>(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    return-void
.end method


# virtual methods
.method public final animateModeFadeIn(ILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateModeIcon(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->updateDots(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v9, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-object/from16 v3, p2

    if-ne v3, v2, :cond_0

    const/high16 v2, 0x42800000    # 64.0f

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d800000    # -64.0f

    :goto_0
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    mul-float/2addr v3, v2

    iput v3, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v2, 0x0

    iput v2, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;

    invoke-direct {v5, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;I)V

    const-wide/16 v6, 0xb4

    const/16 v16, 0x2

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lkotlin/ULong$Companion;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v2, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v3, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;

    const/4 v2, 0x2

    invoke-direct {v11, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;I)V

    const-wide/16 v12, 0xb4

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateModeFadeOut()V
    .locals 10

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;I)V

    const-wide/16 v2, 0xb4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v8, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v1, v0, v3

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v8, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkSwitchMode(F)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    cmpl-float v1, p1, v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v3, 0x1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V

    return v3

    :cond_0
    const/high16 v1, -0x3e000000    # -32.0f

    mul-float/2addr v0, v1

    cmpg-float p1, p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V

    return v3

    :cond_1
    return v0
.end method

.method public final getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final loadTexture()V
    .locals 10

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v2, 0x7f080219

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const v4, 0x7f0801cd

    const/4 v5, 0x2

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    const/high16 v4, 0x41400000    # 12.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    mul-float/2addr v5, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object v0

    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mInitialTouchSlop:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v6, 0x7f12040c

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    move-object v4, v1

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v5, v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mPadding:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    invoke-virtual {v0, v5, v2, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v2, 0x7f08020d

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v2, 0x7f080194

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnim:I

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onDrawFbo([F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->onPreDraw()Z

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDisableTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDisableTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0xb4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eq v3, v2, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_15

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;->SLIDER_TOUCH_DOWN:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeUtils$GridFlag;

    invoke-virtual {v7, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLastPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    invoke-virtual {v4, v1, v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLastPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_2
    move v1, v2

    goto/16 :goto_c

    :cond_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    if-eqz v0, :cond_6

    if-ne v0, v5, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v2

    :goto_4
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v3, v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3dcccccd    # 0.1f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    cmpl-float v2, v3, v5

    if-lez v2, :cond_9

    goto :goto_5

    :cond_8
    cmpl-float v2, v5, v3

    if-lez v2, :cond_9

    :goto_5
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_6

    :cond_9
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v2, v4, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->checkSwitchMode(F)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7

    :cond_b
    if-nez v0, :cond_15

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v0, v8, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->checkSwitchMode(F)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_7
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    goto/16 :goto_c

    :cond_c
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    if-eqz v0, :cond_15

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const/high16 v0, 0x40800000    # 4.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    mul-float/2addr v4, v0

    float-to-double v4, v4

    cmpl-double v0, v2, v4

    if-lez v0, :cond_15

    iput-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    goto/16 :goto_c

    :cond_d
    :goto_8
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    goto/16 :goto_b

    :cond_e
    iput-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mBtnDownPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_f

    goto/16 :goto_c

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLeftIgnoreArea:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mRightIgnoreArea:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_10

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mLastPosition:Landroid/graphics/PointF;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    goto :goto_c

    :cond_10
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_14

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnOtherDownHandled:Z

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    if-eqz v0, :cond_12

    if-ne v0, v5, :cond_11

    goto :goto_9

    :cond_11
    move v0, v1

    goto :goto_a

    :cond_12
    :goto_9
    move v0, v2

    :goto_a
    if-eqz v0, :cond_13

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    if-ne v0, v4, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOnDownOrigin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->checkSwitchMode(F)Z

    :cond_13
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDragDirection:I

    invoke-virtual {v7}, Lcom/motorola/camera/utility/Flags;->clear()V

    goto :goto_c

    :cond_14
    :goto_b
    move v1, v3

    :cond_15
    :goto_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public final setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    :cond_1
    return-void
.end method

.method public final switchToDrag(Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;Z)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSmallCliSliderLeftMode(I)I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSmallCliSlider()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getSliderMenuMode()I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_0

    if-ne v2, p1, :cond_0

    move v1, v4

    goto :goto_2

    :cond_0
    if-ne p1, v4, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertSmallCliToSliderMode(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v3

    move v6, v4

    :goto_0
    if-ltz v5, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v6}, Lcom/motorola/camera/settings/ModeSettingsHelper;->convertToRealMode(I)I

    move-result v1

    :goto_2
    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_6

    if-ne v1, v3, :cond_4

    return-void

    :cond_4
    if-ne v1, v4, :cond_5

    return-void

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_7

    return-void

    :cond_7
    :goto_3
    if-eqz p2, :cond_8

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    goto :goto_4

    :cond_8
    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-static {p0, p1, v0, p2}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;IILcom/motorola/camera/fsm/camera/Trigger$DragDirection;)Z

    const/16 p1, 0x10

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->playHaptic(I)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mNVIndicatorIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mAppClose:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    :cond_0
    return-void
.end method

.method public final updateDots(Z)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mDensity:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v5, v3, v4

    add-float/2addr v5, v1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mOrientation:I

    const/16 v6, 0xb4

    if-ne v1, v6, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float/2addr v4, v3

    sub-float v5, v0, v4

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 v0, -0x3e800000    # -16.0f

    mul-float/2addr v0, v3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v1, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr v3, p1

    invoke-virtual {p0, v3, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final updateModeIcon(I)V
    .locals 6

    const/16 v0, 0x12

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v4, 0x7f080219

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f12040c

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v4, 0x7f08022a

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f120418

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeIcon:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v4, 0x7f08021c

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v5, 0x7f12040f

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotVideo:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    if-ne p1, v2, :cond_4

    move v2, v4

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPhoto:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-nez p1, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture;->mModeDotPort:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz p0, :cond_8

    if-eq p1, v1, :cond_7

    if-ne p1, v0, :cond_6

    goto :goto_4

    :cond_6
    move v4, v5

    :cond_7
    :goto_4
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_8
    return-void
.end method
