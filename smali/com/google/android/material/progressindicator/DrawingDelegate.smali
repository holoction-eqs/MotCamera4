.class public abstract Lcom/google/android/material/progressindicator/DrawingDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

.field public final spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-void
.end method


# virtual methods
.method public abstract fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
.end method

.method public abstract fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public final validateSpecAndAdjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    mul-float v5, v3, v0

    mul-float v6, v3, v1

    iget v7, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr v6, p2

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float p2, v3

    invoke-virtual {p1, p2, p2, v3, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget p1, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    iget p1, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    int-to-float v0, p1

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    iget v0, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    iget v0, v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    div-float/2addr p1, v4

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v0

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    iget p1, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq p1, v3, :cond_6

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, p2

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v0

    :goto_4
    if-eqz p1, :cond_7

    iget p1, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne p1, p2, :cond_7

    :cond_6
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    sub-float/2addr v1, p3

    iget p2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    int-to-float p2, p2

    mul-float/2addr v1, p2

    div-float/2addr v1, v4

    add-float/2addr v1, p1

    iput v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    move p1, p2

    goto :goto_6

    :cond_9
    :goto_5
    move p1, v0

    :goto_6
    if-eqz p1, :cond_a

    iget p1, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq p1, p2, :cond_d

    :cond_a
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    iget-object p1, p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    move p2, v0

    :cond_c
    if-eqz p2, :cond_e

    iget p1, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne p1, v3, :cond_e

    :cond_d
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    sub-float/2addr v1, p3

    iget p2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    int-to-float p2, p2

    mul-float/2addr v1, p2

    div-float/2addr v1, v4

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    :cond_e
    :goto_7
    return-void
.end method
