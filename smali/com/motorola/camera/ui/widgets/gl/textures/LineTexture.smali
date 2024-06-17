.class public final Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.source "SourceFile"


# instance fields
.field public final mColor:[F

.field public mLineWidth:F

.field public mVertexBuffer:Ljava/nio/FloatBuffer;

.field public final mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x6

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mLineWidth:F

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x6

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mLineWidth:F

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostDraw()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void
.end method

.method public final onPreDraw()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 2

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    return-object p0
.end method

.method public final onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p2

    const/4 p3, 0x3

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    invoke-virtual {p2, p3, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mLineWidth:F

    invoke-static {p0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const-string p0, "glLineWidth"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    array-length p0, v3

    div-int/2addr p0, p3

    const/4 p1, 0x1

    invoke-static {p1, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    return-void
.end method

.method public final declared-synchronized setColor(I)V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

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

.method public final declared-synchronized setColor(Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V
    .locals 3

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mColor:[F

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    aget p1, p1, v1

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

.method public final declared-synchronized setLineWidth(F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mLineWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setVerts(Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertices:[F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v1, 0x3

    aput p1, v0, v1

    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v1, 0x4

    aput p1, v0, v1

    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 p2, 0x5

    aput p1, v0, p2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/LineTexture;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 0

    return-void
.end method
