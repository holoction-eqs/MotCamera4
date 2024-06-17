.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public final mFboProjection:[F

.field public mFboSize:Lcom/motorola/camera/PreviewSize;

.field public mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mFlags:Lcom/motorola/camera/utility/Flags;

.field public mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final mIdentityMatrix:[F

.field public mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public volatile mPreviewType:I

.field public mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 9

    invoke-direct {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p3, 0x10

    new-array v0, p3, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mIdentityMatrix:[F

    new-array v1, p3, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboProjection:[F

    new-instance p3, Lcom/motorola/camera/utility/Flags;

    const-class v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    const/4 v3, 0x1

    invoke-direct {p3, v2, v3}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_PREVIEW_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    .line 1
    iget-object p3, p2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    .line 2
    invoke-virtual {p3, p2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    .line 3
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p2

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    .line 6
    move-object p3, p4

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p3

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-direct {p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_0
    const/4 p0, 0x0

    .line 7
    invoke-static {v0, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    neg-int p0, p1

    int-to-float p0, p0

    const/high16 p3, 0x40000000    # 2.0f

    div-float v3, p0, p3

    int-to-float p0, p1

    div-float v4, p0, p3

    neg-int p0, p2

    int-to-float p0, p0

    div-float v5, p0, p3

    int-to-float p0, p2

    div-float v6, p0, p3

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mIdentityMatrix:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboProjection:[F

    new-instance p1, Lcom/motorola/camera/utility/Flags;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->RECORDING:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
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

.method public abstract onDrawFbo()V
.end method

.method public final declared-synchronized onDrawFbo([F[F)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->onDrawFbo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
