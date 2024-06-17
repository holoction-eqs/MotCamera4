.class public Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

.field public final mCarouselExcludeGestureRect:Landroid/graphics/Rect;

.field public mEGL10:Ljavax/microedition/khronos/egl/EGL10;

.field public mEGLHelper:Lcom/motorola/camera/utility/EGLHelper;

.field public mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public final mExcludeGestureRect:Landroid/graphics/Rect;

.field public final mFontBold:Z

.field public final mFontScale:F

.field public mIsActive:Z

.field public final mLargeScreenFlag:Z

.field public final mMaxPresentationTimeNsec:J

.field public mMaxSurfaceSize:Landroid/graphics/Point;

.field public mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

.field public final mShaderFactory:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

.field public mSupportP3:Z

.field public mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mSurfaceSize:Landroid/graphics/Point;

.field public mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

.field public mTranslucent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mExcludeGestureRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCarouselExcludeGestureRect:Landroid/graphics/Rect;

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    instance-of v1, p1, Lcom/motorola/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/Camera;

    invoke-virtual {v1, v1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/Display;->getRefreshRate()F

    move-result p2

    float-to-double v4, p2

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    const-wide/16 v6, 0x2

    div-long v6, v4, v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxPresentationTimeNsec:J

    iget p2, v1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr p2, v4

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mLargeScreenFlag:Z

    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setupSurface(Landroid/graphics/Point;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontScale:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mFontBold:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mShaderFactory:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$ContextFactory;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;-><init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x10

    const/16 v10, 0x8

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    return-void
.end method


# virtual methods
.method public getEGLHelper()Lcom/motorola/camera/utility/EGLHelper;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLHelper:Lcom/motorola/camera/utility/EGLHelper;

    return-object p0
.end method

.method public getPixelColor()V
    .locals 11

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SELECTIVE_COLOR_ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    new-array v1, v1, [I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    sub-int/2addr p0, v0

    add-int/lit8 v3, p0, -0x5

    const/16 v4, 0xa

    const/16 v5, 0xa

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string p0, "glReadPixels"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    move p0, v9

    move v0, p0

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0xa

    if-ge p0, v5, :cond_2

    move v6, v9

    :goto_1
    if-ge v6, v5, :cond_1

    mul-int/lit8 v7, v6, 0xa

    add-int/2addr v7, p0

    aget v7, v1, v7

    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v8

    add-int/2addr v3, v10

    add-int/2addr v4, v7

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    div-int/2addr v2, v0

    div-int/2addr v3, v0

    div-int/2addr v4, v0

    and-int/lit16 p0, v2, 0xff

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    and-int/lit16 v0, v3, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    and-int/lit16 v0, v4, 0xff

    or-int/2addr p0, v0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SELECTIVE_COLOR_ROI_PIXEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public getShaderFactory()Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mShaderFactory:Lcom/motorola/camera/ui/widgets/gl/ShaderFactory;

    return-object p0
.end method

.method public getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    return-object p0
.end method

.method public getUIScaleFactor()F
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mExcludeGestureRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v1, v0

    const/high16 v2, 0x42900000    # 72.0f

    mul-float/2addr p1, v2

    sub-float/2addr v1, p1

    float-to-int p1, v1

    sub-int v0, p5, v0

    sub-int/2addr p5, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCarouselExcludeGestureRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/Rect;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const/4 p3, 0x1

    aput-object p1, p2, p3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final onPause()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mIsActive:Z

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderContinuousComps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer$FrameCallback;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public final onPreviewStarted()V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSupportP3:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-super {p0, v0, v3, v1, v2}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mIsActive:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->setupSurface(Landroid/graphics/Point;I)V

    :cond_0
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/widgets/gl/VSyncManager;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/VSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/VSyncManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/Choreographer$FrameCallback;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setActive(Z)V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCameraPreviewComponent(Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

    return-void
.end method

.method public setSurface(Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;)V
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mCameraPreviewComponent:Lcom/motorola/camera/ui/uicomponents/IglCameraPreviewComponent;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, v0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_0
    return-void
.end method

.method public setTranslucent(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTranslucent:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTranslucent:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mTranslucent:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mTranslucent:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceReCreated:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 p1, -0x1

    :goto_0
    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public final setupSurface(Landroid/graphics/Point;I)V
    .locals 10

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mLargeScreenFlag:Z

    if-eqz v1, :cond_0

    const v1, 0x2b8180

    goto :goto_0

    :cond_0
    const v1, 0x1fa400

    :goto_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    :cond_1
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->DPI_MAP:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    mul-int v4, v2, v3

    if-le v4, v1, :cond_6

    int-to-float v2, v2

    iget v4, p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    div-float/2addr v2, v4

    int-to-float v3, v3

    div-float/2addr v3, v4

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-nez v6, :cond_7

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->values()[Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    move-result-object v6

    if-lez p2, :cond_3

    add-int/lit8 v7, p2, -0x1

    goto :goto_3

    :cond_3
    move v7, p2

    :goto_3
    aget-object v6, v6, v7

    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    mul-float v8, v7, v2

    float-to-int v8, v8

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/graphics/Point;->set(II)V

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v8

    if-le v7, v1, :cond_5

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    move p2, v5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p2, 0x1

    :goto_5
    move-object v9, v6

    move v6, p2

    move-object p2, v9

    goto :goto_2

    :cond_6
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :cond_7
    invoke-virtual {v4, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, v4, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_6

    :cond_8
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    :goto_6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-interface {p1, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    sget-object p0, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/FastSettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
