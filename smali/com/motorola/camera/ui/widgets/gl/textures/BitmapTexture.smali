.class public Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;
.source "SourceFile"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mDeleteTex:Z

.field public mDirty:Z

.field public mHasCalledTexImage2D:Z

.field public final mOldScaledSize:Landroid/graphics/PointF;

.field public mRecycle:Z

.field public mTextureID:I

.field public mTextureLoaded:Z

.field public mUpdateVertices:Z

.field public mVbo:I

.field public mVerticesCount:I

.field public mVerticesData:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesCount:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mOldScaledSize:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateTexture()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->getActiveTexture()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    return-void
.end method

.method public getActiveTexture()I
    .locals 0

    const p0, 0x84c0

    return p0
.end method

.method public declared-synchronized loadTexture()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->deleteTexture()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->generateTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesData:[F

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->updateVerticesVbo()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mHasCalledTexImage2D:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mUpdateVertices:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z
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
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->resetBlendFunc()V

    return-void
.end method

.method public declared-synchronized onPreDraw()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->deleteTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmapPriv()V

    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mUpdateVertices:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->updateVerticesVbo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProgramSetup()Lcom/motorola/camera/ui/widgets/gl/Shader;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBlendFunc()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    const/4 v3, 0x3

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onRender(Lcom/motorola/camera/ui/widgets/gl/Shader;[F[F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->getActiveTexture()I

    move-result p3

    const v0, 0x84c0

    sub-int/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    instance-of p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->getActiveTexture()I

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    const/16 p3, 0xde1

    invoke-static {p3, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    :cond_0
    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p2

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    const/4 v0, 0x2

    const/16 v2, 0x14

    const/16 v3, 0xc

    invoke-virtual {p2, v0, v2, v3, p3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesCount:I

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetBlendFunc()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mRecycle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setBitmapPriv()V
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->getActiveTexture()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mHasCalledTexImage2D:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mOldScaledSize:Landroid/graphics/PointF;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v7, v6, :cond_2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-eq v7, v6, :cond_2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v7, v6, :cond_2

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v7, v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    invoke-static {v1, v5, v5, v5, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    const-string v4, "GlToolBox"

    const-string v6, "Create temporary Bitmap for texSubImage2D"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->createSafeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v5, v5, v5, v0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    const-string v0, "texSubImage2D"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->texImage2D(Landroid/graphics/Bitmap;)V

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mHasCalledTexImage2D:Z

    :goto_3
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mRecycle:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    return-void
.end method

.method public setBlendFunc()V
    .locals 0

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setViewScale()V

    return-void
.end method

.method public setViewScale()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "texId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bmp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " dirty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " recycle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mRecycle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " delete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized unloadTexture()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->deleteTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mRecycle:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    :cond_3
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateVerticesVbo()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesData:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mUpdateVertices:Z

    return-void
.end method
