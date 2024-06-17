.class public final Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "SourceFile"


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Landroidx/core/view/MenuHostHelper;

    iget-object v1, p1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p1, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v3, p1, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    if-nez v3, :cond_0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_0
    move-object v4, v1

    check-cast v4, Lcom/airbnb/lottie/model/DocumentData;

    iget-object p1, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez p1, :cond_1

    move-object p1, v4

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v6

    iget v7, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/MenuHostHelper;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, p0

    :cond_4
    :goto_2
    check-cast v1, Lcom/airbnb/lottie/model/DocumentData;

    return-object v1
.end method
