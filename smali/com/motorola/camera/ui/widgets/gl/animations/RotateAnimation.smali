.class public final Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public mCurrentCount:I

.field public final mDelta:F

.field public final mDuration:J

.field public final mEnd:F

.field public mPeakValue:F

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:F

.field public mStartTime:J

.field public final mType:I


# direct methods
.method public constructor <init>(Lkotlin/ULong$Companion;JFFII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatMode:I

    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatCount:I

    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDuration:J

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    sub-float/2addr p5, p4

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDelta:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mType:I

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 14

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mEnd:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStart:F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    const/4 v5, 0x0

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mType:I

    if-ne v0, v6, :cond_12

    iget-boolean v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_b

    :goto_1
    invoke-virtual {v4, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    sub-long v8, v6, v8

    long-to-float v8, v8

    iget-wide v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDuration:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    iget-boolean v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    const/4 v10, -0x1

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatMode:I

    iget v12, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mRepeatCount:I

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v9, :cond_8

    cmpl-float v9, v8, v13

    if-lez v9, :cond_e

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    if-le v8, v12, :cond_4

    if-ne v12, v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_b

    goto :goto_1

    :cond_4
    :goto_3
    iput-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    invoke-static {v11}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_4

    :cond_6
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    :cond_7
    :goto_5
    if-eqz v4, :cond_f

    goto :goto_a

    :cond_8
    cmpl-float v9, v8, v13

    if-lez v9, :cond_e

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    if-le v8, v12, :cond_c

    if-ne v12, v10, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto :goto_6

    :cond_a
    if-eqz v4, :cond_b

    goto/16 :goto_1

    :cond_b
    :goto_7
    move v0, v5

    goto :goto_e

    :cond_c
    :goto_8
    iput-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    invoke-static {v11}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_9

    :cond_d
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    :goto_9
    if-eqz v4, :cond_f

    :goto_a
    invoke-virtual {v4}, Lkotlin/ULong$Companion;->onAnimationRepeat()V

    goto :goto_b

    :cond_e
    move v3, v8

    :cond_f
    :goto_b
    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mDelta:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v5

    if-eqz v4, :cond_10

    sub-float/2addr v1, p0

    goto :goto_c

    :cond_10
    add-float v1, p0, v2

    :goto_c
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v1, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_d

    :cond_11
    :goto_e
    return v0

    :cond_12
    const/4 v7, 0x2

    if-ne v7, v6, :cond_1b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    long-to-float v9, v6

    mul-float/2addr v8, v9

    mul-long/2addr v6, v6

    long-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v8, v6

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_13

    if-eqz v4, :cond_18

    :goto_f
    invoke-virtual {v4, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_11

    :cond_13
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v6, v3

    mul-float/2addr v6, v8

    cmpg-float v3, v2, v1

    const/high16 v7, -0x40800000    # -1.0f

    if-gez v3, :cond_14

    add-float v3, v2, v6

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_16

    :cond_14
    cmpl-float v3, v2, v1

    if-lez v3, :cond_15

    add-float v8, v2, v6

    cmpg-float v8, v8, v1

    if-ltz v8, :cond_16

    :cond_15
    if-nez v3, :cond_19

    :cond_16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_10

    :cond_17
    if-eqz v4, :cond_18

    goto :goto_f

    :cond_18
    :goto_11
    move v0, v5

    goto :goto_13

    :cond_19
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    add-float v1, v2, v6

    invoke-virtual {p1, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    goto :goto_12

    :cond_1a
    :goto_13
    return v0

    :cond_1b
    return v5
.end method

.method public final cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lkotlin/ULong$Companion;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_0
    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mStartTime:J

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mCurrentCount:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mReverseUpdate:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->mPeakValue:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/ULong$Companion;->onAnimationStart()V

    :cond_0
    return-void
.end method
