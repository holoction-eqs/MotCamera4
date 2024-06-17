.class public final Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public mCurrentCount:I

.field public final mDelta:F

.field public final mDuration:J

.field public final mEnd:F

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:F

.field public mStartTime:J


# direct methods
.method public constructor <init>(Lkotlin/ULong$Companion;JFFII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    sub-float/2addr p5, p4

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 13

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mEnd:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    sub-long v6, v4, v6

    long-to-float p1, v6

    iget-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDuration:J

    long-to-float v6, v6

    div-float/2addr p1, v6

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    const/4 v7, -0x1

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatMode:I

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStart:F

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mRepeatCount:I

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    if-nez v6, :cond_a

    cmpl-float v6, p1, v11

    if-lez v6, :cond_11

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v12

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    if-le p1, v10, :cond_6

    if-ne v10, v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_5
    return v1

    :cond_6
    :goto_2
    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v12, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_3

    :cond_8
    iput-boolean v12, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    :cond_9
    :goto_4
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lkotlin/ULong$Companion;->onAnimationRepeat()V

    goto :goto_7

    :cond_a
    cmpl-float v6, p1, v11

    if-lez v6, :cond_11

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    add-int/2addr p1, v12

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    if-le p1, v10, :cond_e

    if-ne v10, v7, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_5

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_d
    return v1

    :cond_e
    :goto_6
    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    invoke-static {v8}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    :cond_10
    :goto_7
    const/4 p1, 0x0

    :cond_11
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mDelta:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v3

    if-eqz v1, :cond_12

    sub-float/2addr v2, p0

    goto :goto_8

    :cond_12
    add-float v2, p0, v9

    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_9

    :cond_13
    return v12
.end method

.method public final startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mStartTime:J

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mCurrentCount:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->mReverseUpdate:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/ULong$Companion;->onAnimationStart()V

    :cond_0
    return-void
.end method
