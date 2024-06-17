.class public final Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "SourceFile"


# instance fields
.field public final codePointCache:Landroidx/collection/LongSparseArray;

.field public final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final contentsForCharacter:Ljava/util/HashMap;

.field public final fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final matrix:Landroid/graphics/Matrix;

.field public final rectF:Landroid/graphics/RectF;

.field public final stringBuilder:Ljava/lang/StringBuilder;

.field public final strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

.field public final strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field public textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final textSubLines:Ljava/util/ArrayList;

.field public final trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    new-instance v0, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/HashMap;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object v0, p2, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iget-object v0, v0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p1, p2, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Landroidx/work/WorkQuery$Builder;

    if-eqz p1, :cond_0

    iget-object p2, p1, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzpx;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_common/zzpx;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzpx;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast p2, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p1, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    return-void
.end method

.method public static drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static getTextLines(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string v0, "\r\n"

    const-string v1, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u0003"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)V
    .locals 6

    iget-object v0, p1, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    mul-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p2, p2

    iget v5, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    mul-float/2addr p2, v5

    mul-float/2addr p2, v2

    add-float/2addr p2, v4

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    iget v0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    iget p1, p1, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v3, p1

    add-float/2addr v3, v0

    div-float/2addr p3, p1

    sub-float/2addr v3, p3

    invoke-virtual {p0, v3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_4
    add-float/2addr v0, v3

    sub-float/2addr v0, p3

    :cond_5
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto/16 :goto_1

    :cond_1
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_3
    if-nez p1, :cond_4

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto/16 :goto_1

    :cond_4
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->STROKE_WIDTH:Ljava/lang/Float;

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_6
    if-nez p1, :cond_7

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto/16 :goto_1

    :cond_7
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_TRACKING:Ljava/lang/Float;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_9

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_9
    if-nez p1, :cond_a

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_1

    :cond_a
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT_SIZE:Ljava/lang/Float;

    if-ne p2, v0, :cond_e

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_c

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_c
    if-nez p1, :cond_d

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_1

    :cond_d
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_e
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TYPEFACE:Landroid/graphics/Typeface;

    if-ne p2, v0, :cond_11

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p2, :cond_f

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_f
    if-nez p1, :cond_10

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_1

    :cond_10
    new-instance p2, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {p2, p1, v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    :cond_11
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->TEXT:Ljava/lang/String;

    if-ne p2, v0, :cond_12

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/airbnb/lottie/value/LottieFrameInfo;

    invoke-direct {p2}, Lcom/airbnb/lottie/value/LottieFrameInfo;-><init>()V

    new-instance v0, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/DocumentData;-><init>()V

    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;

    invoke-direct {v1, p2, p1, v0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;-><init>(Lcom/airbnb/lottie/value/LottieFrameInfo;Landroidx/core/view/MenuHostHelper;Lcom/airbnb/lottie/model/DocumentData;)V

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Landroidx/core/view/MenuHostHelper;)V

    :cond_12
    :goto_1
    return-void
.end method

.method public final drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v10, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v0, v10, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    iget-object v1, v9, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/airbnb/lottie/model/Font;

    if-nez v11, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->color:I

    :goto_1
    iget-object v12, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeColorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_4
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    :goto_3
    iget-object v13, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/BaseLayer;->transform:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfResetWorkSpecRunAttemptCount:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/16 v1, 0x64

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v1

    mul-int v0, v0, p3

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_7

    :goto_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_6

    :cond_7
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_6
    iget-object v14, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v14, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    if-nez v0, :cond_8

    iget-object v0, v14, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    iget v0, v0, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v15, v11, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    iget-object v6, v11, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_8

    :cond_9
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    :goto_8
    div-float v5, v0, v2

    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v4, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v4, :cond_a

    move-object v3, v4

    goto :goto_9

    :cond_a
    if-eqz v3, :cond_b

    :goto_9
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    :cond_b
    move/from16 v16, v1

    const/4 v1, 0x0

    const/4 v3, -0x1

    move v4, v1

    move/from16 v18, v3

    const/16 v17, 0x0

    :goto_a
    if-ge v4, v0, :cond_33

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_b

    :cond_c
    iget v3, v3, Landroid/graphics/PointF;->x:F

    :goto_b
    const/16 v19, 0x1

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v21, v2

    move v2, v3

    move-object v3, v11

    move/from16 v22, v4

    move v4, v5

    move-object/from16 v23, v11

    move v11, v5

    move/from16 v5, v16

    move-object/from16 v24, v13

    move-object v13, v6

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    add-int/lit8 v3, v18, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    invoke-static {v8, v9, v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)V

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v5, v17

    :goto_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    mul-int/lit8 v6, v6, 0x1f

    move-object/from16 p2, v0

    const/16 v0, 0x1f

    invoke-static {v13, v6, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v0, v10, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v6, v5}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/FontCharacter;

    if-nez v0, :cond_d

    move-object/from16 v17, v2

    move/from16 p3, v3

    move-object/from16 v19, v15

    move-object/from16 v15, v24

    goto/16 :goto_12

    :cond_d
    iget-object v5, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v17, v2

    move/from16 p3, v3

    move-object/from16 v19, v15

    goto :goto_f

    :cond_e
    iget-object v6, v0, Lcom/airbnb/lottie/model/FontCharacter;->shapes:Ljava/util/List;

    move-object/from16 v17, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    move/from16 p3, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v18, 0x0

    move-object/from16 v19, v15

    move/from16 v15, v18

    :goto_e
    if-ge v15, v2, :cond_f

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v25, v2

    move-object/from16 v2, v18

    check-cast v2, Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-object/from16 v18, v6

    new-instance v6, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-direct {v6, v14, v7, v2, v10}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v18

    move/from16 v2, v25

    goto :goto_e

    :cond_f
    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    :goto_f
    const/4 v2, 0x0

    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v6, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    const/4 v15, 0x0

    invoke-virtual {v3, v6, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v6, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget v15, v9, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    neg-float v15, v15

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v18

    mul-float v15, v15, v18

    move-object/from16 v18, v5

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v6, v11, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v3, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v5, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v5, :cond_10

    invoke-static {v3, v12, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    move-object/from16 v15, v24

    invoke-static {v3, v15, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    goto :goto_11

    :cond_10
    move-object/from16 v15, v24

    invoke-static {v3, v15, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    invoke-static {v3, v12, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v15

    move-object/from16 v5, v18

    goto :goto_10

    :cond_11
    move-object/from16 v15, v24

    const/4 v2, 0x0

    iget-wide v5, v0, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    double-to-float v0, v5

    mul-float/2addr v0, v11

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v3, v0

    add-float v3, v3, v16

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_12
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v3, p3

    move-object/from16 v24, v15

    move-object/from16 v2, v17

    move-object/from16 v15, v19

    goto/16 :goto_d

    :cond_12
    move-object/from16 p2, v0

    move/from16 p3, v3

    move-object/from16 v19, v15

    move-object/from16 v15, v24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    const/16 v17, 0x0

    move/from16 v18, p3

    move-object/from16 v15, v19

    goto/16 :goto_c

    :cond_13
    move-object/from16 v19, v15

    move-object/from16 v15, v24

    add-int/lit8 v4, v22, 0x1

    const/16 v17, 0x0

    move v5, v11

    move-object v6, v13

    move-object v13, v15

    move-object/from16 v15, v19

    move/from16 v0, v20

    move-object/from16 v2, v21

    move-object/from16 v11, v23

    goto/16 :goto_a

    :cond_14
    move-object/from16 v23, v11

    move-object/from16 v19, v15

    move-object v15, v13

    move-object v13, v6

    const/4 v0, 0x0

    iget-object v1, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->typefaceCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_15

    move-object/from16 v10, v23

    goto/16 :goto_19

    :cond_15
    iget-object v1, v14, Lcom/airbnb/lottie/LottieDrawable;->fontMap:Ljava/util/Map;

    if-eqz v1, :cond_18

    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object v6, v13

    move-object/from16 v10, v23

    goto :goto_13

    :cond_16
    move-object/from16 v10, v23

    iget-object v6, v10, Lcom/airbnb/lottie/model/Font;->name:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_13

    :cond_17
    const-string v5, "-"

    move-object/from16 v6, v19

    invoke-static {v13, v5, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    move-object v6, v5

    :goto_13
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto/16 :goto_18

    :cond_18
    move-object/from16 v6, v19

    move-object/from16 v10, v23

    :cond_19
    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v5, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/model/MutablePair;

    iput-object v13, v5, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    iput-object v6, v5, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    iget-object v11, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_1a

    goto/16 :goto_17

    :cond_1a
    iget-object v5, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    if-eqz v5, :cond_1b

    goto :goto_14

    :cond_1b
    iget-object v5, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    invoke-static {v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    invoke-static {v5}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v5, v10, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    if-eqz v5, :cond_1c

    goto :goto_14

    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "fonts/"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v11, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    check-cast v11, Landroid/content/res/AssetManager;

    invoke-static {v11, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    iget-object v11, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    const-string v11, "Italic"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v13, "Bold"

    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v11, :cond_1d

    if-eqz v6, :cond_1d

    const/4 v6, 0x3

    goto :goto_15

    :cond_1d
    if-eqz v11, :cond_1e

    const/4 v6, 0x2

    goto :goto_15

    :cond_1e
    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_15

    :cond_1f
    const/4 v6, 0x0

    :goto_15
    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v11

    if-ne v11, v6, :cond_20

    goto :goto_16

    :cond_20
    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    :goto_16
    iget-object v6, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v1, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/MutablePair;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    move-object v1, v5

    goto :goto_18

    :cond_21
    const/4 v1, 0x0

    :goto_18
    if-eqz v1, :cond_22

    goto :goto_19

    :cond_22
    iget-object v1, v10, Lcom/airbnb/lottie/model/Font;->typeface:Landroid/graphics/Typeface;

    :goto_19
    if-nez v1, :cond_23

    goto/16 :goto_28

    :cond_23
    iget-object v5, v9, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->textSizeCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1a

    :cond_24
    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->size:F

    :goto_1a
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v6, v9, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iget-object v4, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz v4, :cond_25

    move-object v3, v4

    goto :goto_1b

    :cond_25
    if-eqz v3, :cond_26

    :goto_1b
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v6, v3

    :cond_26
    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v3, v6

    mul-float/2addr v3, v1

    div-float v11, v3, v2

    invoke-static {v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->getTextLines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v16, v0

    move v6, v1

    move/from16 v17, v2

    :goto_1c
    if-ge v6, v14, :cond_33

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    if-nez v0, :cond_27

    move/from16 v2, v16

    goto :goto_1d

    :cond_27
    iget v0, v0, Landroid/graphics/PointF;->x:F

    move v2, v0

    :goto_1d
    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v3, v10

    move v5, v11

    move/from16 v19, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/TextLayer;->splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    add-int/lit8 v3, v17, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    invoke-static {v8, v9, v3, v4}, Lcom/airbnb/lottie/model/layer/TextLayer;->offsetCanvas(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)V

    iget-object v2, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_31

    invoke-virtual {v2, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v4

    move-object/from16 p2, v0

    :goto_20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_2b

    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    move/from16 p3, v3

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v3

    move-object/from16 v23, v10

    const/16 v10, 0x10

    if-eq v3, v10, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v10, 0x1b

    if-eq v3, v10, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/4 v10, 0x6

    if-eq v3, v10, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v10, 0x1c

    if-eq v3, v10, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v10, 0x8

    if-eq v3, v10, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v3

    const/16 v10, 0x13

    if-ne v3, v10, :cond_28

    goto :goto_21

    :cond_28
    const/4 v3, 0x0

    goto :goto_22

    :cond_29
    :goto_21
    const/4 v3, 0x1

    :goto_22
    if-nez v3, :cond_2a

    goto :goto_23

    :cond_2a
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v6, v3

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v5, v0

    move/from16 v3, p3

    move-object/from16 v10, v23

    goto :goto_20

    :cond_2b
    move/from16 p3, v3

    move-object/from16 v23, v10

    :goto_23
    move-object v0, v13

    move v3, v14

    int-to-long v13, v5

    iget-object v5, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->codePointCache:Landroidx/collection/LongSparseArray;

    iget-boolean v10, v5, Landroidx/collection/LongSparseArray;->mGarbage:Z

    if-eqz v10, :cond_2c

    invoke-virtual {v5}, Landroidx/collection/LongSparseArray;->gc()V

    :cond_2c
    iget-object v10, v5, Landroidx/collection/LongSparseArray;->mKeys:[J

    move-object/from16 v18, v0

    iget v0, v5, Landroidx/collection/LongSparseArray;->mSize:I

    invoke-static {v10, v0, v13, v14}, Landroidx/core/util/DebugUtils;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_24

    :cond_2d
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {v5, v13, v14, v0}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move/from16 v20, v3

    goto :goto_26

    :cond_2e
    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/TextLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    move v10, v4

    :goto_25
    move/from16 v20, v3

    if-ge v10, v6, :cond_2f

    invoke-virtual {v2, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v10, v3

    move/from16 v3, v20

    goto :goto_25

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v13, v14, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    iget-boolean v3, v9, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-eqz v3, :cond_30

    invoke-static {v0, v12, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    invoke-static {v0, v15, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    goto :goto_27

    :cond_30
    invoke-static {v0, v15, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    invoke-static {v0, v12, v8}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter(Ljava/lang/String;Lcom/airbnb/lottie/model/layer/TextLayer$1;Landroid/graphics/Canvas;)V

    :goto_27
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v11

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p2

    move/from16 v16, v3

    move-object/from16 v13, v18

    move/from16 v14, v20

    move-object/from16 v10, v23

    move/from16 v3, p3

    goto/16 :goto_1f

    :cond_31
    move-object/from16 p2, v0

    move/from16 p3, v3

    move-object/from16 v23, v10

    move-object/from16 v18, v13

    move/from16 v20, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    move/from16 v17, p3

    goto/16 :goto_1e

    :cond_32
    move-object/from16 v23, v10

    move-object/from16 v18, v13

    move/from16 v20, v14

    add-int/lit8 v6, v19, 0x1

    goto/16 :goto_1c

    :cond_33
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;
    .locals 2

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v1, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    return-object p0
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object p2, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final splitGlyphTextIntoLines(Ljava/lang/String;FLcom/airbnb/lottie/model/Font;FFZ)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v3

    move v10, v9

    move v11, v10

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eqz p6, :cond_1

    mul-int/lit8 v13, v12, 0x1f

    iget-object v14, v2, Lcom/airbnb/lottie/model/Font;->family:Ljava/lang/String;

    const/16 v15, 0x1f

    invoke-static {v14, v13, v15}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v13

    iget-object v14, v2, Lcom/airbnb/lottie/model/Font;->style:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v14

    add-int/2addr v14, v13

    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object v13, v13, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/FontCharacter;

    if-nez v13, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-wide v13, v13, Lcom/airbnb/lottie/model/FontCharacter;->width:D

    double-to-float v13, v13

    mul-float v13, v13, p4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v14

    mul-float/2addr v14, v13

    add-float v14, v14, p5

    goto :goto_1

    :cond_1
    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v1, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Lcom/airbnb/lottie/model/layer/TextLayer$1;

    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float v14, v13, p5

    :goto_1
    const/16 v13, 0x20

    if-ne v12, v13, :cond_2

    const/4 v7, 0x1

    move v11, v14

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    const/4 v7, 0x0

    move v8, v4

    move v10, v14

    goto :goto_2

    :cond_3
    add-float/2addr v10, v14

    :goto_2
    add-float/2addr v9, v14

    cmpl-float v15, p2, v3

    if-lez v15, :cond_6

    cmpl-float v15, v9, p2

    if-ltz v15, :cond_6

    if-ne v12, v13, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    move-result-object v12

    if-ne v8, v6, :cond_5

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v10, v6

    int-to-float v6, v10

    mul-float/2addr v6, v11

    sub-float/2addr v9, v14

    sub-float/2addr v9, v6

    iput-object v8, v12, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    iput v9, v12, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    move v6, v4

    move v8, v6

    move v9, v14

    move v10, v9

    goto :goto_3

    :cond_5
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v1, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v6, v14

    int-to-float v6, v6

    mul-float/2addr v6, v11

    sub-float/2addr v9, v10

    sub-float/2addr v9, v6

    sub-float/2addr v9, v11

    iput-object v13, v12, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    iput v9, v12, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    move v6, v8

    move v9, v10

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-float v2, v9, v3

    if-lez v2, :cond_8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/model/layer/TextLayer;->ensureEnoughSubLines(I)Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;

    move-result-object v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->text:Ljava/lang/String;

    iput v9, v2, Lcom/airbnb/lottie/model/layer/TextLayer$TextSubLine;->width:F

    :cond_8
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/TextLayer;->textSubLines:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
