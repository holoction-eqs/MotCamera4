.class public final Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public volatile mEnabled:Z

.field public mHandleUIEvent:Z

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

.field public mInitFinished:Z

.field public final mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public volatile mIsControlPanelOpened:Z

.field public final mIsCopy:Z

.field public final mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public volatile mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public volatile mPreviousProcessFrameResult:I

.field public volatile mProcessFrameResult:I

.field public final mVideoPortraitLevelSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

.field public final mVideoPortraitSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

.field public final mVideoPortraitShowSliderChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

.field public volatile mViewSize:Lcom/motorola/camera/PreviewSize;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsCopy:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInitFinished:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsControlPanelOpened:Z

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitLevelSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitShowSliderChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;)V
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsCopy:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInitFinished:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsControlPanelOpened:Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitLevelSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitShowSliderChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsCopy:Z

    iget-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsControlPanelOpened:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsControlPanelOpened:Z

    return-void
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

.method public final declared-synchronized initHumanEffect()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInitFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isInvalidFrame()Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoPortraitPreviewTexture"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->registerSettingsChangeListener(Z)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInitFinished:Z
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
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->isInvalidFrame()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsCopy:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-direct {v3, v4, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    :goto_0
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(Lcom/motorola/camera/ui/widgets/gl/Rotation;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, v1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-direct {v3, v4, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsCopy:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v4, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-virtual {v3, v4, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsCopy:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsControlPanelOpened:Z

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    :cond_9
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    if-eq p1, p2, :cond_a

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_BLUR_RESULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onDrawFbo([F[F)V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result p2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v4

    if-nez v4, :cond_3

    rsub-int v3, v3, 0x10e

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x5a

    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x168

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, p2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->processAlgorithm(IIZZ)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->isInvalidFrame()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    if-nez p2, :cond_5

    iget p2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float p2, p2

    iput p2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :cond_5
    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    const/4 v4, 0x0

    invoke-direct {p2, v4, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p0, v3, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {p2, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-direct {p1, p2, v4, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v0, 0x4100

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    add-int/lit16 p2, p2, 0xb4

    rem-int/lit16 p2, p2, 0x168

    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->processAlgorithm(IIZZ)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mProcessFrameResult:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->isInvalidFrame()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandleUIEvent:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final processAlgorithm(IIZZ)I
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v5, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;->CAMERA_TYPE_FRONT:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;->CAMERA_TYPE_REAR:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    :goto_0
    invoke-static {}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;->Builder()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;->setCameraType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;->setWidth(I)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;->setHeight(I)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;->setRotation(I)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;->setOES(Z)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;->setTexID(I)Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;->build()Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;

    move-result-object p0

    new-instance p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    move-object v2, p1

    move v4, p4

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;-><init>(IZIII)V

    new-instance p2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;

    invoke-direct {p2, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;-><init>(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;)V

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p1, p0, p2}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->process(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;)I

    move-result p0

    return p0
.end method

.method public final registerSettingsChangeListener(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitLevelSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitSettingChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mVideoPortraitShowSliderChangeListener:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    return-void
.end method

.method public final resetResult()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_BLUR_RESULT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviousProcessFrameResult:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setPreviewSize(Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInitFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->registerSettingsChangeListener(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInitFinished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
