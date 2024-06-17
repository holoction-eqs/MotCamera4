.class public final Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;
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
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$2;FF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatCount:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDuration:J

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStart:F

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    sub-float/2addr p3, p2

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDelta:F

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

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    const/4 v2, 0x0

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mEnd:F

    const/high16 v4, 0x3f800000    # 1.0f

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

    invoke-virtual {v0, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_1
    return v2

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    sub-long v7, v5, v7

    long-to-float p1, v7

    iget-wide v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDuration:J

    long-to-float v7, v7

    div-float/2addr p1, v7

    iget-boolean v7, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    const/4 v8, -0x1

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatMode:I

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStart:F

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mRepeatCount:I

    const/4 v12, 0x1

    if-nez v7, :cond_9

    cmpl-float v7, p1, v4

    if-lez v7, :cond_10

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    add-int/2addr p1, v12

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    if-le p1, v11, :cond_6

    if-ne v11, v8, :cond_3

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

    invoke-virtual {v0, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_5
    return v2

    :cond_6
    :goto_2
    iput-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v12, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_3

    :cond_8
    iput-boolean v12, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    goto :goto_6

    :cond_9
    cmpl-float v7, p1, v4

    if-lez v7, :cond_10

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    add-int/2addr p1, v12

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    if-le p1, v11, :cond_d

    if-ne v11, v8, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v10, v10, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_c
    return v2

    :cond_d
    :goto_5
    iput-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    invoke-static {v9}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    :cond_f
    :goto_6
    const/4 p1, 0x0

    :cond_10
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mDelta:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p0, v2

    if-eqz v1, :cond_11

    sub-float/2addr v3, p0

    goto :goto_7

    :cond_11
    add-float v3, p0, v10

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_8

    :cond_12
    return v12
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mStartTime:J

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mCurrentCount:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/ScaleAnimation;->mReverseUpdate:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/ULong$Companion;->onAnimationStart()V

    :cond_0
    return-void
.end method
