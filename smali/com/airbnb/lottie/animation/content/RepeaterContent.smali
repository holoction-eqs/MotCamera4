.class public final Lcom/airbnb/lottie/animation/content/RepeaterContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/content/GreedyContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

.field public final copies:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final hidden:Z

.field public final layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final matrix:Landroid/graphics/Matrix;

.field public final name:Ljava/lang/String;

.field public final offset:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final path:Landroid/graphics/Path;

.field public final transform:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/Repeater;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object p1, p3, Lcom/airbnb/lottie/model/content/Repeater;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->name:Ljava/lang/String;

    iget-boolean p1, p3, Lcom/airbnb/lottie/model/content/Repeater;->hidden:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->hidden:Z

    iget-object p1, p3, Lcom/airbnb/lottie/model/content/Repeater;->copies:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p3, Lcom/airbnb/lottie/model/content/Repeater;->offset:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p3, Lcom/airbnb/lottie/model/content/Repeater;->transform:Ljava/lang/Object;

    check-cast p1, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {p3, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {p3, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    invoke-virtual {p3, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final absorbContent(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/animation/content/ContentGroup;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->layer:Lcom/airbnb/lottie/model/layer/BaseLayer;

    const-string v4, "Repeater"

    iget-boolean v5, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->hidden:Z

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    return-void
.end method

.method public final addValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl;->applyValueCallback(Landroidx/core/view/MenuHostHelper;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->REPEATER_COPIES:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->REPEATER_OFFSET:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Landroidx/core/view/MenuHostHelper;)V

    :cond_2
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 10

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Landroidx/work/impl/model/WorkSpecDao_Impl;

    iget-object v3, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfPruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget-object v5, v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->__preparedStmtOfIncrementGeneration:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v4

    float-to-int v4, v0

    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    int-to-float v7, v4

    add-float v8, v7, v1

    invoke-virtual {v2, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v8, p3

    div-float/2addr v7, v0

    sget-object v9, Lcom/airbnb/lottie/utils/MiscUtils;->pathFromDataCurrentPoint:Landroid/graphics/PointF;

    sub-float v9, v5, v3

    mul-float/2addr v9, v7

    add-float/2addr v9, v3

    mul-float/2addr v9, v8

    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    float-to-int v8, v9

    invoke-virtual {v7, p1, v6, v8}, Lcom/airbnb/lottie/animation/content/ContentGroup;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->copies:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->offset:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v2, v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->matrix:Landroid/graphics/Matrix;

    int-to-float v5, v2

    add-float/2addr v5, v3

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->transform:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-virtual {v6, v5}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getMatrixForRepeater(F)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final onValueChanged()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 3

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    iget-object v1, v1, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/KeyPathElementContent;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/airbnb/lottie/animation/content/KeyPathElementContent;

    invoke-static {p1, p2, p3, p4, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/RepeaterContent;->contentGroup:Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/content/ContentGroup;->setContents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
