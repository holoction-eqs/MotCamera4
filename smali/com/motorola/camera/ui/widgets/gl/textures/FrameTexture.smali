.class public Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mColors:[F

.field public mHasDropShadow:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    .line 1
    filled-new-array {p2, p2, p2, p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[I)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V
    .locals 1

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 2
    filled-new-array {p2, p2, p2, p2}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V

    return-void

    .line 3
    :cond_0
    filled-new-array {p2, p2, p2, p2}, [Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    .line 4
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([I)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->init$3()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V
    .locals 2

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eq p3, v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-array p1, v1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->init$3()V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    new-array p1, v1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setColors([Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->init$3()V

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final init$3()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setDropShadow()V

    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->setDropShadow()V

    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final loadTexture()V
    .locals 0

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    const/16 v1, 0x10

    const/16 v2, 0xc

    const/4 v3, 0x3

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/16 v8, 0x303

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v11, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v9, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7, v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v8

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v9

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v9, v12}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v9

    invoke-virtual {v8, v3, v2, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-static {v11, v6, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mHasDropShadow:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v4, p1, v11}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p0

    invoke-virtual {p0, v5, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p0, 0x5

    invoke-static {p0, v10, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v10}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0

    :goto_0
    invoke-static {v11, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v9, v8}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/16 v4, 0xd

    invoke-virtual {v7, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, v8}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v8

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v9

    sget-object v12, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->VERTICES:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v9, v12}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v9

    invoke-virtual {v8, v3, v2, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-static {v11, v6, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mHasDropShadow:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    invoke-virtual {v4, p1, v11}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v4, p1, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->RADIUS:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->COLOR:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object p0

    invoke-virtual {p0, v5, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(II[F)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    const/4 p0, 0x5

    invoke-static {p0, v10, v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    invoke-static {v10}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->resetBlendFunc()V

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized setColors([I)V
    .locals 6

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    mul-int/lit8 v2, v0, 0x4

    aget v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x1

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    add-int/lit8 v3, v2, 0x2

    aget v5, p1, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    aput v5, v1, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

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

.method public final setColors([Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mColors:[F

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v0, v2

    .line 2
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v0, 0x4

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v7, v6, v2

    aput v7, p0, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, v6, v4

    aput v8, p0, v7

    add-int/lit8 v7, v5, 0x2

    aget v8, v6, v3

    aput v8, p0, v7

    add-int/2addr v5, v1

    aget v6, v6, v1

    aput v6, p0, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :goto_1
    move v0, v2

    .line 3
    :goto_2
    array-length v5, p1

    if-ge v0, v5, :cond_1

    mul-int/lit8 v5, v0, 0x4

    aget-object v6, p1, v0

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->mValue:[F

    aget v7, v6, v2

    aput v7, p0, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, v6, v4

    aput v8, p0, v7

    add-int/lit8 v7, v5, 0x2

    aget v8, v6, v3

    aput v8, p0, v7

    add-int/2addr v5, v1

    aget v6, v6, v1

    aput v6, p0, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setDropShadow()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mHasDropShadow:Z

    return-void

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;->mHasDropShadow:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unloadTexture()V
    .locals 0

    return-void
.end method
