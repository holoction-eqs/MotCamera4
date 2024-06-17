.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final centerDotRadius:F

.field public changedDuringTouch:Z

.field public circleRadius:I

.field public currentLevel:I

.field public degRad:D

.field public isMultiLevel:Z

.field public final listeners:Ljava/util/ArrayList;

.field public originalDeg:F

.field public final paint:Landroid/graphics/Paint;

.field public final rotationAnimator:Landroid/animation/ValueAnimator;

.field public final selectorBox:Landroid/graphics/RectF;

.field public final selectorRadius:I

.field public final selectorStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v0, 0x7f040343

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    sget-object v3, Lcom/google/android/material/R$styleable;->ClockHandView:[I

    const v4, 0x7f1304f3

    invoke-virtual {p1, p2, v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x7f040375

    const/16 v3, 0xc8

    invoke-static {p1, v0, v3}, Lkotlin/TuplesKt;->resolveThemeDuration(Landroid/content/Context;II)I

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    const v3, 0x7f040385

    invoke-static {p1, v3, v0}, Lkotlin/TuplesKt;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    const/4 v3, 0x2

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070328

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    const v5, 0x7f070326

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat$Api16Impl;->setImportantForAccessibility(Landroid/view/View;I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    if-ne v3, v1, :cond_0

    int-to-float v1, v4

    const v3, 0x3f28f5c3    # 0.66f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_0
    int-to-float v1, v2

    int-to-float v3, v4

    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    int-to-float v11, v0

    iget-wide v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v3, v6

    add-float/2addr v3, v11

    iget-object v12, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    int-to-float v7, v6

    invoke-virtual {p1, v5, v3, v7, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-wide v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    sub-int/2addr v4, v6

    int-to-float v3, v4

    float-to-double v3, v3

    mul-double/2addr v9, v3

    double-to-int v5, v9

    add-int/2addr v2, v5

    int-to-float v2, v2

    mul-double/2addr v3, v7

    double-to-int v3, v3

    add-int/2addr v0, v3

    int-to-float v9, v0

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v5, p1

    move v6, v1

    move v7, v11

    move v8, v2

    move-object v10, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p0, p0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    invoke-virtual {p1, v1, v11, p0, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    move v0, v4

    move v5, v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    iget-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v2

    int-to-float v5, v5

    int-to-float v6, v6

    sub-float v5, v1, v5

    sub-float v6, p1, v6

    float-to-double v7, v5

    float-to-double v5, v6

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    int-to-float v6, v6

    const v7, 0x3f28f5c3    # 0.66f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0xc

    invoke-static {v7, v8}, Lkotlin/LazyKt__LazyKt;->dpToPx(Landroid/content/Context;I)F

    move-result v7

    int-to-float v6, v6

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    move v5, v3

    move v0, v4

    :goto_1
    iget-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v2, v7

    sub-float/2addr v1, v2

    float-to-double v1, v1

    int-to-float v7, v8

    sub-float/2addr p1, v7

    float-to-double v7, p1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/lit8 p1, p1, 0x5a

    if-gez p1, :cond_4

    add-int/lit16 p1, p1, 0x168

    :cond_4
    iget v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    :goto_3
    move v4, v3

    :cond_8
    or-int p1, v6, v4

    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    return v3
.end method

.method public final setHandRotation(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotationInternal(F)V

    return-void
.end method

.method public final setHandRotationInternal(F)V
    .locals 6

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    iget v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    if-ne v3, v1, :cond_0

    int-to-float v1, v4

    const v3, 0x3f28f5c3    # 0.66f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_0
    int-to-float v1, v2

    int-to-float v2, v4

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    int-to-float v0, v0

    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    int-to-float v0, v0

    sub-float v1, v3, v0

    sub-float v4, v2, v0

    add-float/2addr v3, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    check-cast v1, Lcom/google/android/material/timepicker/ClockFaceView;

    iget v2, v1, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iput p1, v1, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
