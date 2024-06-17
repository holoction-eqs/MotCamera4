.class public final Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# static fields
.field public static final VERTICES_DATA:[F


# instance fields
.field public final mColors:[F

.field public mHasDropShadow:Z

.field public mVertexVbo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 0

    filled-new-array {p2, p2, p2}, [I

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0xc

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mColors:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mVertexVbo:I

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->setColors([I)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mHasDropShadow:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->VERTICES_DATA:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mVertexVbo:I

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v5

    const/16 v6, 0xc

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mVertexVbo:I

    const/4 v8, 0x3

    invoke-virtual {v5, v8, v6, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v5, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mHasDropShadow:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v4, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p1

    const/16 p2, 0x10

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mColors:[F

    invoke-virtual {p1, v3, p2, p0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p0, 0x5

    invoke-static {p0, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final declared-synchronized setColors([I)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mColors:[F

    mul-int/lit8 v2, v0, 0x4

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x2

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mColors:[F

    add-int/lit8 v2, v2, 0x3

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    aput v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mVertexVbo:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/TriangleTexture;->mVertexVbo:I

    return-void
.end method
