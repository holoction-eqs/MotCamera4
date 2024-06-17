.class public final Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public isOrientationListenerRegistered:Z

.field public isStarted:Z

.field public final mainHandler:Landroid/os/Handler;

.field public final orientationListener:Landroidx/media3/exoplayer/video/spherical/OrientationListener;

.field public final orientationSensor:Landroid/hardware/Sensor;

.field public final scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

.field public final sensorManager:Landroid/hardware/SensorManager;

.field public surface:Landroid/view/Surface;

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;

.field public useSensorRotation:Z

.field public final videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    new-instance v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    new-instance v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;-><init>(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V

    new-instance v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/video/spherical/TouchTracker;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;)V

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v2, Landroidx/media3/exoplayer/video/spherical/OrientationListener;

    const/4 v3, 0x2

    new-array v4, v3, [Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-direct {v2, p1, v4}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;-><init>(Landroid/view/Display;[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationListener:Landroidx/media3/exoplayer/video/spherical/OrientationListener;

    iput-boolean v5, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getCameraMotionListener()Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    return-object p0
.end method

.method public getVideoFrameMetadataListener()Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    return-object p0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isStarted:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isStarted:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->scene:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->defaultStereoMode:I

    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->updateOrientationListenerRegistration()V

    return-void
.end method

.method public final updateOrientationListenerRegistration()V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->useSensorRotation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isOrientationListenerRegistered:Z

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->orientationListener:Landroidx/media3/exoplayer/video/spherical/OrientationListener;

    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->isOrientationListenerRegistered:Z

    :cond_3
    :goto_2
    return-void
.end method
