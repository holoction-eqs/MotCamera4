.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.source "SourceFile"


# instance fields
.field public final mColor:[F

.field public final mOpacityFrom:F

.field public final mOpacityTo:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x4

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;->mColor:[F

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;->mOpacityFrom:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;->mOpacityTo:F

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onPostDraw()V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final onPreDraw()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object p0

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result p0

    const/4 v2, 0x3

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    return-object v0
.end method

.method public final onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;->mColor:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_FROM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;->mOpacityFrom:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_TO:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/SecondaryGradientTexture;->mOpacityTo:F

    invoke-virtual {p1, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    return-void
.end method
