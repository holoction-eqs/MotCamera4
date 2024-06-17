.class public Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NvAndroidGlyphMaskGenerator"

.field private static final m_verbose:Z = false


# instance fields
.field private m_hander:Landroid/os/Handler;

.field private m_handlerThread:Landroid/os/HandlerThread;

.field private m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

.field private m_surface:Landroid/view/Surface;

.field private m_surfaceHeight:I

.field private m_surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_surfaceWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

    :try_start_0
    invoke-virtual {p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->canUseHardwareRenderer()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Glyph Mask Generator Watcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hander:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance p1, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator$1;

    invoke-direct {p1, p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator$1;-><init>(Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;)V

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hander:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private calcGlyphSizeInCanvasPixel(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;Landroid/graphics/Canvas;)Landroid/graphics/PointF;
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/PointF;

    iget-object p2, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget-object p1, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_0
    const/4 p2, 0x4

    new-array p2, p2, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p2, v0

    const/4 v2, 0x1

    aput v1, p2, v2

    iget-object v1, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v3, 0x2

    aput v1, p2, v3

    iget-object p1, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->bounding:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 v1, 0x3

    aput p1, p2, v1

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance p0, Landroid/graphics/PointF;

    aget p1, p2, v3

    aget v0, p2, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    aget v0, p2, v1

    aget p2, p2, v2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private prepareSurface(II)Landroid/view/Surface;
    .locals 4

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    if-gt p1, v3, :cond_1

    iget v3, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    if-le p2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    iput v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    :cond_3
    add-int/lit16 p1, p1, 0x80

    sub-int/2addr p1, v2

    div-int/lit16 p1, p1, 0x80

    mul-int/lit16 p1, p1, 0x80

    iget v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit16 p2, p2, 0x80

    sub-int/2addr p2, v2

    div-int/lit16 p2, p2, 0x80

    mul-int/lit16 p2, p2, 0x80

    iget v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    iput p1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput p2, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v3
.end method

.method private selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->paint:Landroid/graphics/Paint;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    return-object p0

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    return-object p1
.end method

.method private setupHardwareCanvasForGlyphPath(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;FFFFII)Landroid/graphics/Path;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p4

    :cond_0
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    neg-float p3, p6

    neg-float v0, p8

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float p3, p10

    sub-float/2addr p7, p6

    div-float/2addr p3, p7

    int-to-float p6, p11

    sub-float/2addr p9, p8

    div-float/2addr p6, p9

    invoke-virtual {p2, p3, p6}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-direct {p0, p1}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Z

    invoke-virtual {p5, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-object p4
.end method

.method private shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->mayHaveContextualForm:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private waitHardwareRenderingFinished()Z
    .locals 6

    const-string v0, "NvAndroidGlyphMaskGenerator"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hardwareRenderingSem:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "Hardware rendering wait timed out!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public canUseHardwareRenderer()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public drawColorGlyph(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Canvas;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1, p5, p2}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;

    move-result-object v7

    if-nez v7, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getText()Landroid/text/SpannableString;

    move-result-object v2

    iget v3, p2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget v4, p2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iget-object p1, p2, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    move-object v1, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method

.method public drawDoubleSidedGlyphOutline(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FLandroid/graphics/Canvas;ZZ)Z
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    const/4 v10, 0x0

    if-nez v2, :cond_0

    return v10

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return v10

    :cond_1
    move-object v4, p1

    move/from16 v5, p7

    invoke-direct {p0, p1, v5, v3}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;

    move-result-object v9

    if-nez v9, :cond_2

    return v10

    :cond_2
    move/from16 v5, p8

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v5, p5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/16 v5, 0xff

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, v3}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    return v10

    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return v11

    :cond_4
    invoke-virtual {v2, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getText()Landroid/text/SpannableString;

    move-result-object v1

    iget v4, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget v5, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iget v6, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineStart:I

    iget v7, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineEnd:I

    iget-object v0, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v12, v0, Landroid/graphics/PointF;->y:F

    iget-boolean v13, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->isRtl:Z

    move-object/from16 v0, p6

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v12

    move v8, v13

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v11

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NvAndroidGlyphMaskGenerator"

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v10
.end method

.method public drawDoubleSidedGlyphOutlineHardware(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FZFFFFII)Z
    .locals 17

    move/from16 v0, p11

    move/from16 v13, p12

    invoke-virtual/range {p0 .. p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->canUseHardwareRenderer()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    move-object/from16 v14, p0

    :try_start_0
    invoke-direct {v14, v0, v13}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->prepareSurface(II)Landroid/view/Surface;

    move-result-object v15

    if-nez v15, :cond_1

    return v2

    :cond_1
    invoke-virtual {v15}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v12

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v0, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v12

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v16, v12

    move/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->setupHardwareCanvasForGlyphPath(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;FFFFII)Landroid/graphics/Path;

    move-result-object v7

    move-object/from16 v1, p4

    if-eq v7, v1, :cond_2

    int-to-float v0, v0

    sub-float v1, p8, p7

    div-float/2addr v0, v1

    int-to-float v1, v13

    sub-float v2, p10, p9

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, p5

    move v8, v0

    goto :goto_0

    :cond_2
    move/from16 v8, p5

    :goto_0
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v9, v16

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->drawDoubleSidedGlyphOutline(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;FLandroid/graphics/Canvas;ZZ)Z

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->waitHardwareRenderingFinished()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NvAndroidGlyphMaskGenerator"

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public drawGlyphBody(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;ZZ)Z
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const/4 v10, 0x0

    if-nez v2, :cond_0

    return v10

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p3}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getGlyphInfo(II)Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return v10

    :cond_1
    move-object v4, p1

    move/from16 v5, p6

    invoke-direct {p0, p1, v5, v3}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->selectPaint(Lcom/cdv/effect/text/NvAndroidTextLayout;ZLcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Landroid/graphics/Paint;

    move-result-object v9

    if-nez v9, :cond_2

    return v10

    :cond_2
    move/from16 v5, p7

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v5, 0xff

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, v3}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->shouldDrawGlyphWithPath(Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    return v10

    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return v11

    :cond_4
    invoke-virtual {v2, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/cdv/effect/text/NvAndroidTextLayout;->getText()Landroid/text/SpannableString;

    move-result-object v1

    iget v4, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->startCharIdx:I

    iget v5, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->endCharIdx:I

    iget v6, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineStart:I

    iget v7, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->lineEnd:I

    iget-object v0, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->pos:Landroid/graphics/PointF;

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v12, v0, Landroid/graphics/PointF;->y:F

    iget-boolean v13, v3, Lcom/cdv/effect/text/NvAndroidTextLayout$GlyphInfo;->isRtl:Z

    move-object/from16 v0, p5

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v12

    move v8, v13

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v11

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NvAndroidGlyphMaskGenerator"

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v10
.end method

.method public drawGlyphBodyHardware(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;ZFFFFII)Z
    .locals 16

    move/from16 v0, p10

    move/from16 v12, p11

    invoke-virtual/range {p0 .. p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->canUseHardwareRenderer()Z

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_0

    return v13

    :cond_0
    move-object/from16 v14, p0

    :try_start_0
    invoke-direct {v14, v0, v12}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->prepareSurface(II)Landroid/view/Surface;

    move-result-object v15

    if-nez v15, :cond_1

    return v13

    :cond_1
    invoke-virtual {v15}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v13, v13, v0, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v13, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v11

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 p4, v11

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->setupHardwareCanvasForGlyphPath(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;FFFFII)Landroid/graphics/Path;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->drawGlyphBody(Lcom/cdv/effect/text/NvAndroidTextLayout;IILandroid/graphics/Path;Landroid/graphics/Canvas;ZZ)Z

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p0}, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->waitHardwareRenderingFinished()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NvAndroidGlyphMaskGenerator"

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v13
.end method

.method public getSurfaceHeight()I
    .locals 0

    iget p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I

    return p0
.end method

.method public getSurfaceWidth()I
    .locals 0

    iget p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    return p0
.end method

.method public getTransformMatrixOfSurfaceTexture([F)V
    .locals 0

    iget-object p0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    :cond_0
    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_handlerThread:Landroid/os/HandlerThread;

    :cond_1
    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_hander:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_2
    iget-object v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceWidth:I

    iput v0, p0, Lcom/cdv/effect/text/NvAndroidGlyphMaskGenerator;->m_surfaceHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NvAndroidGlyphMaskGenerator"

    invoke-static {p0, v0, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
