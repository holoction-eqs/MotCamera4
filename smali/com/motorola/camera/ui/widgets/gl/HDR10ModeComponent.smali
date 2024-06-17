.class public final Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public final mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mBlurTexSize:Landroid/graphics/PointF;

.field public mContinuousBlur:Z

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mCopyPreview:Z

.field public mCurrentSplitMode:Z

.field public final mDensity:F

.field public mHasPendingAnimation:Z

.field public mIsControlPanelOpened:Z

.field public mIsHDR10Mode:Z

.field public final mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

.field public mModeSwitchTargetRatio:F

.field public final mPreviewChangeList:Ljava/util/ArrayList;

.field public final mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;I)V

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p2, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mDensity:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, p2

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->windowBackground:I

    invoke-direct {p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {p2, p0, v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public static enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;Z[F[F)V
    .locals 8

    const/16 v0, 0xb90

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    const/16 v0, 0x1e00

    const/16 v1, 0x1e01

    invoke-static {v0, v0, v1}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const-string v1, "glStencilOp"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const-string v3, "glColorMask"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const-string v4, "glDepthMask"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v5, 0x207

    const/4 v6, 0x1

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const-string v5, "glStencilFunc"

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v0, v0, v0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p0, 0x202

    goto :goto_0

    :cond_0
    const/16 p0, 0x205

    :goto_0
    invoke-static {p0, v6, v7}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    return-void
.end method


# virtual methods
.method public final applyPreviewChange(Z)V
    .locals 20

    move-object/from16 v9, p0

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {v2, v3, v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    invoke-direct {v8, v2, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v3, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v3, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v3, 0x4

    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    if-nez p1, :cond_0

    iget v0, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v10, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    invoke-virtual {v10, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_0

    :cond_0
    iget-object v2, v10, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mStencilSize:Landroid/util/SizeF;

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v1, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v1, v5

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    sub-float v4, v1, v4

    iget-object v1, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, v5

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    sub-float v5, v1, v5

    invoke-virtual {v10, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float v11, v0, v1

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v11

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;Landroid/util/SizeF;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/CameraKpi;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const-wide/16 v0, 0xc8

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v12, v14

    move-object v2, v14

    move-wide v14, v0

    invoke-direct/range {v12 .. v19}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v2, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :goto_0
    return-void
.end method

.method public final darkenPreview(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HDR10ModeComponent"

    return-object p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mDensity:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDraw([F[F[F)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;Z[F[F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    const/4 p3, -0x1

    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    const/16 v1, 0xb90

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string v2, "glDisable"

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v0, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;Z[F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {p3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 2

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mCopyPreview:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    if-eqz p3, :cond_4

    :cond_0
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Lkotlin/collections/ArraysUtilJVM;->isSizeValid(Landroid/util/Size;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    invoke-static {p2, p1, v0, p3}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mCopyPreview:Z

    :cond_4
    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mCurrentSplitMode:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mCurrentSplitMode:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->applyPreviewChange(Z)V

    :cond_1
    return-void
.end method

.method public final previewModeChange(IIIZZZ)V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iput-boolean p6, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mHasPendingAnimation:Z

    return-void
.end method

.method public final resetBlurTex()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchTargetRatio:F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 14

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->resetBlurTex()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_7

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    const-string v5, "MODE"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_0
    const-string v5, "FROM_FACING"

    invoke-virtual {v0, v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v5

    :cond_4
    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v3, v6, :cond_6

    if-ne v5, v2, :cond_5

    move v5, v1

    goto :goto_1

    :cond_5
    move v5, v2

    :cond_6
    :goto_1
    iget-object v6, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getHDR10SwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v8, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v7, v8}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v12

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz v7, :cond_9

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v3, v7, :cond_7

    move v11, v2

    goto :goto_2

    :cond_7
    move v11, v1

    :goto_2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object p1

    const-string v3, "SRC_MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v7

    invoke-virtual {v0, v3, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne p1, v3, :cond_8

    const/16 p1, 0x3e8

    move v8, p1

    goto :goto_3

    :cond_8
    move v8, v0

    :goto_3
    const/4 v13, 0x0

    move-object v7, p0

    move v9, v4

    move v10, v5

    invoke-virtual/range {v7 .. v13}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->previewModeChange(IIIZZZ)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mCopyPreview:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->resetBlurTex()V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_4
    sget-object p1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_HDR10:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v6, p1, :cond_a

    if-nez v6, :cond_b

    invoke-static {v4, v5}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz p0, :cond_11

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_7

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsControlPanelOpened:Z

    if-eqz p1, :cond_11

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->darkenPreview(Z)V

    goto/16 :goto_7

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->previewModeChange(IIIZZZ)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    :goto_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    goto :goto_6

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz p1, :cond_11

    const/16 v4, 0x3e8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->previewModeChange(IIIZZZ)V

    goto :goto_5

    :goto_6
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_7

    :cond_f
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz p1, :cond_11

    monitor-enter p0

    :try_start_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    const/4 v0, 0x2

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    const-wide/16 v2, 0xc8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsControlPanelOpened:Z

    :cond_11
    :goto_7
    return-void
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlackFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsControlPanelOpened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
