.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mColor:[F

.field public mLineWidth:F

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mProjectMatrix:[F

.field public final mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mUpdateProjectMatrix:Z

.field public final mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0xc

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mVertices:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mColor:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mLineWidth:F

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aput v2, p1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    aput v3, p1, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    aput v3, p1, v2

    const/4 v2, 0x3

    aget v0, v0, v2

    aput v0, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    filled-new-array {p1, v1}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 0

    monitor-enter p0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

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

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    const/4 v5, 0x0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

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

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mProjectMatrix:[F

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->onDraw$com$motorola$camera$ui$widgets$gl$textures$RectangleTexture([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onDraw$com$motorola$camera$ui$widgets$gl$textures$RectangleTexture([F[F)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mVertices:[F

    const/16 v5, 0xc

    invoke-virtual {v3, v2, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mLineWidth:F

    invoke-static {p1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const-string p1, "glLineWidth"

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 p2, 0x4

    invoke-static {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final set3dTranslationX(FFFF)V
    .locals 19

    move/from16 v0, p2

    move/from16 v1, p4

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, v2, p1

    div-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    float-to-double v5, v0

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    move/from16 v0, p3

    float-to-double v9, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v11, v13

    sub-double/2addr v7, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    div-double/2addr v15, v13

    add-double/2addr v15, v11

    sub-double v11, v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v9

    div-double v17, v17, v13

    add-double v13, v17, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v9

    sub-double/2addr v15, v2

    sub-double v2, v15, v5

    double-to-float v0, v7

    const/4 v4, 0x0

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mVertices:[F

    aput v0, v5, v4

    neg-float v4, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const/4 v7, 0x1

    aput v4, v5, v7

    double-to-float v7, v11

    const/4 v8, 0x2

    aput v7, v5, v8

    double-to-float v8, v13

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v9, 0x4

    aput v4, v5, v9

    double-to-float v2, v2

    const/4 v3, 0x5

    aput v2, v5, v3

    const/4 v3, 0x6

    aput v8, v5, v3

    div-float/2addr v1, v6

    const/4 v3, 0x7

    aput v1, v5, v3

    const/16 v3, 0x8

    aput v2, v5, v3

    const/16 v2, 0x9

    aput v0, v5, v2

    const/16 v0, 0xa

    aput v1, v5, v0

    const/16 v0, 0xb

    aput v7, v5, v0

    return-void
.end method

.method public final declared-synchronized setColor(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x3

    aput p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic unloadTexture()V
    .locals 0

    return-void
.end method
