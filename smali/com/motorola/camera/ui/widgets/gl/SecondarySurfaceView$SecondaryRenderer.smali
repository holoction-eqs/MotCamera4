.class public final Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public isWaitingForFaces:Z

.field public lastFaceDetectedTime:J

.field public previewOffsetIndex:I

.field public final previewOffsets:[F

.field public final projectionMatrix:[F

.field public final sharedContext:Lkotlin/DeepRecursiveFunction;

.field public size:Landroid/util/Size;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

.field public final viewMatrix:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;Lkotlin/DeepRecursiveFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lkotlin/DeepRecursiveFunction;

    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    const/16 p1, 0x10

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    const/16 p1, 0x14

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsets:[F

    return-void
.end method


# virtual methods
.method public final doDrawFrame()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->getCameraPreviewTexture()Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v4, 0x4000

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lkotlin/DeepRecursiveFunction;

    iget-object v4, v4, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewPort:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v8

    :goto_1
    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isSplitMode()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    goto :goto_2

    :cond_2
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v11, v10

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isSplitMode()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    :cond_3
    div-float/2addr v4, v11

    :cond_4
    :goto_2
    div-float/2addr v7, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->this$0:Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;

    iget v10, v4, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->displayRotation:F

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    move v5, v9

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v8

    :goto_4
    if-eqz v5, :cond_a

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v5, Landroid/util/Size;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v6

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v6, v11

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    sub-float/2addr v6, v12

    float-to-int v10, v10

    const/16 v12, 0xb4

    if-ne v10, v12, :cond_7

    const/4 v9, -0x1

    :cond_7
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsets:[F

    const-string v12, "<this>"

    invoke-static {v10, v12}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v12, v10

    const-wide/16 v13, 0x0

    move-wide v14, v13

    move v13, v8

    :goto_5
    if-ge v8, v12, :cond_8

    aget v2, v10, v8

    move-object/from16 v16, v4

    float-to-double v3, v2

    add-double/2addr v14, v3

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v16

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    move-object/from16 v16, v4

    if-nez v13, :cond_9

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_6

    :cond_9
    int-to-double v2, v13

    div-double v2, v14, v2

    :goto_6
    double-to-float v2, v2

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v11

    int-to-float v3, v9

    mul-float/2addr v2, v3

    neg-float v3, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v3, v16

    goto :goto_7

    :cond_a
    move-object v3, v4

    const/4 v2, 0x0

    :goto_7
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView;->displayRotation:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    invoke-virtual {v1, v7, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_b
    return-void
.end method

.method public final getCameraPreviewTexture()Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lkotlin/DeepRecursiveFunction;

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    instance-of v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    :cond_1
    monitor-exit p0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final isSplitMode()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lkotlin/DeepRecursiveFunction;

    iget-object p0, p0, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getTextureManager()Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    instance-of v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    invoke-static {p0}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->sharedContext:Lkotlin/DeepRecursiveFunction;

    iget-object p1, p1, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->updatePreviewOffset()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->doDrawFrame()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/Size;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v1, v2

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float v8, v1, v2

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->size:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string v1, "glViewport"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->projectionMatrix:[F

    const/4 v4, 0x0

    neg-float v6, v5

    neg-float v7, v8

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->viewMatrix:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-static/range {v11 .. v21}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public final updatePreviewOffset()V
    .locals 7

    sget-object v0, Lkotlin/UInt$Companion;->faceBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    const-string v5, "zoomValue"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    if-lez v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float v4, v6, v4

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sub-float/2addr v0, v6

    mul-float/2addr v0, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v0, v1

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isWaitingForFaces:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsets:[F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsetIndex:I

    aget v5, v5, v6

    cmpg-float v1, v5, v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->lastFaceDetectedTime:J

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isWaitingForFaces:Z

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isWaitingForFaces:Z

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    sub-long/2addr v1, v5

    iget-wide v5, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->lastFaceDetectedTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_5

    :cond_4
    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isWaitingForFaces:Z

    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->isWaitingForFaces:Z

    xor-int/2addr v1, v3

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsetIndex:I

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsets:[F

    array-length v3, v2

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/SecondarySurfaceView$SecondaryRenderer;->previewOffsetIndex:I

    aput v0, v2, v1

    :cond_6
    return-void
.end method
