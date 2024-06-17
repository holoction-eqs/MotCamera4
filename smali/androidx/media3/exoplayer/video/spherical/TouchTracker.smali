.class public final Landroidx/media3/exoplayer/video/spherical/TouchTracker;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;


# instance fields
.field public final accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public final listener:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;

.field public final previousTouchPointPx:Landroid/graphics/PointF;

.field public final pxPerDegrees:F

.field public volatile roll:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->listener:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;

    const/high16 p2, 0x41c80000    # 25.0f

    iput p2, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onOrientationChange([FF)V
    .locals 0

    neg-float p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    iget v4, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr v2, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iget v3, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    mul-float v7, v5, v1

    mul-float v8, v3, v2

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v1

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    const/high16 v1, 0x42340000    # 45.0f

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, -0x3dcc0000    # -45.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v4, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->listener:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitch:F

    iget-object v3, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchPitchMatrix:[F

    const/4 v4, 0x0

    neg-float v5, v2

    iget v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v2, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->deviceRoll:F

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v9, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->touchYawMatrix:[F

    const/4 v10, 0x0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    neg-float v11, v0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->listener:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;->this$0:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
