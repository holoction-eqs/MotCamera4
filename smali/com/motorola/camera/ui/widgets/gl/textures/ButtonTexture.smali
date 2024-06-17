.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mFgRes:I

.field public mFgResPressed:I

.field public final mForceLoad:Z

.field public mLoaded:Z

.field public mMaxAlpha:F

.field public mPressedRes:I

.field public final mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public final mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mUnpressedRes:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mPressedRes:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mUnpressedRes:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgRes:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgResPressed:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mMaxAlpha:F

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mForceLoad:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    return-void
.end method


# virtual methods
.method public abstract getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, -0x40000000    # -2.0f

    div-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/Splitter$1;->inset(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->updateDrawableState()V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BatchDrawTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onLongPress(ZLandroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public final declared-synchronized setButtonResources(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mPressedRes:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mUnpressedRes:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgRes:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgResPressed:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->updateDrawableState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateDrawableState()V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object v0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mPressedState:I

    and-int/lit8 v1, v1, 0x7

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mPressedState:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mPressedRes:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mUnpressedRes:I

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mForceLoad:Z

    invoke-virtual {v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(IZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object v1

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mPressedState:I

    and-int/lit8 v3, v3, 0x7

    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mPressedState:I

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgResPressed:I

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgRes:I

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->setResource(IZ)V

    return-void
.end method
