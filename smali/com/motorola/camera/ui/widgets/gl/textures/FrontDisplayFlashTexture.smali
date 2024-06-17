.class public final Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public isTripodMode:Z

.field public mBottomAlpha:F

.field public final mColor:[F

.field public final mHollowSize:[F

.field public mHollowTop:F

.field public mLineWidth:F

.field public final mMiddleSize:[F

.field public mRadius:F

.field public mRect:Lcom/google/common/base/Splitter$1;

.field public final mSize:[F

.field public mTopGuide:F

.field public final mVertices:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0xc

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mVertices:[F

    const/4 p1, 0x4

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    const/4 p1, 0x2

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    new-array v0, p1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    new-array p1, p1, [F

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mBottomAlpha:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->isTripodMode:Z

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->setColor(I)V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/google/common/base/Splitter$1;

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/google/common/base/Splitter$1;

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$1;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getScaledHeight()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/google/common/base/Splitter$1;

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$1;->height()F

    move-result p0

    return p0
.end method

.method public final getScaledWidth()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/google/common/base/Splitter$1;

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$1;->width()F

    move-result p0

    return p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-static {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mVertices:[F

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

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

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY_BOTTOM:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mBottomAlpha:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRadius:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->TOP_GUIDE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MIDDLE_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_SIZE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->HOLLOW_TOP:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    const/4 p1, 0x5

    const/4 p2, 0x4

    invoke-static {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setColor(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mColor:[F

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

.method public final declared-synchronized setHollowSize(FF)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_2

    neg-float v1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    :try_start_0
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/google/common/base/Splitter$1;

    iget-object v5, v5, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    div-float/2addr p1, v4

    check-cast v5, Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, p2

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v1, v6, p1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    sub-float/2addr v1, v5

    aput v1, p1, v2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v1

    neg-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    sub-float/2addr v1, v2

    aput v1, p1, v3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    aget p1, p1, v3

    div-float v1, p2, v4

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->getScaledHeight()F

    move-result v0

    sub-float/2addr v0, p2

    div-float/2addr v0, v4

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->isTripodMode:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    mul-float v0, p1, p2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    aget p1, p1, v3

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mLineWidth:F

    sub-float/2addr p1, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowSize:[F

    aput v0, p1, v2

    aput v0, p1, v3

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mHollowTop:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setModuleSizes(FF)V
    .locals 5

    monitor-enter p0

    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v2, p2, v1

    div-float/2addr p1, v1

    neg-float v3, p2

    div-float/2addr v3, v1

    :try_start_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v2, p1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v1

    const/4 v2, 0x0

    aput v0, p1, v2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v1

    const/4 v2, 0x1

    aput v0, p1, v2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mMiddleSize:[F

    aget p1, p1, v2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    aget v0, v0, v2

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->getScaledHeight()F

    move-result v2

    sub-float/2addr v2, p2

    div-float/2addr v2, v1

    sub-float/2addr v2, p1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mTopGuide:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setRect(Lcom/google/common/base/Splitter$1;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mRect:Lcom/google/common/base/Splitter$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mVertices:[F

    iget-object v1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x0

    aput v2, v0, v3

    move-object v2, v1

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x4

    aput v2, v0, v4

    const/4 v4, 0x1

    aput v2, v0, v4

    move-object v2, v1

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/16 v5, 0xa

    aput v2, v0, v5

    const/4 v5, 0x7

    aput v2, v0, v5

    move-object v2, v1

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    const/16 v5, 0x9

    aput v2, v0, v5

    const/4 v5, 0x3

    aput v2, v0, v5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrontDisplayFlashTexture;->mSize:[F

    iget-object p1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    neg-float p1, p1

    div-float/2addr p1, v2

    aput p1, v0, v4

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
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
    .locals 0

    return-void
.end method
