.class public final Lcom/airbnb/lottie/animation/content/GradientStrokeContent;
.super Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.source "SourceFile"


# instance fields
.field public final boundsRect:Landroid/graphics/RectF;

.field public final cacheSteps:I

.field public final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

.field public final endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final hidden:Z

.field public final linearGradientCache:Landroidx/collection/LongSparseArray;

.field public final name:Ljava/lang/String;

.field public final radialGradientCache:Landroidx/collection/LongSparseArray;

.field public final startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/GradientStroke;)V
    .locals 13

    move-object v10, p0

    move-object v11, p2

    move-object/from16 v12, p3

    iget v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->capType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    move-object v3, v0

    iget v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->joinType:I

    if-eqz v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_1

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_1
    move-object v4, v0

    :goto_2
    iget v5, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->miterLimit:F

    iget-object v6, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->opacity:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iget-object v7, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->width:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    iget-object v8, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->lineDashPattern:Ljava/util/List;

    iget-object v9, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->dashOffset:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/google/android/gms/internal/mlkit_common/zzpx;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    iget-object v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->name:Ljava/lang/String;

    iput-object v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    iget v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientType:I

    iput v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:I

    iget-boolean v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->hidden:Z

    iput-boolean v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->hidden:Z

    move-object v0, p1

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v0

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    iget-object v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->gradientColor:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->startPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v0, v12, Lcom/airbnb/lottie/model/content/GradientStroke;->endPoint:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzpx;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v0

    iput-object v0, v10, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    return-void

    :cond_5
    throw v1

    :cond_6
    throw v1
.end method


# virtual methods
.method public final addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->GRADIENT_COLOR:[Ljava/lang/Integer;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->removeAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-direct {v1, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;-><init>(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final applyDynamicColorsIfNeeded([I)[I
    .locals 3

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorCallbackAnimation:Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/animation/keyframe/ValueCallbackKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p0

    new-array p1, p1, [I

    :goto_1
    array-length v0, p0

    if-ge v2, v0, :cond_1

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->hidden:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->boundsRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget v2, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->type:I

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v6, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    const/4 v7, 0x0

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v2

    int-to-long v2, v2

    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->linearGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v2, v3, v7}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/LinearGradient;

    if-eqz v7, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object v7, v4, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v14

    iget-object v15, v4, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    new-instance v7, Landroid/graphics/LinearGradient;

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v2, v3, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->getGradientHash()I

    move-result v2

    int-to-long v2, v2

    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->radialGradientCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v2, v3, v7}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RadialGradient;

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/GradientColor;

    iget-object v7, v4, Lcom/airbnb/lottie/model/content/GradientColor;->colors:[I

    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->applyDynamicColorsIfNeeded([I)[I

    move-result-object v13

    iget-object v14, v4, Lcom/airbnb/lottie/model/content/GradientColor;->positions:[F

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v10

    float-to-double v6, v4

    sub-float/2addr v5, v11

    float-to-double v4, v5

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v12, v4

    new-instance v7, Landroid/graphics/RadialGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v7

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v2, v3, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {v7, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Lcom/airbnb/lottie/animation/LPaint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final getGradientHash()I
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->startPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget v0, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    iget v1, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->cacheSteps:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->endPointAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget v2, v2, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget p0, p0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    int-to-float v1, v1

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-eqz v0, :cond_0

    const/16 v1, 0x20f

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    :goto_0
    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    mul-int/2addr v1, v2

    :cond_1
    if-eqz p0, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    mul-int/2addr v1, p0

    :cond_2
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/GradientStrokeContent;->name:Ljava/lang/String;

    return-object p0
.end method
