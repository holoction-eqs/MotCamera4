.class public final Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.source "SourceFile"


# static fields
.field public static final VERTICES_DATA:[F


# instance fields
.field public final mColor:[F

.field public mDirection:I

.field public mVertexVbo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->WHITE:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    .line 2
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    const/4 v1, 0x4

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mColor:[F

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    invoke-static {v0, p1, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x8

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mColor:[F

    .line 5
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    aput v1, v0, p1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/4 p2, 0x3

    aput p1, v0, p2

    const/4 p1, 0x6

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->VERTICES_DATA:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

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

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v1

    const/4 v2, 0x0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    const/4 v3, 0x3

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    return-object v0
.end method

.method public final onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
    .locals 6

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

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mColor:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->DIAGONAL:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    invoke-static {p3}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMDiagonal(I)Z

    move-result p3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->INVERT:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 p3, 0x2

    new-array v3, p3, [F

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    invoke-static {v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMInvertX(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    aput v5, v3, v1

    invoke-static {v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMInvertY(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-virtual {p1, p2, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->FACTOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    new-array p3, p3, [F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mDirection:I

    invoke-static {p0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMXFactor(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    aput v3, p3, v1

    invoke-static {p0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMYFactor(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    aput v0, p3, v5

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    invoke-static {p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;->mVertexVbo:I

    return-void
.end method
