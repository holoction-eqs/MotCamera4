.class public final Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/RoundedViewfinder;
.super Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;
.source "SourceFile"


# instance fields
.field public mPreviewSize:[F

.field public mRadius:F


# virtual methods
.method public final onDraw([F[F)V
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->updateVbo()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    const/4 v4, 0x3

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    const/16 v3, 0xc

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    invoke-virtual {v2, v1, v5, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ST_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mSTMatrix:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->ALPHA:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/RoundedViewfinder;->mRadius:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/RoundedViewfinder;->mPreviewSize:[F

    invoke-virtual {v0, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/RoundedViewfinder;->mRadius:F

    return-void
.end method

.method public final setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x1

    aput p2, p1, v0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/RoundedViewfinder;->mPreviewSize:[F

    return-void
.end method
