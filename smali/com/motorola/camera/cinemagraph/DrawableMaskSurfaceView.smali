.class public Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final ERASE_MASK:I

.field public static final SOLID_ALPHA:I


# instance fields
.field public mByteCanvas:Landroid/graphics/Canvas;

.field public final mBytePaint:Landroid/graphics/Paint;

.field public mBytesMask:Landroid/graphics/Bitmap;

.field public mCurrentHeight:I

.field public mCurrentWidth:I

.field public mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;

.field public mEmptyBitmap:Landroid/graphics/Bitmap;

.field public final mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

.field public mHeight:I

.field public final mHolder:Landroid/view/SurfaceHolder;

.field public mIsDrawMode:Z

.field public mIsMaskDrawingEnabled:Z

.field public mLastPosX:F

.field public mLastPosY:F

.field public mMarginX:I

.field public mMarginY:I

.field public mMaskBitmap:Landroid/graphics/Bitmap;

.field public mMaskCanvas:Landroid/graphics/Canvas;

.field public final mMaskColor:I

.field public mMaskDrawMatrix:Landroid/graphics/Matrix;

.field public mOffsetHeight:I

.field public mOffsetWidth:I

.field public mOriginalMaskBytes:[B

.field public final mPaint:Landroid/graphics/Paint;

.field public mPreviewBitmap:Landroid/graphics/Bitmap;

.field public mPreviewDrawMatrix:Landroid/graphics/Matrix;

.field public mPreviewOffsetY:F

.field public mScaleFactor:F

.field public mWidth:I

.field public mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->ERASE_MASK:I

    const/16 v0, 0xff

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->SOLID_ALPHA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInstance()Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsMaskDrawingEnabled:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x42960000    # 75.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object p2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const p2, 0x7f060395

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    const/high16 v2, 0x43180000    # 152.0f

    invoke-static {v2, p2, v1, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskColor:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setPaintColor(Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized clearMask()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytesMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytesMask:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytesMask:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mByteCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/airbnb/lottie/model/MutablePair;

    iget-object v1, v0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updateMaskToEngine()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskDrawMatrix:Landroid/graphics/Matrix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final drawMaskFromBits([B)V
    .locals 9

    array-length v0, p1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    iget v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    mul-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v2, v0, [I

    iget v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    :goto_0
    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    iget v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginX:I

    :goto_1
    iget v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    iget v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginX:I

    sub-int v4, v3, v4

    if-ge v1, v4, :cond_2

    mul-int v4, v3, v0

    add-int/2addr v4, v1

    aget-byte v4, p1, v4

    if-eqz v4, :cond_1

    mul-int v4, v3, v0

    add-int/2addr v4, v1

    const/4 v5, -0x1

    aput-byte v5, p1, v4

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    iget v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskColor:I

    aput v4, v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytesMask:Landroid/graphics/Bitmap;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method public final finishDrawingStroke()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    iput v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsDrawMode:Z

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/model/MutablePair;

    iget-object p0, v0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/model/MutablePair;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->isEmptyMask()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;

    check-cast p0, Lcom/airbnb/lottie/model/MutablePair;

    iget-object v0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getOffsetWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOffsetWidth:I

    return p0
.end method

.method public getOffsetheight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOffsetHeight:I

    return p0
.end method

.method public getmMarginX()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginX:I

    return p0
.end method

.method public getmMarginY()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    return p0
.end method

.method public final isEmptyMask()Z
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mEmptyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytesMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mCurrentWidth:I

    if-eqz p2, :cond_1

    iget p3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mCurrentHeight:I

    if-eqz p3, :cond_1

    if-gt p4, p2, :cond_0

    if-le p5, p3, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updatePreviewFrame()Z

    :cond_1
    if-nez p1, :cond_2

    iget p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mCurrentWidth:I

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mCurrentHeight:I

    if-nez p1, :cond_3

    :cond_2
    iput p4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mCurrentWidth:I

    iput p5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mCurrentHeight:I

    :cond_3
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsMaskDrawingEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewOffsetY:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewOffsetY:F

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mScaleFactor:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewOffsetY:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    mul-float/2addr v4, v0

    iget v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    int-to-float v0, v0

    iget v5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginX:I

    int-to-float v5, v4

    add-float/2addr v2, v5

    iget-boolean v5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsDrawMode:Z

    if-eqz v5, :cond_4

    add-int/lit8 v5, v4, 0x25

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    add-int/lit8 v4, v4, 0x25

    int-to-float p1, v4

    :goto_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    iput v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    return v1

    :cond_1
    add-int/lit8 v5, v4, 0x4b

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    add-int/lit8 v4, v4, 0x25

    int-to-float v2, v4

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOffsetWidth:I

    add-int v6, v5, v4

    add-int/lit8 v6, v6, -0x25

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x25

    int-to-float p1, v5

    goto :goto_0

    :cond_3
    add-int v6, v5, v4

    add-int/lit8 v6, v6, -0x4b

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_4

    add-int/2addr v5, v4

    int-to-float v2, v5

    const/high16 v4, 0x42160000    # 37.5f

    sub-float/2addr v2, v4

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytePaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPaint:Landroid/graphics/Paint;

    if-eq p1, v1, :cond_7

    if-eq p1, v3, :cond_5

    goto :goto_5

    :cond_5
    iget v6, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    const/4 p1, 0x0

    cmpl-float v3, v6, p1

    if-nez v3, :cond_6

    iget v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    cmpl-float p1, v3, p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget v7, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    move v8, v2

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mByteCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    iget v7, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iput v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    iput v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    iget v7, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    move v8, v2

    move v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mByteCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    iget v7, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->finishDrawingStroke()V

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updateMaskToEngine()V

    goto :goto_5

    :cond_8
    :goto_3
    iput v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosX:F

    iput v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mLastPosY:F

    goto :goto_5

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->finishDrawingStroke()V

    :cond_a
    :goto_5
    return v1
.end method

.method public setDrawMaskCallback(Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;

    return-void
.end method

.method public setMaskDrawingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsMaskDrawingEnabled:Z

    return-void
.end method

.method public setPaintColor(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsDrawMode:Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->ERASE_MASK:I

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskColor:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytePaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    sget v1, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->SOLID_ALPHA:I

    :cond_1
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public final updateMaskToEngine()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mBytesMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setMask(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final updateMatrices()V
    .locals 5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewDrawMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->clearMask()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mScaleFactor:F

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mScaleFactor:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewOffsetY:F

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewDrawMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewOffsetY:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskDrawMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mScaleFactor:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMarginY:I

    int-to-float v1, v1

    iget v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mScaleFactor:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mScaleFactor:F

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final declared-synchronized updatePreviewFrame()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWindowRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskDrawMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updateMatrices()V

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewDrawMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mIsMaskDrawingEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mMaskDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
