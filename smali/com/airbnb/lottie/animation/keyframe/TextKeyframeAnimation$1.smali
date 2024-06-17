.class public final Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;
.super Landroidx/core/view/MenuHostHelper;
.source "SourceFile"


# instance fields
.field public final synthetic val$documentData:Lcom/airbnb/lottie/model/DocumentData;

.field public final synthetic val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

.field public final synthetic val$valueCallback:Landroidx/core/view/MenuHostHelper;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/value/LottieFrameInfo;Landroidx/core/view/MenuHostHelper;Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Landroidx/core/view/MenuHostHelper;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    const/16 p1, 0x17

    invoke-direct {p0, p1}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 12

    iget v0, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    iget v1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    iget-object v2, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v2, v2, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v3, v3, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iget v4, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    iget v5, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    iget v6, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    iget-object v7, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    iput v0, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    iput v1, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    iput-object v2, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    iput-object v3, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    iput v4, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    iput v5, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    iput v6, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, v7}, Landroidx/core/view/MenuHostHelper;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    :goto_0
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v1, p1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iget v2, p1, Lcom/airbnb/lottie/model/DocumentData;->size:F

    iget v3, p1, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iget v4, p1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iget v5, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    iget v6, p1, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    iget v7, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iget v8, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iget v9, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    iget-boolean v10, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    iget-object v11, p1, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    iput-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iput v2, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    iput v3, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iput v4, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iput v5, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    iput v6, p0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    iput v7, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iput v8, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iput v9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    iput-boolean v10, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    iput-object v11, p0, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    return-object p0
.end method
