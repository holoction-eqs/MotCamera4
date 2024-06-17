.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;
.source "SourceFile"


# instance fields
.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mProjectMatrix:[F

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public final mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mUpdateProjectMatrix:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 6

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    filled-new-array {v0, v2}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onDraw([F[F)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v2, 0x0

    aget-object p2, p2, v2

    iget v3, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v3

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v4, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v3, v4

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    const/4 v5, 0x0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, p2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v7, v6

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v7, v1

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float v1, v6, v1

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v6, p2

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float v9, v6, v3

    int-to-float p2, p2

    div-float/2addr p2, v8

    sub-float/2addr p2, v3

    const v3, 0x419feb85    # 19.99f

    add-float v10, v0, v3

    const/high16 v11, 0x42c80000    # 100.0f

    move v6, v7

    move v7, v1

    move v8, v9

    move v9, p2

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Landroidx/appcompat/widget/Toolbar$1;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PREVIEW_ST:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mProjectMatrix:[F

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final set3dTranslationX(FFFF)D
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v5, v4, p1

    div-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    float-to-double v7, v1

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    div-double/2addr v7, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v7

    move/from16 v1, p3

    float-to-double v13, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v13

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    sub-double/2addr v11, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v13

    div-double v19, v19, v17

    add-double v19, v19, v15

    move-wide v15, v9

    sub-double v9, v19, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v21, v21, v13

    div-double v21, v21, v17

    add-double v0, v21, v19

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    div-double v4, v4, v17

    sub-double v19, v19, v4

    sub-double v4, v19, v7

    double-to-float v6, v11

    const/4 v11, 0x0

    aput v6, v3, v11

    neg-float v11, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    const/4 v12, 0x1

    aput v11, v3, v12

    double-to-float v9, v9

    const/4 v10, 0x2

    aput v9, v3, v10

    const/4 v10, 0x3

    const/16 v19, 0x0

    aput v19, v3, v10

    const/4 v10, 0x4

    aput v19, v3, v10

    double-to-float v0, v0

    const/4 v1, 0x5

    aput v0, v3, v1

    const/4 v1, 0x6

    aput v11, v3, v1

    double-to-float v1, v4

    const/4 v4, 0x7

    aput v1, v3, v4

    const/16 v4, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/16 v4, 0x9

    aput v19, v3, v4

    const/16 v4, 0xa

    aput v6, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/16 v4, 0xb

    aput v2, v3, v4

    const/16 v4, 0xc

    aput v9, v3, v4

    const/16 v4, 0xd

    aput v19, v3, v4

    const/16 v4, 0xe

    aput v5, v3, v4

    const/16 v4, 0xf

    aput v0, v3, v4

    const/16 v0, 0x10

    aput v2, v3, v0

    const/16 v0, 0x11

    aput v1, v3, v0

    const/16 v0, 0x12

    aput v5, v3, v0

    const/16 v0, 0x13

    aput v5, v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    mul-double v0, v7, v17

    div-double v0, v13, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v13

    div-double v0, v0, v17

    add-double/2addr v0, v2

    sub-double/2addr v0, v7

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method
