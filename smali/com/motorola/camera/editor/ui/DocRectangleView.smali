.class public Lcom/motorola/camera/editor/ui/DocRectangleView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field public mActivePoint:Landroid/graphics/PointF;

.field public mAdjustId:I

.field public mAdjusted:Z

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mDownHandled:Z

.field public mInvertMatrix:Landroid/graphics/Matrix;

.field public mLastEventPoint:Landroid/graphics/PointF;

.field public mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

.field public mMidPoints:[F

.field public mOrientation:F

.field public mPoints:[F

.field public mPostBitmap:Landroid/graphics/Bitmap;

.field public mSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mDownHandled:Z

    return-void
.end method

.method private getTargetArea()Landroid/graphics/Rect;
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    move v3, v2

    move v4, v3

    move v2, v1

    move v1, v0

    :goto_0
    const/4 v5, 0x4

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    mul-int/lit8 v6, v2, 0x2

    aget v7, v5, v6

    cmpl-float v8, v3, v7

    if-lez v8, :cond_0

    move v3, v7

    :cond_0
    cmpg-float v8, v4, v7

    if-gez v8, :cond_1

    move v4, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    cmpl-float v6, v0, v5

    if-lez v6, :cond_2

    move v0, v5

    :cond_2
    cmpg-float v6, v1, v5

    if-gez v6, :cond_3

    move v1, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/graphics/Rect;

    float-to-int v2, v3

    float-to-int v0, v0

    float-to-int v3, v4

    float-to-int v1, v1

    invoke-direct {p0, v2, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method


# virtual methods
.method public final adjustPx(F)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    invoke-static {v1, p1}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public getAdjustedPoints()[F
    .locals 3

    const/16 v0, 0x8

    new-array v1, v0, [F

    iget-object v2, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1
.end method

.method public final onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    mul-int/2addr p2, p1

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/2addr p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    const/4 v4, 0x4

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v6, v1

    :goto_0
    const/high16 v7, 0x42c80000    # 100.0f

    if-ge v6, v4, :cond_3

    iget-object v8, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    mul-int/lit8 v9, v6, 0x2

    aget v10, v8, v9

    mul-float/2addr v10, v0

    add-int/2addr v9, v3

    aget v8, v8, v9

    mul-float/2addr v8, v5

    new-instance v9, Landroid/graphics/RectF;

    sub-float v11, v10, v7

    sub-float v12, v8, v7

    add-float/2addr v10, v7

    add-float/2addr v8, v7

    invoke-direct {v9, v11, v12, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v9, v7, v8}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_5

    iget-object v8, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    mul-int/lit8 v9, v6, 0x2

    aget v10, v8, v9

    mul-float/2addr v10, v0

    add-int/2addr v9, v3

    aget v8, v8, v9

    mul-float/2addr v8, v5

    new-instance v9, Landroid/graphics/RectF;

    sub-float v11, v10, v7

    sub-float v12, v8, v7

    add-float/2addr v10, v7

    add-float/2addr v8, v7

    invoke-direct {v9, v11, v12, v10, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {v9, v8, v10}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/2addr v6, v4

    :goto_2
    iput v6, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    move v0, v3

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    move v0, v1

    :goto_4
    if-eqz v0, :cond_14

    iput-boolean v3, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjusted:Z

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    sget-object v5, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TP_MAP:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    invoke-direct {p0}, Lcom/motorola/camera/editor/ui/DocRectangleView;->getTargetArea()Landroid/graphics/Rect;

    move-result-object v6

    check-cast v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    iput-object v0, v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    iput-object v6, v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v7, :cond_a

    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RT:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v7, :cond_a

    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->TM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v7, :cond_6

    goto :goto_7

    :cond_6
    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v7, :cond_9

    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RB:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-eq v0, v7, :cond_9

    sget-object v7, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->BM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v7, :cond_7

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->LM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v2, :cond_8

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;->RM:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    if-ne v0, v2, :cond_d

    const/4 v4, 0x3

    :goto_5
    iput v4, v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    goto :goto_9

    :cond_9
    :goto_6
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget-object v4, v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v6

    cmpg-float v0, v0, v4

    if-gez v0, :cond_b

    goto :goto_8

    :cond_a
    :goto_7
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v4, v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_c

    :cond_b
    iput v3, v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    goto :goto_9

    :cond_c
    :goto_8
    iput v2, v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    :cond_d
    :goto_9
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateActivePoint(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    :cond_e
    iput-boolean v3, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mDownHandled:Z

    goto/16 :goto_a

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_10

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_10

    return v1

    :cond_10
    iget-boolean v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mDownHandled:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateActivePoint(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updatePoints([F)V

    goto :goto_a

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_14

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_12

    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_12

    return v1

    :cond_12
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    if-eqz p1, :cond_13

    iget-boolean v0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mDownHandled:Z

    if-eqz v0, :cond_13

    check-cast p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object v2, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    iput-object v0, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    iput-object v0, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    iput v1, p1, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    :cond_13
    iput-boolean v1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mDownHandled:Z

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    invoke-virtual {p0, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    :cond_14
    :goto_a
    return v3

    :cond_15
    :goto_b
    const-string p0, "DocRectangleView"

    const-string p1, "View not fully initialized, ignoring event"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setDocAdjustListener(Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    return-void
.end method

.method public final updateActivePoint(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v3

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float v7, v1, v7

    div-float/2addr v7, v4

    iget v4, v6, Landroid/graphics/PointF;->y:F

    sub-float v4, v3, v4

    div-float/2addr v4, v5

    iget v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-ge v5, v9, :cond_0

    mul-int/2addr v5, v8

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v5, v7, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v6

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    iget v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mAdjustId:I

    mul-int/lit8 v7, v5, 0x2

    aget v7, v4, v7

    mul-int/2addr v5, v8

    add-int/2addr v5, v6

    aget v4, v4, v5

    invoke-virtual {v2, v7, v4}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_9

    :cond_0
    iget v10, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mOrientation:F

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-eqz v12, :cond_2

    const/high16 v12, 0x43340000    # 180.0f

    cmpl-float v10, v10, v12

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    move v10, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v6

    :goto_1
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x3

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/4 v11, 0x5

    if-ne v5, v9, :cond_4

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v2

    aget v8, v5, v8

    sub-float v16, v16, v8

    aget v8, v5, v6

    aget v13, v5, v13

    sub-float/2addr v8, v13

    div-float v16, v16, v8

    aget v8, v5, v15

    aget v9, v5, v9

    sub-float/2addr v8, v9

    aget v9, v5, v14

    aget v5, v5, v11

    sub-float/2addr v9, v5

    div-float/2addr v8, v9

    if-eqz v10, :cond_3

    div-float v4, v7, v16

    div-float v5, v7, v8

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v0, v2, v7, v8}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v0, v6, v4, v8}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0, v15, v7, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v14, v5, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_2

    :cond_3
    mul-float v5, v4, v16

    mul-float/2addr v8, v4

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0, v2, v5, v7}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v6, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v15, v8, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v14, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    :goto_2
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v2, v4, v2

    aget v5, v4, v15

    add-float/2addr v2, v5

    div-float v11, v2, v12

    aget v2, v4, v6

    aget v4, v4, v14

    :goto_3
    add-float/2addr v2, v4

    div-float/2addr v2, v12

    goto/16 :goto_8

    :cond_4
    if-ne v5, v11, :cond_6

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v2

    aget v15, v5, v15

    sub-float v16, v16, v15

    aget v15, v5, v6

    aget v14, v5, v14

    sub-float/2addr v15, v14

    div-float v16, v16, v15

    aget v14, v5, v8

    aget v9, v5, v9

    sub-float/2addr v14, v9

    aget v9, v5, v13

    aget v5, v5, v11

    sub-float/2addr v9, v5

    div-float/2addr v14, v9

    if-eqz v10, :cond_5

    mul-float v5, v4, v16

    mul-float/2addr v14, v4

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v0, v2, v5, v7}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v6, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v8, v14, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v13, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_4

    :cond_5
    div-float v4, v7, v16

    div-float v5, v7, v14

    iget-object v9, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v0, v2, v7, v9}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v9, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v0, v6, v4, v9}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0, v8, v7, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v13, v5, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    :goto_4
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v2, v4, v2

    aget v5, v4, v8

    add-float/2addr v2, v5

    div-float v11, v2, v12

    aget v2, v4, v6

    aget v4, v4, v13

    goto :goto_3

    :cond_6
    if-ne v5, v15, :cond_8

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v8

    aget v2, v5, v2

    sub-float v16, v16, v2

    aget v2, v5, v13

    aget v6, v5, v6

    sub-float/2addr v2, v6

    div-float v16, v16, v2

    aget v2, v5, v9

    aget v6, v5, v15

    sub-float/2addr v2, v6

    aget v6, v5, v11

    aget v5, v5, v14

    sub-float/2addr v6, v5

    div-float/2addr v2, v6

    if-eqz v10, :cond_7

    div-float v4, v7, v16

    div-float v2, v7, v2

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v8, v7, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v13, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0, v9, v7, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v0, v11, v2, v4}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_5

    :cond_7
    mul-float v5, v4, v16

    mul-float/2addr v2, v4

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0, v8, v5, v6}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v13, v4, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v9, v2, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v11, v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    :goto_5
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v4, v2, v8

    aget v5, v2, v9

    add-float/2addr v4, v5

    div-float/2addr v4, v12

    aget v5, v2, v13

    aget v2, v2, v11

    :goto_6
    add-float/2addr v5, v2

    div-float v11, v5, v12

    move v2, v11

    move v11, v4

    goto :goto_8

    :cond_8
    if-ne v5, v14, :cond_a

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v16, v5, v9

    aget v8, v5, v8

    sub-float v16, v16, v8

    aget v8, v5, v11

    aget v13, v5, v13

    sub-float/2addr v8, v13

    div-float v16, v16, v8

    aget v8, v5, v15

    aget v2, v5, v2

    sub-float/2addr v8, v2

    aget v2, v5, v14

    aget v5, v5, v6

    sub-float/2addr v2, v5

    div-float/2addr v8, v2

    if-eqz v10, :cond_9

    mul-float v2, v4, v16

    mul-float/2addr v8, v4

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v9, v2, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v11, v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v15, v8, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    goto :goto_7

    :cond_9
    div-float v2, v7, v16

    div-float v4, v7, v8

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v9, v7, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v11, v2, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v15, v7, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    :goto_7
    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v14, v4, v2}, Lcom/motorola/camera/editor/ui/DocRectangleView;->updateValue(IFI)V

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v4, v2, v9

    aget v5, v2, v15

    add-float/2addr v4, v5

    div-float/2addr v4, v12

    aget v5, v2, v11

    aget v2, v2, v14

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_8
    iget-object v4, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v11, v2}, Landroid/graphics/PointF;->set(FF)V

    :goto_9
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mLastEventPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public final updatePoints([F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    iget-object v2, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x6

    aget v6, v1, v5

    add-float/2addr v4, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    aput v4, v2, v3

    const/4 v4, 0x1

    aget v8, v1, v4

    const/4 v9, 0x7

    aget v10, v1, v9

    add-float/2addr v8, v10

    div-float/2addr v8, v7

    aput v8, v2, v4

    aget v8, v1, v3

    const/4 v11, 0x2

    aget v12, v1, v11

    add-float/2addr v8, v12

    div-float/2addr v8, v7

    aput v8, v2, v11

    aget v8, v1, v4

    const/4 v12, 0x3

    aget v13, v1, v12

    add-float/2addr v8, v13

    div-float/2addr v8, v7

    aput v8, v2, v12

    aget v8, v1, v11

    const/4 v13, 0x4

    aget v14, v1, v13

    add-float/2addr v8, v14

    div-float/2addr v8, v7

    aput v8, v2, v13

    aget v8, v1, v12

    const/4 v14, 0x5

    aget v15, v1, v14

    add-float/2addr v8, v15

    div-float/2addr v8, v7

    aput v8, v2, v14

    aget v8, v1, v13

    add-float/2addr v8, v6

    div-float/2addr v8, v7

    aput v8, v2, v5

    aget v6, v1, v14

    add-float/2addr v6, v10

    div-float/2addr v6, v7

    aput v6, v2, v9

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v6, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0600af

    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    move-result v6

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v10, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v10, 0x7f060379

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v8}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    aget v15, v1, v3

    aget v10, v1, v4

    invoke-virtual {v8, v15, v10}, Landroid/graphics/Path;->moveTo(FF)V

    aget v10, v1, v11

    aget v15, v1, v12

    invoke-virtual {v8, v10, v15}, Landroid/graphics/Path;->lineTo(FF)V

    aget v10, v1, v13

    aget v15, v1, v14

    invoke-virtual {v8, v10, v15}, Landroid/graphics/Path;->lineTo(FF)V

    aget v10, v1, v5

    aget v15, v1, v9

    invoke-virtual {v8, v10, v15}, Landroid/graphics/Path;->lineTo(FF)V

    aget v10, v1, v3

    aget v15, v1, v4

    invoke-virtual {v8, v10, v15}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v2, v8, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v8, v15, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    :cond_0
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v15, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v3, v15}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v15, Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v9, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct {v15, v3, v3, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v7, v3, v3, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v5, v15, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mListener:Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPostBitmap:Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mActivePoint:Landroid/graphics/PointF;

    check-cast v5, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {v5, v7, v8}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->onDocAdjusting(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)V

    :cond_1
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v5

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    aget v8, v7, v3

    aget v7, v7, v4

    int-to-float v5, v5

    invoke-virtual {v2, v8, v7, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    aget v8, v7, v11

    aget v7, v7, v12

    invoke-virtual {v2, v8, v7, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    aget v8, v7, v13

    aget v7, v7, v14

    invoke-virtual {v2, v8, v7, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mMidPoints:[F

    const/4 v8, 0x6

    aget v9, v7, v8

    const/4 v8, 0x7

    aget v7, v7, v8

    invoke-virtual {v2, v9, v7, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0600b2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    aget v8, v1, v3

    aget v9, v1, v4

    int-to-float v7, v7

    invoke-virtual {v2, v8, v9, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v8, v1, v11

    aget v9, v1, v12

    invoke-virtual {v2, v8, v9, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v8, v1, v13

    aget v9, v1, v14

    invoke-virtual {v2, v8, v9, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v8, 0x6

    aget v9, v1, v8

    const/4 v8, 0x7

    aget v15, v1, v8

    invoke-virtual {v2, v9, v15, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v0, v7}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f060379

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    aget v8, v1, v3

    aget v9, v1, v4

    int-to-float v7, v7

    invoke-virtual {v2, v8, v9, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v8, v1, v11

    aget v9, v1, v12

    invoke-virtual {v2, v8, v9, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v8, v1, v13

    aget v9, v1, v14

    invoke-virtual {v2, v8, v9, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v8, 0x6

    aget v9, v1, v8

    const/4 v8, 0x7

    aget v15, v1, v8

    invoke-virtual {v2, v9, v15, v7, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/editor/ui/DocRectangleView;->adjustPx(F)I

    move-result v5

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    aget v3, v1, v3

    aget v4, v1, v4

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v3, v1, v11

    aget v4, v1, v12

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    aget v3, v1, v13

    aget v4, v1, v14

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v3, 0x6

    aget v3, v1, v3

    const/4 v4, 0x7

    aget v1, v1, v4

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final updateValue(IFI)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/DocRectangleView;->mPoints:[F

    aget v0, p0, p1

    add-float/2addr v0, p2

    aput v0, p0, p1

    int-to-float p2, p3

    cmpl-float p3, v0, p2

    if-lez p3, :cond_0

    aput p2, p0, p1

    :cond_0
    aget p2, p0, p1

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    aput p3, p0, p1

    :cond_1
    return-void
.end method
