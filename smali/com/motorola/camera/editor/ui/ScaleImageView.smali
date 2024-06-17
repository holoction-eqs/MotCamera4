.class public Lcom/motorola/camera/editor/ui/ScaleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCurrentRotate:F

.field public mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsAfterReview:Z

.field public mIsRotateAnimation:Z

.field public final mLastMovePoint:Landroid/graphics/PointF;

.field public mLastRotate:F

.field public final mOuterMatrix:Landroid/graphics/Matrix;

.field public mPinchMode:I

.field public mRotateDirection:I

.field public mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

.field public mScaleBase:F

.field public final mScaleCenter:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    iput-boolean v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    iput-boolean v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    if-lez p1, :cond_3

    iget p1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    :cond_3
    iget p0, v0, Landroid/graphics/RectF;->left:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method public final canScrollVertically(I)Z
    .locals 4

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    if-lez p1, :cond_3

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    :cond_3
    iget p0, v0, Landroid/graphics/RectF;->top:F

    const/4 p1, 0x0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method public final cancelAllAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    :cond_1
    return-void
.end method

.method public final getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 12

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v5, v6}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v6, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    const/high16 v7, 0x42b40000    # 90.0f

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v8, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v8

    const/high16 v8, 0x43870000    # 270.0f

    if-gez v6, :cond_2

    iget v6, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iget v9, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    add-float/2addr v6, v9

    iput v6, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iput v4, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    iput v4, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    :cond_1
    iget-boolean v6, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    :cond_2
    iget v6, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iget v9, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mCurrentRotate:F

    add-float/2addr v6, v9

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_3

    mul-float/2addr v0, v6

    div-float/2addr v0, v7

    sub-float/2addr v1, v0

    goto :goto_2

    :cond_3
    const/high16 v9, 0x43340000    # 180.0f

    cmpl-float v10, v6, v9

    if-lez v10, :cond_4

    cmpg-float v10, v6, v8

    if-gtz v10, :cond_4

    sub-float v8, v6, v9

    mul-float/2addr v8, v0

    div-float/2addr v8, v7

    sub-float/2addr v1, v8

    goto :goto_2

    :cond_4
    cmpl-float v10, v6, v7

    if-lez v10, :cond_5

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_5

    sub-float/2addr v1, v0

    sub-float v8, v6, v7

    goto :goto_1

    :cond_5
    sub-float/2addr v1, v0

    sub-float v8, v6, v8

    :goto_1
    mul-float/2addr v8, v0

    div-float/2addr v8, v7

    add-float/2addr v1, v8

    :goto_2
    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v4, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    invoke-virtual {v9, v4, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v9, Landroid/graphics/RectF;->right:F

    iget v7, v9, Landroid/graphics/RectF;->left:F

    sub-float v8, v0, v7

    cmpg-float v10, v8, v1

    const/high16 v11, 0x40000000    # 2.0f

    if-gez v10, :cond_6

    goto :goto_3

    :cond_6
    cmpl-float v8, v8, v1

    if-lez v8, :cond_7

    :goto_3
    div-float/2addr v1, v11

    add-float/2addr v0, v7

    div-float/2addr v0, v11

    goto :goto_4

    :cond_7
    cmpl-float v8, v7, v4

    if-lez v8, :cond_8

    neg-float v0, v7

    goto :goto_5

    :cond_8
    cmpg-float v7, v0, v1

    if-gez v7, :cond_9

    :goto_4
    sub-float v0, v1, v0

    goto :goto_5

    :cond_9
    move v0, v4

    :goto_5
    iget v1, v9, Landroid/graphics/RectF;->bottom:F

    iget v7, v9, Landroid/graphics/RectF;->top:F

    sub-float v8, v1, v7

    cmpg-float v8, v8, v6

    if-gez v8, :cond_a

    div-float/2addr v6, v11

    add-float/2addr v1, v7

    div-float/2addr v1, v11

    goto :goto_6

    :cond_a
    cmpl-float v8, v7, v4

    if-lez v8, :cond_b

    neg-float v4, v7

    goto :goto_7

    :cond_b
    cmpg-float v7, v1, v6

    if-gez v7, :cond_c

    :goto_6
    sub-float v4, v6, v1

    :cond_c
    :goto_7
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, v2, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    iget v4, v2, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    if-ge v1, v4, :cond_d

    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_d
    iget-object v0, v2, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    iget v2, v2, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    if-ge v1, v2, :cond_e

    invoke-interface {v0, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_e
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object p1
.end method

.method public final getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_1
    return-object p1
.end method

.method public getMaxScale()F
    .locals 0

    const/high16 p0, 0x40800000    # 4.0f

    return p0
.end method

.method public final isReady()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iget-object v3, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastMovePoint:Landroid/graphics/PointF;

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v8, :cond_9

    const/4 v9, 0x3

    if-ne v2, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v9, 0x6

    if-ne v2, v9, :cond_2

    iget v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v2, v6, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v6, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    if-ne v2, v8, :cond_1b

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    goto :goto_1

    :cond_2
    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    iput v8, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    goto :goto_2

    :cond_4
    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    iput v6, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    :goto_1
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/motorola/camera/editor/ui/ScaleImageView;->saveScaleContext(FFFF)V

    goto/16 :goto_c

    :cond_5
    if-ne v2, v6, :cond_1b

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_6
    iget v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v2, v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v5, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/editor/ui/ScaleImageView;->scrollBy(FF)Z

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_c

    :cond_7
    if-ne v2, v6, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v8, :cond_1b

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sget-object v11, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    sub-float/2addr v2, v9

    sub-float/2addr v6, v10

    mul-float/2addr v2, v2

    mul-float/2addr v6, v6

    add-float/2addr v6, v2

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v6, v9

    div-float/2addr v6, v5

    add-float/2addr v7, v10

    div-float/2addr v7, v5

    invoke-virtual {v4, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    iget v6, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_c

    :cond_8
    mul-float/2addr v6, v2

    sget-object v2, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v6, v7, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-static {v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_c

    :cond_9
    :goto_3
    iget v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-ne v2, v6, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_a

    :cond_a
    sget-object v2, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getCurrentImageMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    invoke-static {v6}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v9

    aget v9, v9, v7

    invoke-static {v3}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v10

    aget v10, v10, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getMaxScale()F

    move-result v13

    cmpl-float v14, v9, v13

    const/high16 v15, 0x3f800000    # 1.0f

    if-lez v14, :cond_b

    div-float/2addr v13, v9

    goto :goto_4

    :cond_b
    move v13, v15

    :goto_4
    mul-float v9, v10, v13

    cmpg-float v9, v9, v15

    if-gez v9, :cond_c

    div-float v13, v15, v10

    :cond_c
    cmpl-float v9, v13, v15

    if-eqz v9, :cond_d

    move v9, v8

    goto :goto_5

    :cond_d
    move v9, v7

    :goto_5
    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Matrix;

    if-eqz v6, :cond_e

    invoke-virtual {v10, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_e
    iget v14, v4, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v13, v13, v14, v15}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    int-to-float v15, v15

    sget-object v8, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v8}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v10, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v14, v7, Landroid/graphics/RectF;->right:F

    iget v15, v7, Landroid/graphics/RectF;->left:F

    sub-float v17, v14, v15

    cmpg-float v17, v17, v11

    if-gez v17, :cond_f

    const/high16 v16, 0x40000000    # 2.0f

    div-float v11, v11, v16

    add-float/2addr v14, v15

    div-float v14, v14, v16

    goto :goto_6

    :cond_f
    cmpl-float v17, v15, v5

    if-lez v17, :cond_10

    neg-float v11, v15

    goto :goto_7

    :cond_10
    cmpg-float v15, v14, v11

    if-gez v15, :cond_11

    :goto_6
    sub-float/2addr v11, v14

    goto :goto_7

    :cond_11
    move v11, v5

    :goto_7
    iget v14, v7, Landroid/graphics/RectF;->bottom:F

    iget v15, v7, Landroid/graphics/RectF;->top:F

    sub-float v17, v14, v15

    cmpg-float v17, v17, v12

    if-gez v17, :cond_12

    const/high16 v16, 0x40000000    # 2.0f

    div-float v12, v12, v16

    add-float/2addr v14, v15

    div-float v14, v14, v16

    goto :goto_8

    :cond_12
    cmpl-float v16, v15, v5

    if-lez v16, :cond_13

    neg-float v12, v15

    goto :goto_9

    :cond_13
    cmpg-float v15, v14, v12

    if-gez v15, :cond_14

    :goto_8
    sub-float/2addr v12, v14

    goto :goto_9

    :cond_14
    move v12, v5

    :goto_9
    cmpl-float v14, v11, v5

    if-nez v14, :cond_15

    cmpl-float v5, v12, v5

    if-eqz v5, :cond_16

    :cond_15
    const/4 v9, 0x1

    :cond_16
    if-eqz v9, :cond_18

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v3, :cond_17

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_17
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v13, v13, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    new-instance v4, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    invoke-direct {v4, v0, v3, v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    iput-object v4, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    invoke-static {v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_18
    iget-object v2, v8, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v2, Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    iget v4, v8, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    if-ge v3, v4, :cond_19

    invoke-interface {v2, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_19
    invoke-static {v10}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    invoke-static {v6}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    const/4 v2, 0x0

    goto :goto_b

    :cond_1a
    :goto_a
    move v2, v7

    :goto_b
    iput v2, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    :cond_1b
    :goto_c
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final saveScaleContext(FFFF)V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->getMatrixScale(Landroid/graphics/Matrix;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float v3, p1, p3

    sub-float v4, p2, p4

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleBase:F

    const/4 v1, 0x2

    new-array v3, v1, [F

    add-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    aput p1, v3, v2

    add-float/2addr p2, p4

    div-float/2addr p2, p3

    const/4 p1, 0x1

    aput p2, v3, p1

    new-array p2, v1, [F

    if-eqz v0, :cond_0

    sget-object p3, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mMatrixPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {p3}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3, p2, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    invoke-static {p3}, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->matrixGiven(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleCenter:Landroid/graphics/PointF;

    aget p3, p2, v2

    aget p1, p2, p1

    invoke-virtual {p0, p3, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final scrollBy(FF)Z
    .locals 9

    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/motorola/camera/editor/ui/ScaleImageView$MathUtils;->mRectFPool:Lcom/motorola/camera/editor/ui/ScaleImageView$RectFPool;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/editor/ui/ScaleImageView;->getImageBound(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    sub-float v7, v5, v6

    cmpg-float v7, v7, v3

    const/4 v8, 0x0

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    add-float v7, v6, p1

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    cmpg-float p1, v6, v8

    if-gez p1, :cond_3

    neg-float p1, v6

    goto :goto_1

    :cond_2
    add-float v6, v5, p1

    cmpg-float v6, v6, v3

    if-gez v6, :cond_4

    cmpl-float p1, v5, v3

    if-lez p1, :cond_3

    sub-float p1, v3, v5

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v8

    :cond_4
    :goto_1
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float v6, v3, v5

    cmpg-float v6, v6, v4

    if-gez v6, :cond_5

    goto :goto_2

    :cond_5
    add-float v6, v5, p2

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    cmpg-float p2, v5, v8

    if-gez p2, :cond_7

    neg-float p2, v5

    goto :goto_3

    :cond_6
    add-float v5, v3, p2

    cmpg-float v5, v5, v4

    if-gez v5, :cond_8

    cmpl-float p2, v3, v4

    if-lez p2, :cond_7

    sub-float p2, v4, v3

    goto :goto_3

    :cond_7
    :goto_2
    move p2, v8

    :cond_8
    :goto_3
    iget-object v3, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Ljava/util/AbstractList;

    check-cast v3, Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    iget v0, v0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    if-ge v4, v0, :cond_9

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mOuterMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    cmpl-float p0, p1, v8

    if-nez p0, :cond_a

    cmpl-float p0, p2, v8

    if-eqz p0, :cond_b

    :cond_a
    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public setLastRotate(I)V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x42b40000    # 90.0f

    :goto_0
    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_1

    :cond_0
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    iput p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    iput v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    return-void
.end method
