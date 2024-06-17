.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mActiveDrag:Z

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public final mDensity:F

.field public mEnableDrag:Z

.field public final mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mLocked:Z

.field public mRectRoi:Lcom/google/common/base/Splitter$1;

.field public mRoiActive:Z

.field public final mRoiCallback:Ljava/lang/ref/WeakReference;

.field public final mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSupportsExposureComp:Z

.field public mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v0, 0x3

    invoke-direct {p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/16 v0, 0x9

    invoke-direct {p2, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    new-instance p3, Lcom/google/common/base/Splitter$1;

    const/16 v0, 0x13

    invoke-direct {p3, p0, v0}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/google/common/base/Splitter$1;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    return-void
.end method


# virtual methods
.method public final applyActiveBarAnimation(Z)V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;

    invoke-direct {v3, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;Z)V

    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    move v6, v7

    move v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, v10, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v10, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v0, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyCenterRoiAnimation(Z)V
    .locals 11

    const-wide/16 v3, 0x1f4

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;

    invoke-direct {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;)V

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getHideAnimation(J)Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    move-object v1, v10

    :goto_0
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$4;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;-><init>(Lkotlin/ULong$Companion;)V

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    if-eqz v10, :cond_1

    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    new-array v1, v4, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v2, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyLockedAnimation(Z)V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float v2, v1

    const/high16 v3, 0x42b40000    # 90.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v2, v3

    :goto_0
    move v8, v2

    if-eqz p1, :cond_1

    int-to-float p1, v1

    sub-float/2addr p1, v3

    goto :goto_1

    :cond_1
    int-to-float p1, v1

    :goto_1
    move v9, p1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    const/4 v1, 0x2

    invoke-direct {v5, p0, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;-><init>(Ljava/lang/Object;FI)V

    const-wide/16 v6, 0x1f4

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    aput-object p0, v2, v3

    invoke-virtual {p1, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 p0, 0x5

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final applyShowBarAnimation()V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;

    invoke-direct {v3, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, v10, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v10, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v0, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final cancelTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->cancelTouch()V

    return-void
.end method

.method public final getHideAnimation(J)Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;
    .locals 9

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;

    const/4 v0, 0x1

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p0, v8, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v8
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-nez v0, :cond_0

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x42480000    # 50.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getRect()Lcom/google/common/base/Splitter$1;
    .locals 6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_1
    :goto_0
    iget v3, p0, Landroid/graphics/PointF;->x:F

    :goto_1
    div-float/2addr v3, v5

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget p0, p0, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_3
    :goto_2
    iget p0, p0, Landroid/graphics/PointF;->y:F

    :goto_3
    div-float/2addr p0, v5

    new-instance v1, Lcom/google/common/base/Splitter$1;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float v4, v2, v3

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float v5, v0, p0

    add-float/2addr v2, v3

    sub-float/2addr v0, p0

    invoke-direct {v1, v4, v5, v2, v0}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V

    return-object v1
.end method

.method public final loadTexture()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->loadTexture()V

    const/high16 v1, 0x42480000    # 50.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mLongPressTimeout:I

    return-void
.end method

.method public final onChangePosition(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->updateNewRect(FF)Lcom/google/common/base/Splitter$1;

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 5

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setRoiActive(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->updateNewRect(FF)Lcom/google/common/base/Splitter$1;

    move-result-object p3

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object p3

    :goto_0
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p4, :cond_2

    xor-int/lit8 p4, p1, 0x1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyShowBarAnimation()V

    :cond_2
    if-nez p1, :cond_3

    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz p4, :cond_7

    :cond_3
    iget-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    if-eqz p4, :cond_7

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p4, :cond_6

    invoke-virtual {p3}, Lcom/google/common/base/Splitter$1;->centerX()F

    invoke-virtual {p3}, Lcom/google/common/base/Splitter$1;->centerY()F

    check-cast p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean p1, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object p3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p3}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result v1

    iget-object v2, p4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {p3}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result p3

    iget-object v1, p4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr p3, v1

    neg-float p3, p3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v3, "LOCATION"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ROI_DRAG"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, p4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    if-nez p1, :cond_5

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchArea:Landroid/graphics/PointF;

    :cond_5
    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p3, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setFocusExposeLocked(ZZ)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dismissLockToast()V

    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->checkCollision()V

    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    iput-boolean p2, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    if-nez p1, :cond_6

    invoke-virtual {p4, p2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    :cond_6
    :goto_1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    :cond_7
    return-void
.end method

.method public final onDraw([F[F)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz v1, :cond_0

    const/16 v1, 0xc11

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v3, v4, v5, p1}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const-string p1, "glScissor"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string p1, "glDisable"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onLongPress(ZLandroid/graphics/PointF;)V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_8

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz v2, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    invoke-direct {v1, v3, p2, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    invoke-virtual {v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    :goto_0
    const-string p2, "LONG_PRESS"

    invoke-static {p2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object v1

    const-string v3, "LOCATION"

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    xor-int/lit8 v1, p1, 0x1

    const-string v3, "LOCK_FOCUS_STATE"

    invoke-virtual {p2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    if-nez v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v0

    :goto_2
    const-string v3, "ROI_INNER"

    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setFocusExposeLocked(ZZ)V

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dismissLockToast()V

    :cond_6
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0, p2, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mActiveDrag:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_6

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    if-eqz p2, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz p4, :cond_2

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget p5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    invoke-direct {p3, p5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p3

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p5, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setFocusExposeLocked(ZZ)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->dismissLockToast()V

    :cond_3
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->convertToTouchCoords(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/PreviewSize;)Landroid/graphics/PointF;

    move-result-object p3

    const-string v0, "LOCATION"

    invoke-virtual {p5, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "LOCK_FOCUS_STATE"

    invoke-virtual {p5, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x1

    xor-int/lit8 p3, p4, 0x1

    const-string p4, "ENABLE"

    invoke-virtual {p5, p4, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "ROI_INNER"

    invoke-virtual {p5, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "CAPTURE_TRIGGER"

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p5, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "CHECKIN_CAPTURE_TRIGGER"

    const-string p3, "TOUCH"

    invoke-virtual {p5, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    mul-int/lit16 p2, p2, 0x3e8

    const-string p3, "TIMER"

    invoke-virtual {p5, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->checkCollision()V

    :cond_5
    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, p3, p5, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public final onTouchDown(JLandroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, p3, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLensMovementBehavior:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->cancel()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mLensMovementBehavior:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    move v1, p0

    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    :goto_0
    return v1
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setFocusExposeLocked(ZZ)V
    .locals 12

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v4, 0x439d8000    # 315.0f

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-double v8, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    double-to-float v3, v10

    add-float/2addr v7, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    double-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v6, v7, v0}, Landroid/graphics/PointF;->set(FF)V

    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v3, v6, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v4, v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setRoiActive(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final setTouchable(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLockTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->unloadTexture()V

    :cond_2
    return-void
.end method

.method public final updateNewRect(FF)Lcom/google/common/base/Splitter$1;
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mEnableDrag:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    new-instance v4, Lcom/google/common/base/Splitter$1;

    sub-float v5, p1, v2

    add-float v6, p2, v1

    add-float/2addr p1, v2

    sub-float/2addr p2, v1

    invoke-direct {v4, v5, v6, p1, p2}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    new-instance v2, Landroid/graphics/Rect;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v5, v5, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v2, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v5}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->getTouchKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_1
    iget-object v5, v5, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_2

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_2

    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v7, v7, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v7, :cond_2

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v8, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    invoke-direct {v6, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Lcom/google/common/base/Splitter$1;

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v9, v3

    sub-float/2addr v8, v9

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v3

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    iget v11, v2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    sub-float/2addr v11, v9

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v6, v9

    invoke-direct {v7, v8, v10, v11, v6}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-nez v5, :cond_3

    new-instance v5, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v5, v8, v9}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v5, v8}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v7, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->bottom:F

    move-object v9, v6

    check-cast v9, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    :cond_3
    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v5

    const/high16 v8, 0x41000000    # 8.0f

    mul-float/2addr v5, v8

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v8

    const/high16 v9, 0x41c00000    # 24.0f

    mul-float/2addr v8, v9

    invoke-virtual {v7, v5, v8}, Lcom/google/common/base/Splitter$1;->inset(FF)V

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v5, :cond_4

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v8, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v8, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/ZoomComponent;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getButtonPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v3

    add-float/2addr v5, v8

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v3

    add-float/2addr p1, v5

    iget-object v5, v7, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v5, Landroid/graphics/RectF;->bottom:F

    :cond_4
    iget p1, v2, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_6

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    invoke-static {p1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->top:I

    iget-object v2, v7, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v2

    invoke-interface {p1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result p1

    add-float/2addr p1, v2

    iget-object v2, v7, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result p1

    :goto_0
    int-to-float p1, p1

    sub-float/2addr v5, p1

    iput v5, v2, Landroid/graphics/RectF;->top:F

    :cond_6
    move-object p1, v7

    :goto_1
    if-nez p1, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v2, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v5

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    iget-object v5, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    iget-object v2, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v5

    div-float/2addr v5, v3

    add-float/2addr v5, v2

    iget-object v2, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    iget-object v2, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    :goto_2
    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v5

    div-float/2addr v5, v3

    sub-float/2addr v2, v5

    goto :goto_3

    :cond_9
    iget v2, v2, Landroid/graphics/RectF;->left:F

    :goto_3
    iget-object v5, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v6

    div-float/2addr v6, v3

    add-float/2addr v6, v5

    iget-object v5, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v6, v5

    if-gez v5, :cond_a

    iget-object v5, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    goto :goto_4

    :cond_a
    iget-object v5, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v6

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget-object v6, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_b

    iget-object v5, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    :goto_4
    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v6

    div-float/2addr v6, v3

    add-float/2addr v6, v5

    goto :goto_5

    :cond_b
    iget v6, v6, Landroid/graphics/RectF;->top:F

    :goto_5
    iget-object v3, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    mul-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {v3, v5, p2, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object p1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_c

    move v1, v0

    :cond_c
    :goto_6
    monitor-enter p0

    :try_start_0
    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRectRoi:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result p1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRectRoi:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v2}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-eqz p1, :cond_f

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result v2

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result v3

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->checkCollision()V

    iget-object v5, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FOCUS_INDICATOR:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$RoiLocationCallback;

    if-eqz p1, :cond_f

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/FocusComponent;->mFocusTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v5, v2, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    :goto_7
    monitor-exit p0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p1, :cond_11

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    const/4 v0, 0x2

    :goto_8
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMX(I)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mDensity:F

    mul-float/2addr v0, v1

    invoke-direct {p1, v0, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_11
    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
