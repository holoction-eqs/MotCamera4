.class public final Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public mCurrentCount:I

.field public final mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mDistance:F

.field public final mDuration:J

.field public final mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mRepeatCount:I

.field public final mRepeatMode:I

.field public mReverseUpdate:Z

.field public final mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mStartTime:J

.field public final mType:I

.field public final mVelocity:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 1
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p2, p4

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p2, p4

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->normalize()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatCount:I

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lkotlin/ULong$Companion;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-wide p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {p4, p5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 4
    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p2, p3

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->normalize()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatCount:I

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final animationUpdate([F)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mEnd:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStart:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDirection:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDistance:F

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    const/4 v8, 0x0

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mType:I

    if-ne v2, v9, :cond_f

    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz v9, :cond_0

    if-eqz v7, :cond_6

    invoke-virtual {v7, v0}, Lkotlin/ULong$Companion;->onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :goto_0
    invoke-virtual {v7, v0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_4

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    sub-long v11, v9, v11

    long-to-float v11, v11

    iget-wide v12, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mDuration:J

    long-to-float v12, v12

    div-float/2addr v11, v12

    iget-boolean v12, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    const/4 v13, -0x1

    iget v14, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatMode:I

    iget v15, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mRepeatCount:I

    const/high16 v16, 0x3f800000    # 1.0f

    if-nez v12, :cond_4

    cmpl-float v12, v11, v16

    if-lez v12, :cond_a

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    add-int/2addr v11, v2

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    if-le v11, v15, :cond_2

    if-ne v15, v13, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_6

    :goto_1
    goto :goto_0

    :cond_2
    :goto_2
    iput-wide v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    if-ne v14, v2, :cond_3

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    :cond_3
    if-eqz v7, :cond_9

    :goto_3
    invoke-virtual {v7}, Lkotlin/ULong$Companion;->onAnimationRepeat()V

    goto :goto_7

    :cond_4
    cmpl-float v12, v11, v16

    if-lez v12, :cond_a

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    add-int/2addr v11, v2

    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mCurrentCount:I

    if-le v11, v15, :cond_7

    if-ne v15, v13, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    move v2, v8

    goto :goto_a

    :cond_7
    :goto_5
    iput-wide v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    :goto_6
    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    :goto_7
    const/4 v11, 0x0

    :cond_a
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v11}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v9

    mul-float/2addr v9, v6

    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v10, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mReverseUpdate:Z

    if-eqz v0, :cond_b

    const/high16 v11, -0x40800000    # -1.0f

    mul-float/2addr v6, v11

    mul-float/2addr v10, v11

    mul-float/2addr v5, v11

    :cond_b
    mul-float/2addr v6, v9

    mul-float/2addr v10, v9

    mul-float/2addr v5, v9

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    move-object v3, v4

    :goto_8
    invoke-direct {v9, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v0, v6

    iput v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v0, v10

    iput v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, v5

    iput v0, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    :goto_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_e

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v7, :cond_d

    invoke-virtual {v7, v9}, Lkotlin/ULong$Companion;->onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    return v2

    :cond_f
    const/4 v10, 0x2

    if-ne v10, v9, :cond_16

    iget-boolean v9, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz v9, :cond_11

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_b

    :cond_10
    if-eqz v7, :cond_15

    invoke-virtual {v7, v0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    goto :goto_d

    :cond_11
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    sub-long/2addr v9, v11

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v12, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v13, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v14, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v15, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mVelocity:F

    mul-float/2addr v13, v8

    mul-float/2addr v14, v8

    mul-float/2addr v15, v8

    long-to-float v8, v9

    mul-float/2addr v13, v8

    mul-float/2addr v14, v8

    mul-float/2addr v15, v8

    iget v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v8, v13

    iput v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v8, v14

    iput v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v8, v15

    iput v8, v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v4, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->distance(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)F

    move-result v8

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_12

    invoke-virtual {v12, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v2, 0x0

    :cond_12
    invoke-virtual {v11, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {v7, v12}, Lkotlin/ULong$Companion;->onAnimationUpdate(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v8, 0x0

    goto :goto_c

    :cond_13
    if-nez v2, :cond_14

    invoke-virtual {v7, v0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_14
    move v8, v2

    :cond_15
    :goto_d
    return v8

    :cond_16
    move v0, v8

    return v0
.end method

.method public final startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->mStartTime:J

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/ULong$Companion;->onAnimationStart()V

    :cond_0
    return-void
.end method
