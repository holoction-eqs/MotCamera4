.class public final Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mBitmapBlurMode:Z

.field public mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mBlurArea:Landroid/graphics/RectF;

.field public mBlurTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mIdentityMatrix:[F

.field public final mOffScreenBlurTexList:Ljava/util/List;

.field public mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public mPreviewVboId:I

.field public mReusePreview:Z

.field public mSetupFbo:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public mUpdateVbo:Z

.field public mVboId:I

.field public final mVerticesData:[F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Z)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-static {v0, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iput-boolean p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapBlurMode:Z

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVboId:I

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVboId:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mVboId:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawBlurFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;IZFF)V
    .locals 5

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v2, 0x4100

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mTextureId:I

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mBlurDirection:[F

    const/4 v4, 0x0

    aput v2, v3, v4

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    aput v1, v3, v0

    div-float p3, p2, p4

    iget-object p4, p1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->mFboSize:[F

    aput p3, p4, v4

    div-float/2addr p2, p5

    aput p2, p4, v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture$BlurTexture;->onDraw([F[F)V

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setupFbo()V

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z

    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mUpdateVbo:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    invoke-virtual {p1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->generateVbo([F)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mUpdateVbo:Z

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapBlurMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    const/16 v1, 0x4100

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawPreviewFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    :goto_2
    move p1, p2

    move v3, v0

    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, p2

    :goto_4
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v1

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onDrawBlurFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;IZFF)V

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawPreviewFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 6

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    instance-of v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x4100

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p2, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    iput v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mVbo:I

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    goto :goto_2

    :cond_1
    instance-of v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    monitor-enter v0

    :try_start_0
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iput v4, v5, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mVbo:I

    iput-boolean v2, v5, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mUpdateVbo:Z

    iput-boolean v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {p2, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_2
    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    return-void
.end method

.method public final declared-synchronized onPreviewChanged()V
    .locals 1

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mSetupFbo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setBlurRect(Landroid/graphics/RectF;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->FBO_VERTICES_NORMALS:Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;->getData()[F

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVerticesData:[F

    const/4 v4, 0x3

    aput v0, v3, v4

    const/4 v4, 0x4

    aput v2, v3, v4

    const/16 v4, 0x8

    aput v1, v3, v4

    const/16 v4, 0x9

    aput v2, v3, v4

    const/16 v2, 0xd

    aput v0, v3, v2

    const/16 v0, 0xe

    aput p1, v3, v0

    const/16 v0, 0x12

    aput v1, v3, v0

    const/16 v0, 0x13

    aput p1, v3, v0

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mUpdateVbo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setupFbo()V
    .locals 7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBlurArea:Landroid/graphics/RectF;

    if-eqz v2, :cond_1

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v0, v0

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v5, v1, 0x4

    div-int/lit8 v6, v0, 0x4

    :goto_2
    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    goto :goto_3

    :cond_2
    const/4 v4, 0x4

    if-ge v2, v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v5, v1, 0x8

    div-int/lit8 v6, v0, 0x8

    goto :goto_2

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    div-int/lit8 v5, v1, 0x10

    div-int/lit8 v6, v0, 0x10

    goto :goto_2

    :goto_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x5

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mDarkness:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewCopy:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mOffScreenBlurTexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mVboId:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getVboManager()Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewVboId:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPath;->deleteVbo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
