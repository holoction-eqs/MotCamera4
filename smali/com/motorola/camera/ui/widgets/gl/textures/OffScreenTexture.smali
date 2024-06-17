.class public final Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mColors:[F

.field public mDarkness:F

.field public mDepthRb:I

.field public mFb:I

.field public mHeight:I

.field public mMask:I

.field public mOpacityFrom:F

.field public mOpacityFrom2:F

.field public mOpacityTo:F

.field public mOpacityTo2:F

.field public mRenderTex:I

.field public mResize:Z

.field public final mShapeChange:[F

.field public mVbo:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom2:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo2:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDarkness:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final createDepthBuffer()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    sget v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    const-string v2, "glGenRenderbuffers"

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v2, v3, v4

    const v5, 0x8d41

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const-string v2, "glBindRenderbuffer"

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v2, 0x81a5

    invoke-static {v5, v2, v0, v1}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const-string v0, "glRenderbufferStorage"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v0, v3, v4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    return-void
.end method

.method public final createFrameBuffer()V
    .locals 5

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v0, "glGenFramebuffers"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    const v1, 0x8ce0

    const/16 v3, 0xde1

    const v4, 0x8d40

    invoke-static {v4, v1, v3, v0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const-string v0, "glFramebufferTexture2D"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    const v0, 0x8d00

    const v1, 0x8d41

    invoke-static {v4, v0, v1, p0}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    const-string p0, "glFramebufferRenderbuffer"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p0

    const-string v0, "glCheckFramebufferStatus"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8cd5

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create FBO: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OffScreenTexture"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    return-void
.end method

.method public final draw([F[F)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_1
    return-void
.end method

.method public final getFb()I
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    return p0
.end method

.method public final getSize()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x84c5

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    const/16 v3, 0x1908

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    const/16 v7, 0x1908

    const/4 v9, 0x0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1401

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const-string v0, "glTexImage2D"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->createDepthBuffer()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->createFrameBuffer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z
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

.method public final declared-synchronized onDraw([F[F)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v0, 0x303

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    const v3, 0x84c5

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    const/16 v5, 0x14

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v5, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    const/4 v7, 0x2

    const/16 v8, 0xc

    invoke-virtual {v3, v7, v5, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    const/4 p2, 0x4

    if-ne p1, v2, :cond_0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    :goto_0
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    goto :goto_1

    :cond_0
    if-ne p1, v7, :cond_1

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    goto :goto_1

    :cond_1
    if-ne p1, v6, :cond_2

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    goto :goto_0

    :cond_2
    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mColors:[F

    const/16 v3, 0x10

    invoke-virtual {p1, p2, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom2:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO2:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo2:F

    goto :goto_0

    :goto_1
    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    :cond_3
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MASK:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SHAPE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DARKNESS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDarkness:F

    invoke-virtual {v0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    invoke-static {v2, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final readPixels()Ljava/nio/Buffer;
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const v1, 0x8ca6

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v1, "glGetIntegerv"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v1, v0, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    if-eq v1, v3, :cond_0

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    :cond_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object v9, v1

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v3, "glReadPixels"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v0, v0, v2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    if-eq v0, p0, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public final resizeTexture()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    return-void
.end method

.method public final declared-synchronized setSize(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setViewPort$1()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sget v1, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string p0, "glViewport"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final setViewScale()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OffScreenTexture("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mResize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mResize:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unloadTexture()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const-string v0, "glDeleteFramebuffers"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mFb:I

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    if-eqz v0, :cond_3

    sget v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    const-string v0, "glDeleteRenderbuffers"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDepthRb:I

    :cond_3
    return-void
.end method
