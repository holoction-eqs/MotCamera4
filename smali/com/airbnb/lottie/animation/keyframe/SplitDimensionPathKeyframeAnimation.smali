.class public final Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "SourceFile"


# instance fields
.field public final point:Landroid/graphics/PointF;

.field public final pointWithCallbackValues:Landroid/graphics/PointF;

.field public final xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public xValueCallback:Landroidx/core/view/MenuHostHelper;

.field public final yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public yValueCallback:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public final getValue(F)Landroid/graphics/PointF;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Landroidx/core/view/MenuHostHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v10

    iget-object v0, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xValueCallback:Landroidx/core/view/MenuHostHelper;

    iget v4, v2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    if-nez v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v5, v0

    :goto_0
    iget-object v0, v2, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Float;

    iget-object v0, v2, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/Float;

    move v8, p1

    move v9, p1

    invoke-virtual/range {v3 .. v10}, Landroidx/core/view/MenuHostHelper;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getInterpolatedCurrentKeyframeProgress()F

    move-result v11

    iget-object v1, v3, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yValueCallback:Landroidx/core/view/MenuHostHelper;

    iget v5, v3, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    if-nez v1, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move v6, v1

    :goto_2
    iget-object v1, v3, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/Float;

    iget-object v1, v3, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljava/lang/Float;

    move v9, p1

    move v10, p1

    invoke-virtual/range {v4 .. v11}, Landroidx/core/view/MenuHostHelper;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->pointWithCallbackValues:Landroid/graphics/PointF;

    if-nez v0, :cond_4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iget v0, p0, Landroid/graphics/PointF;->x:F

    if-nez v1, :cond_5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_4
    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->getValue(F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final setProgress(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->xAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->yAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setProgress(F)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation;->point:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;

    invoke-interface {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;->onValueChanged()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
