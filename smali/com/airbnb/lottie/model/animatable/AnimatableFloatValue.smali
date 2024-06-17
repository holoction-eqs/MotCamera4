.class public final Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .locals 1

    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object p0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-object v0
.end method
