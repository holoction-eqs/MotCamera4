.class public final Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mRadius:F

.field public mStencilSize:Landroid/util/SizeF;

.field public mUpdateVbo:Z

.field public mVboId:I

.field public mVertices:[F

.field public mVerticesSize:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 9

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v3, v4}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x11

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v1

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    const/4 v4, 0x2

    const/16 v5, 0x8

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    const/4 v7, 0x6

    invoke-static {v7, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {p0, v6, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    invoke-static {v7, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-virtual {p0, v6, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    invoke-static {v7, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-virtual {p0, v1, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-static {v3, v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    invoke-virtual {v0, v5, v3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    invoke-static {v7, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    return-void
.end method

.method public final declared-synchronized setSize(FF)V
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mStencilSize:Landroid/util/SizeF;

    new-instance v0, Landroid/graphics/RectF;

    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v3, p2, v2

    div-float/2addr p1, v2

    neg-float p2, p2

    div-float/2addr p2, v2

    invoke-direct {v0, v1, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Lcom/google/common/base/Splitter$1;

    const/16 p2, 0x12

    invoke-direct {p1, v0, p2}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/common/base/Splitter$1;

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    mul-int/lit8 p2, p1, 0x2

    new-array v1, p2, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/4 v5, 0x2

    aput v4, v1, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x3

    aput v5, v1, v6

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float v8, v6, v7

    const/4 v9, 0x4

    aput v8, v1, v9

    const/4 v8, 0x5

    aput v5, v1, v8

    add-int/lit8 v8, p2, -0x4

    aput v6, v1, v8

    add-int/lit8 v8, p2, -0x3

    sub-float/2addr v5, v7

    aput v5, v1, v8

    add-int/lit8 v5, p2, -0x2

    aput v6, v1, v5

    add-int/lit8 v5, p2, -0x1

    aput v4, v1, v5

    int-to-float p1, p1

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr p1, v1

    const/high16 v1, 0x42b40000    # 90.0f

    div-float/2addr v1, p1

    const/high16 p1, 0x43340000    # 180.0f

    div-float/2addr v1, p1

    const p1, 0x4048f5c3    # 3.14f

    mul-float/2addr v1, p1

    const/4 p1, 0x6

    :goto_0
    add-int/lit8 v4, p2, -0x5

    if-gt p1, v4, :cond_0

    add-int/lit8 v4, p1, -0x6

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v4, v9

    mul-float/2addr v6, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float/2addr v4, v9

    add-float/2addr v4, v6

    aput v4, v5, p1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVertices:[F

    add-int/lit8 v5, p1, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v9, v6

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    sub-float/2addr v6, v7

    add-float/2addr v6, v9

    aput v6, v4, v5

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mUpdateVbo:Z

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVboId:I

    return-void
.end method
