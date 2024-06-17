.class public final Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mDirty:Z

.field public mFirstFrame:Z

.field public mHasCalledTexImage2D:Z

.field public mOldScaledSize:Landroid/graphics/PointF;

.field public mOrientationOffset:I

.field public final mTextureID:[I

.field public mUVBuffer:[B

.field public mUpdateVbo:Z

.field public mVbo:I

.field public mVerticesData:[F

.field public mYBuffer:[B


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v1, -0x1

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOldScaledSize:Landroid/graphics/PointF;

    .line 1
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    aget v3, v2, v1

    aput v3, v0, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v3

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOrientationOffset:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOrientationOffset:I

    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mFirstFrame:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mFirstFrame:Z

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    .line 2
    monitor-enter p0

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    :try_start_1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    if-eqz v0, :cond_1

    array-length v2, p1

    array-length v0, v0

    if-eq v2, v0, :cond_2

    :cond_1
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final configureShader(Lcom/motorola/camera/ui/widgets/gl/Shader;)V
    .locals 5

    const v0, 0x84c3

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    const v2, 0x84c4

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->POSITION:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v0

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;->TEXTURE_COORD:Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->getProgramAttribute(Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute$AttributeKey;)Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/ProgramAttribute;->set(IIII)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->pushAttributes()V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->MVP_MATRIX:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;[F)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->Y_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->UV_TEXTURE:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;I)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;->OPACITY:Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->setUniformValue(Lcom/motorola/camera/ui/widgets/gl/ProgramUniform$UniformKey;F)V

    return-void
.end method

.method public final copyBuffers(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 6

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    mul-int v2, p4, p5

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mYBuffer:[B

    if-eqz v4, :cond_0

    array-length v4, v4

    if-eq v4, v2, :cond_1

    :cond_0
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mYBuffer:[B

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    if-eqz v2, :cond_2

    array-length v2, v2

    if-eq v2, v3, :cond_3

    :cond_2
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p4, p6, :cond_6

    move v1, v2

    :goto_0
    if-ge v1, p5, :cond_4

    mul-int v4, v1, p6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mYBuffer:[B

    mul-int v5, v1, p4

    invoke-virtual {p1, v4, v5, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    move v4, v1

    :goto_1
    div-int/lit8 v5, p5, 0x2

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_5

    mul-int v5, v1, p6

    invoke-virtual {p3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    invoke-virtual {p3, v5, v4, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    mul-int/2addr v5, p6

    invoke-virtual {p3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    sub-int/2addr p4, v3

    invoke-virtual {p3, p5, v4, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p4, v4

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    invoke-virtual {p2, p0, p4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_6
    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mYBuffer:[B

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    invoke-virtual {p3, p4, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    invoke-virtual {p2, p0, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final declared-synchronized getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOrientationOffset:I

    if-eqz v1, :cond_1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 4

    monitor-enter p0

    const v0, 0x84c3

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const/16 v1, 0xde1

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const v0, 0x84c4

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mFirstFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loadYuvTex()V
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mHasCalledTexImage2D:Z

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOldScaledSize:Landroid/graphics/PointF;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOldScaledSize:Landroid/graphics/PointF;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mYBuffer:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v23

    sget v5, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/16 v5, 0xcf5

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const-string v5, "glPixelStorei"

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const v5, 0x84c3

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    aget v6, v5, v3

    const/16 v15, 0xde1

    invoke-static {v15, v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    const-string v24, "glTexImage2D"

    const-string v25, "glTexSubImage2D"

    if-eqz v1, :cond_2

    const/16 v8, 0x1909

    iget v6, v2, Landroid/graphics/PointF;->x:F

    float-to-int v9, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    float-to-int v10, v6

    const/16 v12, 0x1909

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x1401

    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static/range {v24 .. v24}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mHasCalledTexImage2D:Z

    goto :goto_2

    :cond_2
    iget v6, v2, Landroid/graphics/PointF;->x:F

    float-to-int v10, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    float-to-int v11, v6

    const/16 v12, 0x1909

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v13, 0x1401

    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static/range {v25 .. v25}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_2
    const v6, 0x84c4

    invoke-static {v6}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    aget v4, v5, v4

    invoke-static {v15, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindTexture(II)V

    if-eqz v1, :cond_3

    const/16 v17, 0x190a

    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    div-int/lit8 v18, v1, 0x2

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    div-int/lit8 v19, v1, 0x2

    const/16 v21, 0x190a

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x1401

    invoke-static/range {v15 .. v23}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static/range {v24 .. v24}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    div-int/lit8 v19, v1, 0x2

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    div-int/lit8 v20, v1, 0x2

    const/16 v21, 0x190a

    const/16 v15, 0xde1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x1401

    invoke-static/range {v15 .. v23}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static/range {v25 .. v25}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOldScaledSize:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const/4 v1, 0x0

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->loadYuvTex()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mFirstFrame:Z

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mFirstFrame:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    invoke-virtual {v2, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->YUV_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getShader$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Shader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/Shader;->use()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v2, v3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F[F)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->configureShader(Lcom/motorola/camera/ui/widgets/gl/Shader;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    const/4 p2, 0x4

    const/4 v0, 0x5

    if-nez p1, :cond_5

    invoke-static {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x10

    if-ge p1, v2, :cond_6

    mul-int/lit8 v2, p1, 0x4

    invoke-static {v0, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->drawArrays(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindBuffer(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setYuvData(Landroid/media/Image;II)V
    .locals 9

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOrientationOffset:I

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p2

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOrientationOffset:I

    int-to-float p2, p2

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    const/4 p3, 0x0

    aget-object v1, p2, p3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v7

    aget-object p1, p2, p3

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->copyBuffers(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setYuvData(Lcom/motorola/camera/mcf/McfAuxFrameData;II)V
    .locals 7

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOrientationOffset:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v1

    :goto_1
    invoke-virtual {p0, v2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    int-to-float p2, p2

    invoke-virtual {p0, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getLuma()[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getChroma()[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getChroma()[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getStride()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->copyBuffers(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTextureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const-string v2, ", mVbo="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOrientationOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOrientationOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mYBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mYBuffer:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUVBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mYBuffer:[B

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUVBuffer:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mHasCalledTexImage2D:Z

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mOldScaledSize:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    aput v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    aput v2, v1, v3

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVbo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
