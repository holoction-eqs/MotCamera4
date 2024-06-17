.class public final Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mEffectSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;

.field public final mIdentityMatrix:[F

.field public mInitFinished:Z

.field public final mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

.field public final mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public static $r8$lambda$q1nGH62OKaYnimnKGkVpe_CVrGU(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;Lcom/motorola/camera/settings/Setting;)V
    .locals 11

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    if-eqz p0, :cond_a

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->clickPosition:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    instance-of v4, v0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    invoke-virtual {v0, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->setVideoResolution(Lcom/meicam/effect/sdk/NvsVideoResolution;)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iget v6, v4, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x44340000    # 720.0f

    div-float v8, v6, v7

    iget v4, v4, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    int-to-float v4, v4

    div-float v7, v4, v7

    iget v9, v1, Landroid/graphics/PointF;->x:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v9, v6

    div-float/2addr v9, v8

    iput v9, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v10

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v7

    iput v4, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->setTranslation(Landroid/graphics/PointF;)V

    :cond_2
    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    iput v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    if-eq v0, v3, :cond_6

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->effectNames:Lcom/google/common/collect/RegularImmutableMap;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectFilterUuid:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    move v0, v3

    :cond_5
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->switchFrameIndex(I)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    if-eq v0, v3, :cond_6

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->effectNames:Lcom/google/common/collect/RegularImmutableMap;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mFrameFilterUuid:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectName:Ljava/lang/String;

    :cond_6
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    const/4 p1, 0x3

    if-ne v0, p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    if-ne p1, v1, :cond_9

    goto :goto_2

    :cond_9
    if-ne p1, v2, :cond_a

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :cond_a
    :goto_2
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final initMirrorMode()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v1, 0x4100

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {v0, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-array v0, v1, [I

    const v1, 0x8ca6

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v0, "glGetIntegerv"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    invoke-virtual {v0, v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->drawFrameToGlView(III)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawFbo([F[F)V
    .locals 1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInitFinished:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v0, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setPreviewSize(Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iput v0, p1, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    iput p0, p1, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    :cond_1
    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
