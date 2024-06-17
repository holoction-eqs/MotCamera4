.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;
.source "SourceFile"


# instance fields
.field public final mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mLazyLoad:Z

.field public mResource:I

.field public mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mLazyLoad:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized deleteTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    if-eqz v0, :cond_0

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

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final generateTexture()V
    .locals 0

    return-void
.end method

.method public final getActiveTexture()I
    .locals 0

    const p0, 0x84c2

    return p0
.end method

.method public final loadResource()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getSpriteData(I)Landroidx/work/WorkQuery$Builder;

    move-result-object v0

    iget-object v1, v0, Landroidx/work/WorkQuery$Builder;->mIds:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mSourceSize:Landroid/graphics/Point;

    iget-object v1, v0, Landroidx/work/WorkQuery$Builder;->mTags:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget-object v2, v0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    div-float/2addr v4, v3

    mul-float/2addr v2, v4

    iget-object v3, v0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    div-float/2addr v5, v4

    mul-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mSourceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, -0x41000000    # -0.5f

    mul-float/2addr v1, v2

    iget-object v2, v0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mSourceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v3, v0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    sub-float/2addr v1, v3

    iget-object v3, v0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget-object v5, v0, Landroidx/work/WorkQuery$Builder;->mUniqueWorkNames:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mDisplayDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mScale:F

    div-float v4, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {p0, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object v0, v0, Landroidx/work/WorkQuery$Builder;->mStates:Ljava/lang/Object;

    check-cast v0, [F

    monitor-enter p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length v1, v0

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesData:[F

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesCount:I

    array-length v1, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mUpdateVertices:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mLazyLoad:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resource not found in atlas "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResourceTexture"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final loadTexture()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mLazyLoad:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadResource()V

    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    return-void
.end method

.method public final declared-synchronized onPreDraw()Z
    .locals 4

    const-string v0, "Invalid vbo id -> "

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDirty:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->deleteTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    return v2

    :cond_3
    :try_start_3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mLazyLoad:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v1, v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadResource()V

    :cond_5
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mUpdateVertices:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->updateVerticesVbo()V

    :cond_6
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVbo:I

    if-nez v1, :cond_7

    const-string v1, "ResourceTexture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :cond_7
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setResource(IZ)V
    .locals 0

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTextureAtlas()Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadResource()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mLazyLoad:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final setViewScale()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lazyLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mLazyLoad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dpi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->mResourceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
