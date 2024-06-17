.class public final Lcom/airbnb/lottie/animation/content/ShapeContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field public final hidden:Z

.field public isPathValid:Z

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final path:Landroid/graphics/Path;

.field public final shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

.field public final trimPaths:Lcom/google/android/gms/internal/mlkit_common/zzpi;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapePath;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzpi;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/ShapePath;->hidden:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iget-object p3, p3, Lcom/airbnb/lottie/model/content/ShapePath;->shapePath:Lcom/google/android/gms/internal/mlkit_common/zzpx;

    iget-object p3, p3, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-direct {p1, p3}, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public final getPath()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->path:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->hidden:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzpi;->apply(Landroid/graphics/Path;)V

    iput-boolean v2, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    return-object v1
.end method

.method public final onValueChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->isPathValid:Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    iget v3, v2, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->trimPaths:Lcom/google/android/gms/internal/mlkit_common/zzpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_common/zzpi;->zza:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/ShapeContent;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;

    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/List;

    return-void
.end method
