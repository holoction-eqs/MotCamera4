.class public final Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public mDuration:F

.field public mGlowAlpha:F

.field public mGlowAlphaFinish:F

.field public mGlowAlphaStart:F

.field public final mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public mStartTime:J

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float p1, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mDuration:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaStart:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaFinish:F

    invoke-static {v2, v1, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    const v0, 0x3f7fbe77    # 0.999f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_4

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    const/4 v2, 0x4

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    goto :goto_1

    :cond_2
    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mStartTime:J

    const/high16 p1, 0x447a0000    # 1000.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mDuration:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaStart:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlphaFinish:F

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mGlowAlpha:F

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_2

    :cond_5
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    return v0
.end method

.method public final cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/WheelEdgeGlowAnimation;->mState:I

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void
.end method
