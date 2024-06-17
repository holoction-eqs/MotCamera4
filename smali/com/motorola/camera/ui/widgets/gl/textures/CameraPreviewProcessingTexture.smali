.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;
.source "SourceFile"


# static fields
.field public static mToken:I


# instance fields
.field public mIsFirstFrame:Z

.field public final mOnImageAvailable:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;

.field public final mPreviewProcessLock:Ljava/lang/Object;

.field public mProcessingEnable:Z

.field public mSkipNextFrame:Z

.field public mSurfaceFacing:I

.field public mSurfaceFilterSupport:Z

.field public mSurfaceMcfSupport:Z

.field public mSurfaceMode:I

.field public mSurfaceSensorOrientation:I

.field public mTimestamp:J

.field public final mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;


# direct methods
.method public static $r8$lambda$UiDZAu6Hkc1X7-k3ca7FfgCwlaY(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Landroid/media/ImageReader;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mPreviewProcessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    monitor-exit p0

    if-nez v1, :cond_f

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    :try_start_3
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    monitor-exit p0

    if-eqz v1, :cond_f

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :try_start_5
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    monitor-exit p0

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    goto/16 :goto_7

    :cond_2
    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_7
    new-array v4, v1, [J

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsFirstFrame:Z

    if-eqz v5, :cond_3

    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    :try_start_8
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    invoke-virtual {p0, p1, v5, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->processPreview(Landroid/media/Image;Z[JZ)Z

    move-result v5

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsFirstFrame:Z
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-nez v5, :cond_4

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v4

    :cond_3
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    invoke-virtual {p0, p1, v5, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->processPreview(Landroid/media/Image;Z[JZ)Z

    move-result v5

    :cond_4
    move v6, v2

    :goto_0
    if-nez v5, :cond_5

    if-eqz v6, :cond_a

    :cond_5
    monitor-enter p0
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    monitor-exit p0

    if-nez v5, :cond_6

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    monitor-exit p0

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    invoke-virtual {v5, p1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->setYuvData(Landroid/media/Image;II)V

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    :catchall_2
    move-exception v4

    goto/16 :goto_4

    :cond_6
    const-string v5, "CameraPreviewProcessingTexture"

    const-string v6, "image is closed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    aget-wide v4, v4, v2

    iput-wide v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    monitor-enter p0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :try_start_12
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :try_start_14
    monitor-enter p0
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :try_start_17
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    sget-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isProModeSupported(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HISTOGRAM:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    if-eqz v6, :cond_b

    invoke-virtual {v6, p1}, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->processFrame(Landroid/media/Image;)V

    goto :goto_5

    :cond_7
    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsHelper;->isMotionPhotoEnabled(Z)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v1

    goto :goto_2

    :cond_8
    move v6, v2

    :goto_2
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->MOTION_PHOTOS:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    if-eqz v7, :cond_b

    :try_start_18
    invoke-virtual {v7, p1, v6}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->processFrame(Landroid/media/Image;Z)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_3

    :cond_9
    :try_start_19
    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I

    const/16 v7, 0x13

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CINEMAGRAPH:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v6, :cond_b

    :try_start_1a
    invoke-virtual {v6, p1}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->processFrame(Landroid/media/Image;)V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :catch_0
    :goto_3
    move v2, v1

    goto :goto_5

    :catchall_3
    move-exception v5

    :try_start_1b
    monitor-exit p0

    throw v5
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :catch_1
    move v5, v2

    goto :goto_5

    :catchall_4
    move-exception v4

    :try_start_1c
    monitor-exit p0

    throw v4
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :catchall_5
    move-exception v4

    :try_start_1d
    monitor-exit p0

    throw v4

    :goto_4
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :try_start_1e
    throw v4
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :catch_2
    :cond_a
    move v5, v2

    move-object v4, v3

    :catch_3
    :cond_b
    :goto_5
    if-nez v2, :cond_c

    :try_start_1f
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_c
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    if-eqz v4, :cond_d

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_d
    if-eqz v5, :cond_e

    sget p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mToken:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mToken:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_e
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    goto :goto_8

    :catchall_6
    move-exception p1

    :try_start_20
    monitor-exit p0

    throw p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_f
    :goto_6
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :goto_7
    monitor-exit v0

    :goto_8
    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    throw p0
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mPreviewProcessLock:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mOnImageAvailable:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mPreviewProcessLock:Ljava/lang/Object;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mOnImageAvailable:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;

    iget-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-wide p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    return-void
.end method

.method public static setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    iget-object p2, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method


# virtual methods
.method public final getTransformMatrix()V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getTransformMatrix()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSTMatrix:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V
    .locals 2

    const-string v0, "CameraPreviewProcessingTexture"

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v1, :cond_1

    const/4 p4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->releaseSurface()V

    :cond_2
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPhysicalCameraId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMono:Z

    new-instance p1, Landroid/os/HandlerThread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mSurfaceType:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    sput p3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTidCount:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mCameraUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mHandler:Landroid/os/Handler;

    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mOnImageAvailable:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;

    invoke-virtual {p4, p2, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mIsFirstFrame:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p2

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsSupported(Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFilterSupport:Z

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->loadTexture()V
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
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onDraw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mUpdateAvailable:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->updateFrameCount()V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :cond_2
    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTimestamp:J

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestamps:[J

    aget-wide v3, v2, v1

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    aput-wide p1, v2, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mVisibleTimestampUpdate:J

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract processPreview(Landroid/media/Image;Z[JZ)Z
.end method

.method public final declared-synchronized releaseSurface()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->releaseSurface()V

    const/4 v0, 0x0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mToken:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mTokenQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFilterSupport:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setDisplayOrientation(I)V
    .locals 4

    const-string v0, "Update surface orientation: "

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setDisplayOrientation(I)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-eqz v2, :cond_0

    invoke-static {p0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceFacing:I

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, p1, v1, v2}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    const-string p1, "CameraPreviewProcessingTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceSensorOrientation:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

.method public final declared-synchronized setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    if-nez v0, :cond_0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->mPreviewRotation:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSkipNextFrame()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSkipNextFrame:Z

    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->unloadTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
