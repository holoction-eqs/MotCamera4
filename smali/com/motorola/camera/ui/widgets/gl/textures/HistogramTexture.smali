.class public final Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mDataList:[I

.field public final mDensity:F

.field public final mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mHeight:F

.field public mHistogramBitmap:Landroid/graphics/Bitmap;

.field public final mMargin:F

.field public final mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

.field public final mWidth:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float v0, p1, p2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v1, p1

    mul-float/2addr v0, p2

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    const/high16 p2, 0x42200000    # 40.0f

    mul-float/2addr p1, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized hide()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateHistogram()V
    .locals 13

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDensity:F

    const/high16 v2, 0x42700000    # 60.0f

    if-nez v0, :cond_1

    mul-float v0, v1, v2

    float-to-int v0, v0

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v3, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v5, Landroid/graphics/RectF;

    mul-float v6, v1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    array-length v5, v2

    new-array v6, v5, [Landroid/graphics/Point;

    array-length v7, v2

    move v8, v4

    move v9, v8

    :goto_0
    if-ge v8, v7, :cond_3

    aget v10, v2, v8

    if-le v10, v9, :cond_2

    move v9, v10

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHeight:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mMargin:F

    if-nez v9, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    move v8, v4

    :goto_1
    if-ge v8, v5, :cond_5

    add-int/lit8 v10, v5, -0x1

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mWidth:F

    div-float v10, v11, v10

    rem-int v12, v8, v5

    int-to-float v12, v12

    mul-float/2addr v10, v12

    add-float/2addr v10, v7

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-float/2addr v11, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    aget v11, v11, v8

    int-to-float v11, v11

    int-to-float v12, v9

    div-float/2addr v11, v12

    mul-float/2addr v11, v2

    sub-float v11, v2, v11

    add-float/2addr v11, v7

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-float v12, v2, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    new-instance v12, Landroid/graphics/Point;

    float-to-int v10, v10

    float-to-int v11, v11

    invoke-direct {v12, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v6, :cond_7

    aget-object v5, v6, v4

    array-length v8, v6

    add-int/2addr v8, v1

    aget-object v1, v6, v8

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float/2addr v2, v7

    invoke-virtual {v8, v5, v2}, Landroid/graphics/Path;->moveTo(FF)V

    array-length v5, v6

    move v7, v4

    :goto_3
    if-ge v7, v5, :cond_6

    aget-object v9, v6, v7

    iget v10, v9, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    invoke-virtual {v0, v8, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mHistogramBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_8
    :goto_4
    return-void
.end method
