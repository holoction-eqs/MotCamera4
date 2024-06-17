.class public final Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;
.super Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;
.source "SourceFile"


# instance fields
.field public final mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public final drawFbo([F[F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    return-void
.end method

.method public final getContentSize()Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result v2

    add-float/2addr v2, v0

    const/high16 v0, 0x42800000    # 64.0f

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->DP(F)F

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final loadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setDisplayOrientation(I)V
    .locals 3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method

.method public final setPreRotation(FF)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return-void
.end method

.method public final setPress()V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->updateRes()V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->updateRes()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized setVisibility(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
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

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method

.method public final updateContentBox(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final updateRes()V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mSelected:Z

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    :goto_0
    invoke-virtual {v2, v3, v3, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mReverseColor:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    invoke-virtual {v2, v0, v3, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    :goto_1
    return-void
.end method
