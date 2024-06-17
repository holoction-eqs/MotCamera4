.class public Lcom/motorola/camera/editor/ui/AdjustingMagnifier;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/editor/ui/DocRectangleView$DocAdjustListener;


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBoundary:Landroid/graphics/Rect;

.field public mComposeBitmap:Landroid/graphics/Bitmap;

.field public mComposeCanvas:Landroid/graphics/Canvas;

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mFinalBitmap:Landroid/graphics/Bitmap;

.field public mFinalCanvas:Landroid/graphics/Canvas;

.field public mPaint:Landroid/graphics/Paint;

.field public mPosition:I

.field public mTargetRect:Landroid/graphics/Rect;

.field public mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    return-void
.end method

.method private getDisplayRect()Landroid/graphics/Rect;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    move v4, v1

    move v1, p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v3, 0x2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    move v4, v1

    move v1, p0

    move p0, v0

    move v0, v4

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v1, 0x2

    iget p0, p0, Landroid/graphics/Rect;->right:I

    move v4, v0

    move v0, p0

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    div-int/2addr p0, v1

    move v1, p0

    move p0, v0

    move v0, v3

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p0, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public final onDocAdjusting(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, v3, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    if-nez p1, :cond_6

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v5, v4

    iget v4, p2, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    iget v7, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    invoke-static {v7}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    if-eqz v7, :cond_8

    if-eq v7, v9, :cond_8

    if-eq v7, v8, :cond_7

    if-eq v7, v10, :cond_7

    goto :goto_0

    :cond_7
    iget-object p2, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/lit16 p2, p2, 0x190

    int-to-float p2, p2

    mul-float/2addr p2, v5

    float-to-int p2, p2

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/lit16 v5, v5, -0xc8

    add-int/2addr p2, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v4, v4, 0xc8

    goto/16 :goto_4

    :cond_8
    int-to-float v3, v3

    const/high16 v7, 0x3fc00000    # 1.5f

    div-float/2addr v3, v7

    div-float v7, v3, v5

    iget-object v11, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_d

    if-eq v11, v9, :cond_c

    if-eq v11, v8, :cond_b

    if-eq v11, v10, :cond_a

    const/4 v3, 0x5

    if-eq v11, v3, :cond_9

    const/4 v3, 0x7

    if-eq v11, v3, :cond_9

    :goto_0
    move p2, v2

    move v3, p2

    move v4, v3

    move v5, v4

    goto/16 :goto_4

    :cond_9
    iget-object v3, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit16 v3, v3, 0x190

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/lit16 v5, v5, -0xc8

    sub-int/2addr p2, v4

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit16 v4, v4, 0xc8

    add-int/2addr v3, p2

    move v12, v5

    move v5, p2

    move p2, v4

    goto/16 :goto_3

    :cond_a
    add-int/lit16 v4, v4, -0x258

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    float-to-int v3, v3

    goto :goto_1

    :cond_b
    float-to-int v3, v3

    add-int/lit16 v5, v3, -0x258

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_1
    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    float-to-int v5, v7

    add-int/lit16 v7, v5, -0x258

    sub-int/2addr p2, v7

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v7, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr v3, v4

    add-int/2addr v5, p2

    move v12, v5

    move v5, p2

    move p2, v3

    move v3, v4

    move v4, v12

    goto :goto_4

    :cond_c
    float-to-int v3, v3

    add-int/lit16 v5, v3, -0x258

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_2

    :cond_d
    add-int/lit16 v4, v4, -0x258

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    float-to-int v3, v3

    :goto_2
    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit16 p2, p2, -0x258

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v5, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    float-to-int v7, v7

    sub-int/2addr v5, v7

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int p2, v4, v3

    add-int v3, v5, v7

    move v12, v4

    :goto_3
    move v4, v3

    move v3, v12

    :goto_4
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v5, p2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p2, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v1, v7, p1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_e

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v1, 0x7f0600cd

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_e
    iget-object p2, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_f
    :goto_5
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final releaseResources()V
    .locals 2

    invoke-static {p0}, Lcom/motorola/camera/Util;->recycleImageView(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mComposeBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mFinalBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mPosition:I

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mTouchPoint:Lcom/motorola/camera/editor/ui/DocRectangleView$TouchPoint;

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBoundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setupImage(Landroid/graphics/Bitmap;)V
    .locals 2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
