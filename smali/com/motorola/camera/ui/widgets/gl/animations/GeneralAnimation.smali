.class public final Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;
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
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatMode:I

    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatCount:I

    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDuration:J

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStart:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mEnd:F

    sub-float/2addr p5, p4

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDelta:F

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 12

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mEnd:F

    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    move-object p1, v0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lkotlin/ULong$Companion;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_2
    return v1

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float p1, v5

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDuration:J

    long-to-float v5, v5

    div-float/2addr p1, v5

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    const/4 v6, -0x1

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatMode:I

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStart:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mRepeatCount:I

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    if-nez v5, :cond_b

    cmpl-float v5, p1, v10

    if-lez v5, :cond_12

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    if-le p1, v9, :cond_7

    if-ne v9, v6, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    move-object p1, v0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_6
    return v1

    :cond_7
    :goto_0
    iput-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v11, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_a

    move-object p1, v0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V

    goto :goto_1

    :cond_9
    iput-boolean v11, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    :cond_a
    :goto_1
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lkotlin/ULong$Companion;->onAnimationRepeat()V

    goto :goto_3

    :cond_b
    cmpl-float v5, p1, v10

    if-lez v5, :cond_12

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    if-le p1, v9, :cond_f

    if-ne v9, v6, :cond_c

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_d

    move-object p1, v0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {p1, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_e
    return v1

    :cond_f
    :goto_2
    iput-wide v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_3

    :cond_10
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    :cond_11
    :goto_3
    const/4 p1, 0x0

    :cond_12
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mDelta:F

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v3

    sub-float/2addr v2, p1

    goto :goto_4

    :cond_13
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v3

    add-float v2, p1, v8

    :goto_4
    if-eqz v0, :cond_14

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;->applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V

    :cond_14
    return v11
.end method

.method public final startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mStartTime:J

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mCurrentCount:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->mReverseUpdate:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/ULong$Companion;->onAnimationStart()V

    :cond_0
    return-void
.end method
