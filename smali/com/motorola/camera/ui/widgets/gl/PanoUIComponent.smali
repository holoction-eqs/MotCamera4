.class public final Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mCaptureColor:I

.field public mCapturing:Z

.field public mDirection:I

.field public mDirectionDeepTrans:F

.field public final mIdleArrowTextures:Ljava/util/ArrayList;

.field public final mIdleColor:I

.field public mInitPanoCirlce:Z

.field public mIsIdle:Z

.field public mIsIdleArrowDisplayed:Z

.field public final mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mPanoCircleExceed:Ljava/util/ArrayList;

.field public final mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mPanoHasPlayAnimList:Ljava/util/ArrayList;

.field public mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

.field public mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPlayTransAnim:Z

.field public mPlayTransForWrongDirection:Z

.field public mPreTrans:F

.field public mProgressPadding:F

.field public mReversing:Z

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mUpdateColor:Z

.field public final mWarningColor:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p2

    iget p2, p2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f06036e

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060405

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    return-void
.end method

.method public static needReversing(FFII)Z
    .locals 3

    const/16 v0, 0x10e

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p3, p0, p1

    if-gez p3, :cond_1

    if-eqz p2, :cond_7

    if-eq p2, v0, :cond_7

    goto :goto_1

    :cond_1
    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_6

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_3
    :goto_0
    cmpg-float p3, p0, p1

    if-gez p3, :cond_4

    if-eqz p2, :cond_6

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_4
    cmpl-float p0, p0, p1

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_7

    if-eq p2, v0, :cond_7

    :cond_6
    :goto_1
    const/4 p0, 0x1

    move v1, p0

    :cond_7
    :goto_2
    return v1
.end method

.method public static needUpdateColor(FFFIII)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p5, v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_2

    const/16 p5, 0x10e

    if-ne p3, p5, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_1

    :cond_2
    :goto_0
    sub-float/2addr p1, p0

    float-to-int p0, p1

    :goto_1
    const/high16 p1, 0x3e800000    # 0.25f

    const/high16 p3, 0x3f000000    # 0.5f

    if-eqz p4, :cond_4

    const/4 p5, 0x3

    if-ne p4, p5, :cond_3

    goto :goto_2

    :cond_3
    const/4 p4, -0x1

    if-le p0, p4, :cond_6

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_5

    goto :goto_3

    :cond_4
    :goto_2
    if-ge p0, v1, :cond_6

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    return v1
.end method


# virtual methods
.method public final animateArrowIcon(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v10, :cond_3

    if-eq v1, v3, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    neg-float v2, v2

    :cond_1
    invoke-virtual {v9, v4, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_0

    :cond_2
    neg-float v2, v2

    :cond_3
    invoke-virtual {v9, v2, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v12, 0x0

    const-wide/16 v13, 0x190

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x2

    const/16 v18, 0x0

    const/16 v17, 0x2

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lkotlin/ULong$Companion;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    invoke-direct {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lkotlin/ULong$Companion;)V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    new-array v2, v10, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v5, v2, v6

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v4, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v2, v4, v10}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const-wide/16 v13, 0x64

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/16 v18, 0x0

    const-wide/16 v19, 0x64

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v7, v5, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    invoke-direct {v8, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    invoke-direct {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lkotlin/ULong$Companion;)V

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v7, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v7, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v7, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    new-array v1, v10, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v4, v1, v6

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v7, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {v2, v7, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final checkExceedBoundary(ILcom/google/common/base/Splitter$1;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/high16 v3, 0x42200000    # 40.0f

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    if-eqz p3, :cond_0

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v3

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p3

    mul-float/2addr p3, v3

    const v2, 0x3d4ccccd    # 0.05f

    :goto_0
    mul-float/2addr p3, v2

    const/16 v2, 0x10e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_5

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_3

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_4

    move v3, v4

    :cond_4
    return v3

    :cond_5
    if-ne p1, v4, :cond_a

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_8

    if-ne p0, v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_7

    move v3, v4

    :cond_7
    return v3

    :cond_8
    :goto_2
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_9

    move v3, v4

    :cond_9
    return v3

    :cond_a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_d

    if-ne p0, v2, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_c

    move v3, v4

    :cond_c
    return v3

    :cond_d
    :goto_3
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_e

    move v3, v4

    :cond_e
    return v3

    :cond_f
    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p0, :cond_12

    if-ne p0, v2, :cond_10

    goto :goto_4

    :cond_10
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result p0

    sub-float/2addr p0, p3

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_11

    move v3, v4

    :cond_11
    return v3

    :cond_12
    :goto_4
    invoke-virtual {p2}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result p0

    add-float/2addr p0, p3

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_13

    move v3, v4

    :cond_13
    return v3
.end method

.method public final getPaddingBottom()F
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v3, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x42700000    # 60.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42900000    # 72.0f

    :goto_0
    mul-float/2addr v2, v1

    new-instance v3, Landroid/graphics/Rect;

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v0

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    sub-float/2addr p0, v4

    div-float/2addr v2, v5

    sub-float/2addr p0, v2

    cmpl-float v0, v3, p0

    if-ltz v0, :cond_1

    sub-float/2addr v3, p0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    div-float/2addr v3, v5

    return v3
.end method

.method public final getProgessBarVerHeight()I
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getPreviewSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v0, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v6, v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v6, v6, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v6}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iget v7, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iput v7, v6, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iput v1, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    div-float/2addr v7, v4

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v7

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Lcom/motorola/camera/PreviewSize;->height:I

    move-object v1, v6

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v0

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSensorOrientationSameAsScreen()Z

    move-result v6

    xor-int/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    div-float v0, v6, v0

    :cond_2
    const v3, 0x3cf5c28f    # 0.03f

    sub-float v3, v0, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    div-float v6, v1, v0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    new-instance v1, Landroid/graphics/Rect;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v3, v3, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v6, v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v6, v7, :cond_4

    const/high16 v6, 0x42700000    # 60.0f

    goto :goto_1

    :cond_4
    const/high16 v6, 0x42900000    # 72.0f

    :goto_1
    mul-float/2addr v6, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v5

    mul-float/2addr v5, v3

    sub-float/2addr v7, v5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v4

    sub-float/2addr p0, v7

    div-float/2addr v6, v4

    sub-float/2addr p0, v6

    cmpl-float v3, v1, p0

    if-ltz v3, :cond_5

    sub-float v2, v1, p0

    :cond_5
    sub-float/2addr v0, v2

    float-to-int p0, v0

    return p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PanoUIComponent"

    return-object p0
.end method

.method public final getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 5

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const/16 v2, 0x10e

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    if-eq p1, v4, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    :cond_3
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto/16 :goto_4

    :cond_5
    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr p0, v1

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    :cond_8
    :goto_2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_b

    if-ne p1, v2, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_4

    :cond_b
    :goto_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v0, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    :goto_4
    return-object v0
.end method

.method public final loadTextures()Z
    .locals 11

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    const/4 v4, 0x0

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/4 v5, 0x5

    invoke-direct {v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_40_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v3

    monitor-exit v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v7, 0x1

    iput v7, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mAlphaChange:I

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-direct {v3, v2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILcom/motorola/camera/ui/widgets/gl/PanoUIComponent;)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v3, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    monitor-enter v3

    monitor-exit v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v4, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-direct {v3, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->loadTexture()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const v3, 0x7f08018d

    invoke-direct {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_1
    const/4 v8, 0x4

    if-ge v6, v8, :cond_1

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-direct {v8, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    mul-int/lit8 v10, v6, 0x5a

    int-to-float v10, v10

    invoke-direct {v9, v10, v4, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    invoke-virtual {v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return v7
.end method

.method public final onDraw([F[F[F)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {v0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {v0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {v0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->onPreDraw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

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

.method public final onRotate(I)V
    .locals 3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1200db

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final progressCapture(Landroid/os/Bundle;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "status"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "progressX"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "maxWidth"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "progressY"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "maxHeight"

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    int-to-double v9, v5

    div-double/2addr v3, v9

    double-to-float v3, v3

    int-to-double v4, v8

    div-double/2addr v6, v4

    double-to-float v4, v6

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v9, 0xb4

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0x10e

    const/16 v6, 0x5a

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v5, v9, :cond_2

    sub-float v7, v10, v3

    goto :goto_1

    :cond_2
    if-ne v5, v11, :cond_3

    sub-float v7, v10, v4

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v3

    :goto_1
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    if-ne v5, v9, :cond_6

    sub-float v3, v10, v4

    goto :goto_3

    :cond_6
    if-ne v5, v11, :cond_7

    goto :goto_3

    :cond_7
    if-ne v5, v6, :cond_8

    sub-float v3, v10, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v4

    :goto_3
    const-string v4, "direction"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v8, 0x42300000    # 44.0f

    mul-float/2addr v5, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v13, v5, v12

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v15

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput v13, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v14, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x1

    if-nez v5, :cond_9

    goto :goto_8

    :cond_9
    if-ne v5, v11, :cond_d

    if-ne v4, v10, :cond_a

    goto :goto_6

    :cond_a
    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    if-ne v4, v12, :cond_c

    goto :goto_5

    :cond_c
    if-ne v4, v14, :cond_15

    goto :goto_4

    :cond_d
    if-ne v5, v6, :cond_11

    if-ne v4, v10, :cond_e

    goto :goto_7

    :cond_e
    if-nez v4, :cond_f

    goto :goto_6

    :cond_f
    if-ne v4, v12, :cond_10

    goto :goto_4

    :cond_10
    if-ne v4, v14, :cond_15

    goto :goto_5

    :cond_11
    if-ne v5, v9, :cond_15

    if-ne v4, v10, :cond_12

    :goto_4
    const/4 v4, 0x0

    goto :goto_8

    :cond_12
    if-nez v4, :cond_13

    :goto_5
    move v4, v10

    goto :goto_8

    :cond_13
    if-ne v4, v12, :cond_14

    :goto_6
    move v4, v14

    goto :goto_8

    :cond_14
    if-ne v4, v14, :cond_15

    :goto_7
    move v4, v12

    :cond_15
    :goto_8
    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    if-nez v5, :cond_16

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    iput-boolean v10, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    :cond_16
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v8, v4

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    const/high16 v5, 0x42500000    # 52.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v4, :cond_1e

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v12

    const/high16 v17, 0x41a00000    # 20.0f

    mul-float v12, v12, v17

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v9

    const/high16 v18, 0x41000000    # 8.0f

    mul-float v9, v9, v18

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v11

    const/high16 v19, 0x40800000    # 4.0f

    mul-float v11, v11, v19

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v14

    mul-float/2addr v14, v6

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    if-ne v4, v10, :cond_17

    goto :goto_9

    :cond_17
    const/4 v4, 0x0

    goto :goto_a

    :cond_18
    :goto_9
    move v4, v10

    :goto_a
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    const/high16 v21, 0x42200000    # 40.0f

    mul-float v6, v6, v21

    const v21, 0x3d4ccccd    # 0.05f

    mul-float v6, v6, v21

    if-eqz v4, :cond_19

    sget v4, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    int-to-float v4, v4

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    const/high16 v22, 0x41800000    # 16.0f

    goto :goto_b

    :cond_19
    sget v4, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    int-to-float v4, v4

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    const/high16 v22, 0x42000000    # 32.0f

    :goto_b
    mul-float v10, v10, v22

    sub-float/2addr v4, v10

    add-float/2addr v4, v6

    const/4 v6, 0x0

    :goto_c
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    mul-float/2addr v10, v5

    div-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    if-ge v6, v10, :cond_1a

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move/from16 v23, v4

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-direct {v10, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    monitor-enter v10

    monitor-exit v10

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v4, v10, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v10, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v10, v5, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v5, v10, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->loadTexture()V

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v4, v10

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v23

    const/high16 v5, 0x42500000    # 52.0f

    goto :goto_c

    :cond_1a
    const/4 v4, 0x0

    :goto_d
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-nez v4, :cond_1b

    invoke-virtual {v5, v12, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    const/high16 v6, 0x40000000    # 2.0f

    div-float v10, v12, v6

    iput v10, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    invoke-virtual {v5, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    goto :goto_e

    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    div-float v10, v9, v6

    iput v10, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    invoke-virtual {v5, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    :goto_e
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(I)V

    sget-object v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v6, v9

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setLineWidth(F)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleColor:I

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_f

    :cond_1d
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    invoke-virtual {v0, v8, v15}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setPanoThumbnailTexBackgroundTranslation(FF)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    goto :goto_10

    :cond_1e
    move v5, v10

    :goto_10
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const v6, 0x3d4cccd0    # 0.050000012f

    if-eqz v4, :cond_23

    if-ne v4, v5, :cond_1f

    goto :goto_12

    :cond_1f
    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v12, v16, v7

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v5, v4

    if-gez v4, :cond_21

    cmpg-float v4, v7, v16

    if-gez v4, :cond_20

    add-float v4, v7, v5

    goto :goto_11

    :cond_20
    sub-float v4, v7, v5

    goto :goto_11

    :cond_21
    move/from16 v4, v16

    :goto_11
    sub-float v12, v16, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_22

    move/from16 v4, v16

    :cond_22
    move v10, v3

    move v9, v4

    goto :goto_14

    :cond_23
    :goto_12
    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v12, v16, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v5, v4

    if-gez v4, :cond_25

    cmpg-float v4, v3, v16

    if-gez v4, :cond_24

    add-float/2addr v3, v5

    goto :goto_13

    :cond_24
    sub-float/2addr v3, v5

    goto :goto_13

    :cond_25
    move/from16 v3, v16

    :goto_13
    sub-float v12, v16, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_26

    const/high16 v3, 0x3f000000    # 0.5f

    :cond_26
    move v10, v3

    move v9, v7

    :goto_14
    const-string v3, "preview"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2b

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v4, 0xb4

    if-eqz v3, :cond_28

    if-ne v3, v4, :cond_27

    goto :goto_15

    :cond_27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_16

    :cond_28
    :goto_15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_16
    int-to-float v3, v3

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v5, :cond_2a

    if-ne v5, v4, :cond_29

    goto :goto_17

    :cond_29
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_18

    :cond_2a
    :goto_17
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :goto_18
    int-to-float v4, v4

    move v11, v3

    move v12, v4

    goto :goto_19

    :cond_2b
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_19
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Landroid/util/Size;

    invoke-direct {v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    if-eqz v3, :cond_2d

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2c

    goto :goto_1a

    :cond_2c
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget v3, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    move v4, v11

    move v5, v4

    move v6, v12

    goto :goto_1b

    :cond_2d
    :goto_1a
    iput v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iget v3, v4, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    move v4, v3

    move v6, v11

    move v3, v12

    move v5, v3

    :goto_1b
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v7, v7, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    monitor-enter v7

    :try_start_0
    iput v5, v7, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v7

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mPanoFrameTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;

    monitor-enter v5

    :try_start_1
    iput v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoFrameTexture;->mFrameWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iput v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewHeight:F

    iput v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mSmallPreviewWidth:F

    neg-float v3, v11

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    mul-float v5, v11, v9

    add-float v14, v5, v3

    div-float v23, v11, v4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v3, v9

    mul-float/2addr v5, v11

    sub-float v7, v23, v5

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v5

    add-float v6, v5, v15

    neg-float v5, v12

    sub-float v24, v3, v10

    mul-float v5, v5, v24

    div-float v25, v12, v4

    add-float v5, v5, v25

    add-float/2addr v5, v6

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    if-nez v3, :cond_2e

    goto :goto_1c

    :cond_2e
    move v4, v6

    goto :goto_1d

    :cond_2f
    :goto_1c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    const/high16 v4, 0x437a0000    # 250.0f

    mul-float/2addr v3, v4

    sub-float v3, v6, v3

    move v4, v3

    :goto_1d
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    move/from16 p1, v4

    int-to-float v4, v3

    sub-float v26, v4, v12

    const/high16 v20, 0x40000000    # 2.0f

    div-float v26, v26, v20

    div-float v4, v4, v20

    sub-float v4, v4, v26

    mul-float v27, v12, v10

    sub-float v4, v4, v27

    neg-int v3, v3

    int-to-float v3, v3

    div-float v3, v3, v20

    add-float v3, v3, v26

    mul-float v24, v24, v12

    add-float v3, v24, v3

    move/from16 v24, v5

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v26, v6

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    move/from16 v27, v7

    if-eqz v5, :cond_39

    const/4 v7, 0x1

    if-eq v5, v7, :cond_36

    const/4 v7, 0x2

    if-eq v5, v7, :cond_33

    const/4 v7, 0x3

    if-eq v5, v7, :cond_30

    const/16 v16, 0x0

    goto :goto_24

    :cond_30
    if-eqz v6, :cond_32

    const/16 v5, 0x10e

    if-ne v6, v5, :cond_31

    goto :goto_1e

    :cond_31
    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v5, v10, v5

    if-gez v5, :cond_3c

    goto :goto_22

    :cond_32
    :goto_1e
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v5, v10, v5

    if-ltz v5, :cond_3c

    goto :goto_22

    :cond_33
    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v6, :cond_35

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_34

    goto :goto_1f

    :cond_34
    cmpl-float v5, v10, v5

    if-lez v5, :cond_3c

    goto :goto_22

    :cond_35
    :goto_1f
    cmpg-float v5, v10, v5

    if-gtz v5, :cond_3c

    goto :goto_22

    :cond_36
    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v6, :cond_38

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_37

    goto :goto_20

    :cond_37
    cmpg-float v5, v9, v5

    if-gez v5, :cond_3c

    goto :goto_22

    :cond_38
    :goto_20
    cmpl-float v5, v9, v5

    if-ltz v5, :cond_3c

    goto :goto_22

    :cond_39
    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v6, :cond_3b

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_3a

    goto :goto_21

    :cond_3a
    cmpl-float v5, v9, v5

    if-lez v5, :cond_3c

    goto :goto_22

    :cond_3b
    :goto_21
    cmpg-float v5, v9, v5

    if-gtz v5, :cond_3c

    :goto_22
    const/4 v5, 0x1

    goto :goto_23

    :cond_3c
    const/4 v5, 0x0

    :goto_23
    move/from16 v16, v5

    :goto_24
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v5, v6, :cond_3d

    const/16 v28, 0x1

    goto :goto_25

    :cond_3d
    const/16 v28, 0x0

    :goto_25
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v6, 0x42500000    # 52.0f

    mul-float v22, v5, v6

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v5

    iget-object v5, v5, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float v7, v5, v13

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v5

    iget-object v5, v5, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v6, v5, v13

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v29, v5

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v5, :cond_61

    move/from16 v30, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_57

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4b

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3e

    move-object/from16 p1, v1

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v30, v11

    move/from16 v31, v15

    move/from16 v11, v27

    move/from16 v27, v29

    move/from16 v29, v12

    goto/16 :goto_3f

    :cond_3e
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3f

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_3f
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_40

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_40
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v3, v4, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move/from16 v23, v4

    move/from16 v31, v15

    move/from16 v15, p1

    move-object/from16 p1, v1

    move/from16 v24, v5

    move/from16 v1, v29

    move v5, v9

    move/from16 v29, v12

    move/from16 v12, v30

    move/from16 v30, v11

    move/from16 v11, v27

    move/from16 v27, v1

    move v1, v7

    move/from16 v7, v24

    move/from16 v32, v8

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFFIII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_41

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_41
    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v5, :cond_42

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_43

    :cond_42
    if-nez v28, :cond_43

    goto :goto_29

    :cond_43
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v15, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v5, :cond_48

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_44

    goto :goto_2a

    :cond_44
    const/4 v1, 0x0

    :goto_26
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_47

    if-eqz v3, :cond_45

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_27

    :cond_45
    move v5, v4

    :goto_27
    neg-float v5, v5

    add-float/2addr v5, v15

    sub-float v5, v5, v25

    add-int/lit8 v6, v1, 0x1

    int-to-float v7, v6

    mul-float v7, v7, v22

    add-float/2addr v7, v5

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v8, v7, v12

    if-lez v8, :cond_46

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v1, v14

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v5, v1, v12, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    move/from16 v23, v6

    goto :goto_28

    :cond_46
    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    move/from16 v23, v6

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v1, v14

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v1, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_28
    move/from16 v1, v23

    goto :goto_26

    :cond_47
    :goto_29
    move/from16 v33, v9

    goto/16 :goto_3f

    :cond_48
    :goto_2a
    const/4 v5, 0x0

    :goto_2b
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_47

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_49

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_2c

    :cond_49
    move v7, v4

    :goto_2c
    neg-float v7, v7

    add-float/2addr v7, v15

    add-float v7, v7, v25

    rsub-int/lit8 v8, v5, -0x1

    int-to-float v8, v8

    mul-float v8, v8, v22

    add-float/2addr v8, v7

    cmpg-float v7, v8, v1

    if-gez v7, :cond_4a

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v7, v14

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v1, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_2d

    :cond_4a
    const/high16 v12, -0x40800000    # -1.0f

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v7, v14

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v6, v7, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_4b
    move/from16 v32, v8

    move/from16 v31, v15

    move/from16 v15, p1

    move-object/from16 p1, v1

    move v1, v7

    move/from16 v34, v30

    move/from16 v30, v11

    move/from16 v11, v27

    move/from16 v27, v29

    move/from16 v29, v12

    move/from16 v12, v34

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4c

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_4c
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4d

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_4d
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v4, v3, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v4

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move v8, v3

    move v3, v4

    move v4, v8

    move v5, v9

    move/from16 v33, v9

    move v9, v8

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFFIII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v9, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_4e

    iput v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_4e
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v4, :cond_4f

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_50

    :cond_4f
    if-nez v28, :cond_50

    goto/16 :goto_3f

    :cond_50
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v15, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v4, :cond_54

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_51

    goto :goto_31

    :cond_51
    const/4 v4, 0x0

    :goto_2e
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    if-eqz v3, :cond_52

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_2f

    :cond_52
    move v5, v9

    :goto_2f
    neg-float v5, v5

    add-float/2addr v5, v15

    add-float v5, v5, v25

    add-int/lit8 v6, v4, 0x1

    int-to-float v7, v6

    mul-float v7, v7, v22

    sub-float/2addr v5, v7

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpg-float v8, v5, v1

    if-gez v8, :cond_53

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v4, v14

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v4, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_30

    :cond_53
    const/high16 v8, -0x40800000    # -1.0f

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v4, v14

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v4, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_30
    move v4, v6

    goto :goto_2e

    :cond_54
    :goto_31
    const/4 v1, 0x0

    :goto_32
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6b

    if-eqz v3, :cond_55

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_33

    :cond_55
    move v4, v9

    :goto_33
    neg-float v4, v4

    add-float/2addr v4, v15

    sub-float v4, v4, v25

    add-int/lit8 v5, v1, 0x1

    int-to-float v6, v5

    mul-float v6, v6, v22

    add-float/2addr v6, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    cmpl-float v7, v6, v12

    if-lez v7, :cond_56

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v1, v14

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v4, v1, v12, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_34

    :cond_56
    const/high16 v7, -0x40800000    # -1.0f

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    neg-float v1, v14

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v4, v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_34
    move v1, v5

    goto :goto_32

    :cond_57
    move-object/from16 p1, v1

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v30, v11

    move/from16 v31, v15

    move/from16 v11, v27

    move/from16 v27, v29

    move/from16 v29, v12

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_58

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_58
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_59

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_59
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v1, v14, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move v4, v14

    move/from16 v1, v24

    move v5, v10

    move/from16 v9, v26

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFFIII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v14, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_5a

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_5a
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v4, :cond_5b

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_5c

    :cond_5b
    if-nez v28, :cond_5c

    goto/16 :goto_3f

    :cond_5c
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v4, :cond_5f

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_5d

    goto :goto_37

    :cond_5d
    const/4 v4, 0x0

    :goto_35
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_5e

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_36

    :cond_5e
    move v6, v14

    :goto_36
    neg-float v6, v6

    add-float v6, v6, v23

    add-int/lit8 v4, v4, 0x1

    int-to-float v7, v4

    mul-float v7, v7, v22

    sub-float/2addr v6, v7

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v5, v6, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_35

    :cond_5f
    :goto_37
    const/4 v4, 0x0

    :goto_38
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_60

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_39

    :cond_60
    move v6, v14

    :goto_39
    neg-float v6, v6

    sub-float v6, v6, v23

    add-int/lit8 v4, v4, 0x1

    int-to-float v7, v4

    mul-float v7, v7, v22

    add-float/2addr v7, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v7, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_38

    :cond_61
    move-object/from16 p1, v1

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v30, v11

    move/from16 v31, v15

    move/from16 v1, v24

    move/from16 v9, v26

    move/from16 v11, v27

    move/from16 v27, v29

    move/from16 v29, v12

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_62

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    :cond_62
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_63

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_63
    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {v3, v11, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    move v4, v11

    move v5, v10

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needUpdateColor(FFFIII)Z

    move-result v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-static {v3, v11, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->needReversing(FFII)Z

    move-result v3

    if-nez v3, :cond_64

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    :cond_64
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    if-nez v4, :cond_65

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_66

    :cond_65
    if-nez v28, :cond_66

    goto :goto_3f

    :cond_66
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v4, :cond_69

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_67

    goto :goto_3c

    :cond_67
    const/4 v4, 0x0

    :goto_3a
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_68

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3b

    :cond_68
    move v7, v11

    :goto_3b
    neg-float v6, v7

    sub-float v6, v6, v23

    add-int/lit8 v4, v4, 0x1

    int-to-float v7, v4

    mul-float v7, v7, v22

    add-float/2addr v7, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v7, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_3a

    :cond_69
    :goto_3c
    const/4 v4, 0x0

    :goto_3d
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6b

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_6a

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    goto :goto_3e

    :cond_6a
    move v7, v11

    :goto_3e
    neg-float v6, v7

    add-float v6, v6, v23

    rsub-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    mul-float v7, v7, v22

    add-float/2addr v7, v6

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v7, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_6b
    :goto_3f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v13, v4

    add-float/2addr v13, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    sub-float/2addr v1, v13

    div-float/2addr v1, v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v5

    sub-float/2addr v5, v13

    div-float/2addr v5, v4

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v6, 0x10e

    if-eqz v4, :cond_6d

    if-ne v4, v6, :cond_6c

    goto :goto_40

    :cond_6c
    neg-float v1, v1

    :cond_6d
    :goto_40
    if-eqz v4, :cond_6f

    if-ne v4, v6, :cond_6e

    goto :goto_41

    :cond_6e
    neg-float v5, v5

    :cond_6f
    :goto_41
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-eqz v4, :cond_73

    const/4 v6, 0x1

    if-ne v4, v6, :cond_70

    goto :goto_43

    :cond_70
    const/4 v6, 0x2

    if-eq v4, v6, :cond_71

    const/4 v1, 0x3

    if-ne v4, v1, :cond_75

    :cond_71
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v1

    cmpg-float v1, v13, v1

    if-gez v1, :cond_75

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    move/from16 v4, v32

    invoke-virtual {v1, v4, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_72

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v6, v5

    goto :goto_42

    :cond_72
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v6, v5

    :goto_42
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v1, v4, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_45

    :cond_73
    :goto_43
    move/from16 v4, v32

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v5

    cmpg-float v5, v13, v5

    if-gez v5, :cond_75

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5, v13, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_74

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v5, v1

    goto :goto_44

    :cond_74
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v5, v1

    :goto_44
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v4, v5, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_75
    :goto_45
    const/4 v1, 0x0

    :goto_46
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_8b

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v1, :cond_77

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v7, :cond_76

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    goto :goto_47

    :cond_76
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    :goto_47
    invoke-virtual {v4, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_48

    :cond_77
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    :goto_48
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    if-gt v1, v7, :cond_78

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v7, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    goto :goto_49

    :cond_78
    move-object v7, v8

    :goto_49
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v0, v9, v12, v13}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/common/base/Splitter$1;Z)Z

    move-result v9

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v15

    invoke-virtual {v0, v12, v15, v13}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/common/base/Splitter$1;Z)Z

    move-result v12

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v15

    const/4 v3, 0x0

    invoke-virtual {v0, v13, v15, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->checkExceedBoundary(ILcom/google/common/base/Splitter$1;Z)Z

    move-result v13

    if-eqz v9, :cond_79

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    goto :goto_4a

    :cond_79
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    :goto_4a
    if-eqz v12, :cond_7a

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    goto :goto_4b

    :cond_7a
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    :goto_4b
    invoke-virtual {v4, v3, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    if-ge v1, v3, :cond_7b

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v3, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    if-nez v1, :cond_7c

    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v9, :cond_7c

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    invoke-virtual {v4, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    goto :goto_4c

    :cond_7b
    move-object v3, v8

    :cond_7c
    :goto_4c
    if-eqz v3, :cond_80

    if-eqz v12, :cond_7d

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    goto :goto_4d

    :cond_7d
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    :goto_4d
    if-eqz v12, :cond_7e

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getTargetPos(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    goto :goto_4e

    :cond_7e
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    :goto_4e
    invoke-virtual {v3, v5, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v12, :cond_80

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v5, :cond_7f

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    goto :goto_4f

    :cond_7f
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    :goto_4f
    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_80
    if-eqz v13, :cond_89

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    if-eqz v3, :cond_82

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v4, :cond_81

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    goto :goto_50

    :cond_81
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    :goto_50
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    :cond_82
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_88

    if-eqz v1, :cond_83

    const/4 v3, 0x1

    goto :goto_51

    :cond_83
    const/4 v3, 0x0

    :goto_51
    const-string v4, "PanoUIComponent"

    const-string v5, "enter into scaleAnim"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    if-eqz v3, :cond_84

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_52

    :cond_84
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_52
    const/high16 v12, 0x40a00000    # 5.0f

    if-eqz v3, :cond_85

    move v13, v12

    goto :goto_53

    :cond_85
    const/high16 v13, 0x40000000    # 2.0f

    :goto_53
    invoke-direct {v5, v8, v9, v13}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V

    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v9, v5, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    if-eqz v3, :cond_86

    const/4 v3, 0x0

    goto :goto_54

    :cond_86
    const/4 v3, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    :goto_54
    invoke-direct {v9, v8, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v8, v9, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;

    const/4 v13, 0x2

    invoke-direct {v12, v13, v0, v6}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v8, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lkotlin/ULong$Companion;)V

    invoke-virtual {v8, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v8, v9}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    const/4 v5, 0x1

    new-array v9, v5, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v5, 0x0

    aput-object v6, v9, v5

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v8, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v5, 0x3

    invoke-virtual {v4, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    if-eqz v7, :cond_87

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v6, 0x69

    invoke-virtual {v4, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;

    const/4 v9, 0x2

    invoke-direct {v8, v0, v9}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;I)V

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v6, v8, v13, v12}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V

    const/4 v8, 0x1

    new-array v15, v8, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v8, 0x0

    aput-object v7, v15, v8

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v6, v15, v7}, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_55

    :cond_87
    const/4 v7, 0x4

    const/4 v9, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_55
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_88
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v9, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_56

    :cond_89
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v9, 0x2

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoHasPlayAnimList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_8a

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoCircleExceed:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8a

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_8a
    :goto_56
    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto/16 :goto_46

    :cond_8b
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    if-eqz v1, :cond_8c

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mWarningColor:I

    goto :goto_57

    :cond_8c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    :goto_57
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move/from16 v3, v27

    if-eq v3, v1, :cond_8d

    if-eqz v1, :cond_8d

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    :cond_8d
    if-eqz v1, :cond_8e

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    if-nez v1, :cond_8e

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->resetDirIconPos(I)V

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->animateArrowIcon(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    :cond_8e
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    if-eqz v1, :cond_93

    const v1, 0x3f0ccccd    # 0.55f

    mul-float v3, v30, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float v12, v29, v1

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0xb4

    if-eqz v4, :cond_90

    if-ne v4, v5, :cond_8f

    goto :goto_58

    :cond_8f
    move v6, v1

    goto :goto_59

    :cond_90
    :goto_58
    move v6, v3

    :goto_59
    if-eqz v4, :cond_92

    if-ne v4, v5, :cond_91

    goto :goto_5a

    :cond_91
    move-object/from16 v4, p1

    move v5, v3

    goto :goto_5b

    :cond_92
    :goto_5a
    move-object/from16 v4, p1

    move v5, v1

    :goto_5b
    const/4 v7, 0x0

    invoke-static {v4, v6, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    int-to-float v3, v3

    int-to-float v1, v1

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move v15, v0

    move v13, v3

    move-object v3, v5

    move v5, v6

    move v12, v7

    move-object v6, v4

    goto :goto_5c

    :cond_93
    move-object/from16 v4, p1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mUpdateColor:Z

    move v15, v0

    move-object v6, v4

    move v12, v5

    move/from16 v13, v30

    move v5, v3

    move-object v3, v1

    move/from16 v1, v29

    :goto_5c
    move v4, v2

    move v7, v11

    move v8, v14

    move/from16 v9, v33

    move/from16 v11, v16

    move v14, v1

    move/from16 v0, v31

    move/from16 v16, v0

    invoke-virtual/range {v3 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->update(IILandroid/graphics/Bitmap;FFFFZZFFZF)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v5

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v7

    throw v1
.end method

.method public final resetDirIconPos(I)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x420c0000    # 35.0f

    mul-float/2addr v0, v1

    const/16 v1, 0x10e

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    const/4 v6, 0x1

    if-eq p1, v6, :cond_5

    const/4 v6, 0x2

    const/high16 v7, 0x42b40000    # 90.0f

    if-eq p1, v6, :cond_2

    const/4 v6, 0x3

    if-eq p1, v6, :cond_0

    goto/16 :goto_6

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_3

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v7, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v4

    sub-float/2addr p1, v0

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p1

    div-float/2addr p1, v4

    add-float/2addr p1, v0

    :goto_1
    add-float/2addr p1, v2

    invoke-virtual {p0, v5, p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_6

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v1, v0

    add-float/2addr v1, v2

    invoke-virtual {p1, v5, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v7, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    goto :goto_6

    :cond_5
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_7

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_8

    if-ne p1, v1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v4

    sub-float/2addr p1, v0

    goto :goto_5

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p1, v1, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result p1

    div-float/2addr p1, v4

    add-float/2addr p1, v0

    :goto_5
    invoke-virtual {p0, p1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_6
    return-void
.end method

.method public final setPanoThumbnailTexBackgroundTranslation(FF)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v1

    add-float/2addr v1, p2

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/16 v2, 0x10e

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    const/4 v6, 0x1

    if-ne p2, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    mul-float/2addr v0, v3

    add-float/2addr v0, p2

    invoke-virtual {v6, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_1

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getProgessBarVerHeight()I

    move-result p0

    neg-int p0, p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v1

    invoke-virtual {p1, v5, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_7

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int p0, p0

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz p1, :cond_7

    if-ne p1, v2, :cond_5

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_2
    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {p1, p0, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :goto_3
    return-void
.end method

.method public final setSavingProgressVisible(Z)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz p1, :cond_0

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    const/4 v1, 0x3

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    const-wide/16 v3, 0x7d0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, -0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v9, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations$1()V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final showIdleAnimation(Z)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    const/high16 v9, 0x42300000    # 44.0f

    mul-float/2addr v5, v9

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    mul-float/2addr v10, v9

    invoke-virtual {v3, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    mul-float/2addr v5, v9

    mul-float/2addr v5, v8

    iput v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v4

    add-float/2addr v4, v3

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v9, v3, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    const/high16 v10, 0x42380000    # 46.0f

    add-float/2addr v9, v10

    invoke-virtual {v8, v9, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v9, v3, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v10

    invoke-virtual {v8, v5, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v9, v3, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v3, v3, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v10

    invoke-virtual {v4, v5, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_0

    :cond_0
    const/high16 v9, 0x42200000    # 40.0f

    mul-float/2addr v5, v9

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    mul-float/2addr v10, v9

    invoke-virtual {v3, v5, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v4

    mul-float/2addr v4, v9

    mul-float/2addr v4, v8

    iput v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    :goto_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v9, 0x0

    const-wide/16 v10, 0x190

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x2

    const/4 v15, 0x0

    const/4 v14, 0x2

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v5, 0x0

    const-wide/16 v16, 0xc8

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const-wide/16 v10, 0xc8

    move-object v8, v4

    invoke-direct/range {v8 .. v15}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v8, v4, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move-object v14, v8

    move-object v15, v5

    invoke-direct/range {v14 .. v21}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v5, v8, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;

    invoke-direct {v9, v7, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v9}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lkotlin/ULong$Companion;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v5, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    :goto_2
    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPanoramaMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PanoStates;->PANO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x42200000    # 40.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    add-float/2addr p1, v0

    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v0, v6, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->getPaddingBottom()F

    move-result v0

    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x42a60000    # 83.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v1, v6

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v3

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v6

    mul-float/2addr v6, v3

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setBgColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mProgressPadding:F

    add-float/2addr p1, v1

    invoke-virtual {v0, v2, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSplitMode:Z

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewHeight:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSmallPreviewWidth:F

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updateTranslation(ZFFLcom/motorola/camera/PreviewSize;Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_1

    :cond_2
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransAnim:Z

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mInitPanoCirlce:Z

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPlayTransForWrongDirection:Z

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->showIdleAnimation(Z)V

    goto/16 :goto_8

    :cond_4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_8

    :cond_5
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdle:Z

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIsIdleArrowDisplayed:Z

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->showIdleAnimation(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    goto/16 :goto_8

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v3

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v6, 0x43c60000    # 396.0f

    mul-float/2addr p1, v6

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaHeight:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v0, p1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    mul-float/2addr v0, v3

    mul-float/2addr v0, v1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    const/high16 v1, 0x43be0000    # 380.0f

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/motorola/camera/panorama/PanoHelper;->sPreviewAreaWidth:I

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mReversing:Z

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPreTrans:F

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirectionDeepTrans:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->updatePanoGuideIdleText(Z)V

    goto/16 :goto_8

    :cond_8
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_9

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iput-boolean v4, p1, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCaptureColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setColor(I)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->progressCapture(Landroid/os/Bundle;)V

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mCapturing:Z

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mDirection:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mRotationChange:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->mCapturing:Z

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setDisplayOrientation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_5

    :cond_c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->setSavingProgressVisible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->hide()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_7

    :cond_e
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->setGuideIdleTextVisible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    :goto_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoMiniPreviewGuideTex:Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/PanoMiniPreviewGuideTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mTargetCircleTex:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoThumbnailTexBackground:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoArrowTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mIdleArrowTextures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mMovingCircleHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mPanoGuideLineHorTexList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method
