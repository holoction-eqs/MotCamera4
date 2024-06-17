.class public final Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation$1;
.super Landroidx/core/view/MenuHostHelper;
.source "SourceFile"


# instance fields
.field public final synthetic val$callback:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>(Landroidx/core/view/MenuHostHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation$1;->val$callback:Landroidx/core/view/MenuHostHelper;

    const/16 p1, 0x17

    invoke-direct {p0, p1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/DropShadowKeyframeAnimation$1;->val$callback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const p1, 0x40233333    # 2.55f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    return-object p0
.end method
