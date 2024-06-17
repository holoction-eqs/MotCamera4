.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\rB\u001b\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "",
        "color",
        "",
        "setSwatchColor",
        "getSwatchColor",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Companion",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final hideRadius:Landroid/animation/PropertyValuesHolder;

.field public static final showRadius:Landroid/animation/PropertyValuesHolder;


# instance fields
.field public final colorRingPaint:Landroid/graphics/Paint;

.field public state:I

.field public strokeWidth:F

.field public final swatchBgPaint:Landroid/graphics/Paint;

.field public final swatchPaint:Landroid/graphics/Paint;

.field public waitColorUpdate:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "radius"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->showRadius:Landroid/animation/PropertyValuesHolder;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->hideRadius:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_0
    .array-data 4
        0x0
        0x42100000    # 36.0f
    .end array-data

    :array_1
    .array-data 4
        0x42100000    # 36.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->swatchBgPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->swatchPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->colorRingPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42100000    # 36.0f

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->strokeWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603ca

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x106000d

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final getSwatchColor()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/16 v4, 0x30

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v1, v0

    int-to-float v4, v4

    mul-float/2addr v4, v0

    mul-float/2addr v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    const/16 v5, 0x10

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float v6, v4, v5

    add-float/2addr v5, v1

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v4, v1, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->swatchBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->colorRingPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->strokeWidth:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    int-to-float v4, v4

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->strokeWidth:F

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    mul-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v0, v5, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setSwatchColor(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->swatchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->colorRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->waitColorUpdate:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->waitColorUpdate:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->state:I

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->showRadius:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, p1

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final startHideRingAnimation()V
    .locals 5

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;->hideRadius:Landroid/animation/PropertyValuesHolder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroidx/transition/Transition$3;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Landroidx/transition/Transition$3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
