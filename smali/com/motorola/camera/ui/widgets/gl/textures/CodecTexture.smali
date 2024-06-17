.class public final Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public volatile mAudioLensSwitchEnabled:Z

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mIdentityMatrix:[F

.field public mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mSelfieFlipX:I

.field public mSelfieFlipY:I

.field public mSelfieShouldFlip:Z

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p2, 0x10

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mIdentityMatrix:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-static {p2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method


# virtual methods
.method public final loadTexture()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    return-void
.end method

.method public final onDrawFbo([F[F)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v1, 0x4100

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mAudioLensSwitchEnabled:Z

    if-eqz v1, :cond_0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->RECORDING:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mIdentityMatrix:[F

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    return-void
.end method

.method public final unloadTexture()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    return-void
.end method
