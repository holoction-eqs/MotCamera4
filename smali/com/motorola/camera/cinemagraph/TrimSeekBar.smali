.class public Lcom/motorola/camera/cinemagraph/TrimSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActiveHandle:I

.field public mAllowDrawDurationUpdate:Z

.field public mAutoPlay:Z

.field public mAuxBitmapRect:Landroid/graphics/Rect;

.field public mAuxDrawRect:Landroid/graphics/RectF;

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mCurrentFrame:I

.field public mDetector:Landroid/view/GestureDetector;

.field public mDrawDurationAdjust:J

.field public mDrawPlayHead:Z

.field public mDrawableRect:Landroid/graphics/Rect;

.field public mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

.field public mFrameInterval:I

.field public mFrameWidth:F

.field public mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

.field public mHandleActiveHeight:F

.field public mHandleHeight:F

.field public mHandlePaint:Landroid/graphics/Paint;

.field public mHandleWidth:F

.field public mIsBounce:Z

.field public mIsPlaying:Z

.field public mMinSelectionWidth:F

.field public mOutsideShadowPaint:Landroid/graphics/Paint;

.field public mPlayHeadPosition:F

.field public mPlayHeadWidth:F

.field public mPlaybackAnimator:Landroid/animation/ValueAnimator;

.field public mPlaybackHandler:Landroid/os/Handler;

.field public mPlaybackListener:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

.field public mRestrictPlayheadPosition:Z

.field public mSelectionEndFrame:I

.field public mSelectionRect:Landroid/graphics/RectF;

.field public mSelectionStartFrame:I

.field public mThumbList:Ljava/util/List;

.field public mThumbSpacing:F

.field public mThumbWidth:F

.field public mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

.field public mTotalFrameCount:I

.field public mTouchAreaPaint:Landroid/graphics/Paint;

.field public mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;


# direct methods
.method public static bridge synthetic -$$Nest$msetActiveHandle(Lcom/motorola/camera/cinemagraph/TrimSeekBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setActiveHandle(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->init()V

    return-void
.end method

.method private getMinWidth()F
    .locals 2

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mMinSelectionWidth:F

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private setActiveHandle(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getEndTrimmingMin()F
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getMinWidth()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public declared-synchronized getSelectionEndFrame()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSelectionStartFrame()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStartTrimmingMax()F
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-direct {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getMinWidth()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final declared-synchronized hasThumbnails()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final init()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mRestrictPlayheadPosition:Z

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsBounce:Z

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z

    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z

    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mCurrentFrame:I

    const/16 v3, 0x42

    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadWidth:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    iput v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mMinSelectionWidth:F

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbSpacing:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxBitmapRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v4, 0x7f0603e6

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0603e7

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTouchAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0603fb

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    invoke-direct {v0, p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;-><init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Animator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackListener:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

    return-void
.end method

.method public final declared-synchronized isPlaying()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbWidth:F

    if-lez v0, :cond_0

    iget v6, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbSpacing:F

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    add-float/2addr v6, v5

    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadWidth:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadWidth:F

    add-float/2addr v4, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {v3, v0, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mOutsideShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    :goto_2
    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float v6, v5, v0

    iget v7, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v2

    add-float/2addr v5, v0

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    invoke-virtual {v3, v6, v7, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    :goto_3
    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v0

    iget v6, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v2

    add-float/2addr v4, v0

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxDrawRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onDrawableRectUpdated(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleWidth:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p4, v0, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->onDrawableRectUpdated(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateThumbDimens()V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleHeight:F

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f555555

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mHandleActiveHeight:F

    :cond_4
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->this$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    iget-object v0, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;->onTrim(Z)V

    :cond_0
    iput v2, p1, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mActiveHandle:I

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setSelectionStart(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setSelectionEnd(I)V

    :goto_0
    iput v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedHandle:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->mCurrentSelectedFrame:I

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    :goto_1
    return v0
.end method

.method public final declared-synchronized play()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 4

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    return-void
.end method

.method public declared-synchronized setBounceLoop(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsBounce:Z

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updatePlaybackAnimator()V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFrameCount(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

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

.method public declared-synchronized setFrameInterval(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updatePlaybackAnimator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnFrameUpdateCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnFrameUpdateCallback;

    return-void
.end method

.method public setOnTimelineEditCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

    return-void
.end method

.method public setOnTrimCallback(Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTrimCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;

    return-void
.end method

.method public setPlayHeadFrame(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mRestrictPlayheadPosition:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    add-int/2addr v0, v2

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-ltz p1, :cond_2

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-le p1, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    int-to-float p1, p1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlayHeadPosition:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Frame out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlayHeadVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    return-void
.end method

.method public setRestrictPlayheadPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mRestrictPlayheadPosition:Z

    return-void
.end method

.method public declared-synchronized setSelectionEnd(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;->onTimelineEdited(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSelectionStart(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateSelectionDimens()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTimelineCallback:Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTimelineEditCallback;->onTimelineEdited(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setThumbnails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateThumbDimens()V

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

.method public final declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAutoPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateDrawDuration(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAllowDrawDurationUpdate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updatePlaybackAnimator()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [F

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    aput v5, v0, v1

    iget v1, v4, Landroid/graphics/RectF;->right:F

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackListener:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v2, [F

    iget-object v5, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    aput v6, v4, v1

    iget v1, v5, Landroid/graphics/RectF;->right:F

    aput v1, v4, v3

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-long v0, v0

    iget v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameInterval:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawDurationAdjust:J

    add-long/2addr v4, v6

    mul-long/2addr v4, v0

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    iget-boolean p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mIsBounce:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public final updateSelectionDimens()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mTotalFrameCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mFrameWidth:F

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v4, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionStartFrame:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    iput v4, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    iget v3, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mSelectionEndFrame:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mGestureListener:Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;

    sget v1, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar$GestureListener;->updateTouchAreas()V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updatePlaybackAnimator()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateThumbDimens()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->hasThumbnails()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbWidth:F

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mThumbList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v2, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    move v6, v4

    move v4, v1

    move v1, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float/2addr v1, v3

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mAuxBitmapRect:Landroid/graphics/Rect;

    float-to-int v3, v4

    float-to-int v5, v1

    add-float/2addr v4, v0

    float-to-int v0, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v3, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_1
    return-void
.end method
