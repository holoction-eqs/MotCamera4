.class public final Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "SourceFile"


# instance fields
.field public final valueCallbackValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Landroidx/core/view/MenuHostHelper;)V

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getEndProgress()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Landroidx/core/view/MenuHostHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->valueCallbackValue:Ljava/lang/Object;

    .line 1
    iget v7, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move-object v3, v4

    move v5, v7

    move v6, v7

    .line 2
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/MenuHostHelper;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final notifyListeners()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Landroidx/core/view/MenuHostHelper;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->notifyListeners()V

    :cond_0
    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    return-void
.end method
