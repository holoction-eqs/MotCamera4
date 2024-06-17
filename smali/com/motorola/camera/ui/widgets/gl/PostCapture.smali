.class public final Lcom/motorola/camera/ui/widgets/gl/PostCapture;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mCaptureType:I

.field public mCroppedBuffer:Ljava/nio/ByteBuffer;

.field public mCroppedSize:Landroid/graphics/Point;

.field public final mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

.field public final mMcfJpegReqQueue:Ljava/util/List;

.field public final mPostCaptureListeners:Ljava/util/Set;

.field public mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

.field public mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    const/4 p1, 0x7

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    return-void
.end method


# virtual methods
.method public final createTempThumbnail(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V
    .locals 5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    invoke-direct {v0, p0}, Landroidx/core/view/ContentInfoCompat$CompatImpl;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->renderToFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput p0, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    iput p0, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    sget-object p0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized getPostCaptureTexture(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-direct {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getPreviewFrame(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Landroidx/core/view/ContentInfoCompat$CompatImpl;
    .locals 3

    new-instance v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    invoke-direct {v0, p0}, Landroidx/core/view/ContentInfoCompat$CompatImpl;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;

    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput p1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    iput p1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCroppedSize:Landroid/graphics/Point;

    goto :goto_0

    :cond_0
    const-string p0, "PostCapture"

    const-string p1, "mCroppedBuffer is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getPostCaptureTexture(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p0, v2, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->renderToFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput p0, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p0

    iput p0, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    :goto_0
    return-object v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 11

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v10}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PostCapture"

    return-object p0
.end method

.method public final isHighestPriority(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v3, v3, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v4, v4, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mPriority:I

    iget v4, p1, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mPriority:I

    if-le v3, v4, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->loadTexture()V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized notifyPostCaptureListeners()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mTextureID:[I

    aget v3, v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mDirty:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->loadYuvTex()V

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mFirstFrame:Z

    :cond_3
    :goto_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v3, v0, :cond_5

    if-ne v2, v0, :cond_8

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/settings/CustomKeyHelper;->QCFA_EARLIER_RELEASE_SHUTTER_EVENT_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-static {v0, v3}, Lcom/motorola/camera/settings/SettingsHelper;->isMetaDataTrue(Ljava/lang/String;Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSingleSessionRemosaicMode()Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    if-eqz v1, :cond_8

    :cond_5
    iget-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfJpegReqQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mMcfInstanceId:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-wide v6, v6, Lcom/motorola/camera/mcf/McfInstanceIdentifier;->mTimeStamp:J

    cmp-long v6, v6, v0

    if-nez v6, :cond_6

    move-object v4, v5

    goto :goto_2

    :cond_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    if-eqz v4, :cond_9

    :try_start_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->isHighestPriority(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getPreviewFrame(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;)Landroidx/core/view/ContentInfoCompat$CompatImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;

    invoke-interface {v2, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;->onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/core/view/ContentInfoCompat$CompatImpl;)V

    goto :goto_3

    :cond_a
    if-eqz v4, :cond_b

    iget-object v0, v4, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v0, v0, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onDrawFbo([F[F[F)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized onRotate(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_1

    invoke-static {v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-static {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setPreviewTexturePostScale(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final renderToFbo(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    if-eqz v5, :cond_0

    :try_start_0
    invoke-static {v5}, Lcom/motorola/camera/saving/ImageCaptureManager;->getCaptureRecord(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    move-result-object v5

    iget v5, v5, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v8, v4

    check-cast v8, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v8}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/motorola/camera/Util;->undoCorrectOrientationRelativeToSensor(IIIZ)I

    move-result v5
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v5, :cond_1

    sget v5, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    goto :goto_0

    :cond_1
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    :goto_0
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    const/16 v7, 0xb4

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v6, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v12, v4

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v12

    invoke-static {v5, v6, v11, v12}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result v6

    new-instance v11, Lcom/motorola/camera/PreviewSize;

    const/16 v12, 0x10e

    const/16 v13, 0x5a

    if-eq v6, v13, :cond_4

    if-ne v6, v12, :cond_3

    goto :goto_1

    :cond_3
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v14, v14, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v14, v14, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_2
    if-eq v6, v13, :cond_6

    if-ne v6, v12, :cond_5

    goto :goto_3

    :cond_5
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v12, v12, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v12, v12, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_4
    invoke-direct {v11, v14, v12}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    new-instance v12, Lcom/motorola/camera/PreviewSize;

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v14, v13, Lcom/motorola/camera/PreviewSize;->width:I

    iget v13, v13, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v12, v14, v13}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    if-eqz v6, :cond_7

    if-ne v6, v7, :cond_8

    :cond_7
    new-instance v12, Lcom/motorola/camera/PreviewSize;

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v13, v6, Lcom/motorola/camera/PreviewSize;->height:I

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-direct {v12, v13, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    :cond_8
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v6, :cond_9

    new-instance v12, Lcom/motorola/camera/PreviewSize;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v12, v6, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    :cond_9
    iget v0, v12, Lcom/motorola/camera/PreviewSize;->width:I

    iget v6, v11, Lcom/motorola/camera/PreviewSize;->width:I

    if-lt v0, v6, :cond_a

    iget v13, v12, Lcom/motorola/camera/PreviewSize;->height:I

    iget v14, v11, Lcom/motorola/camera/PreviewSize;->height:I

    if-lt v13, v14, :cond_a

    move v0, v6

    goto :goto_5

    :cond_a
    if-ge v0, v6, :cond_b

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v11, v11

    int-to-float v12, v0

    int-to-float v6, v6

    div-float/2addr v12, v6

    mul-float/2addr v12, v11

    float-to-int v14, v12

    goto :goto_5

    :cond_b
    int-to-float v0, v6

    iget v14, v12, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v14

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v11, v11

    div-float/2addr v6, v11

    mul-float/2addr v6, v0

    float-to-int v0, v6

    :goto_5
    invoke-virtual {v1, v0, v14}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    int-to-float v0, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    int-to-float v11, v14

    mul-float/2addr v6, v11

    invoke-virtual {v1, v0, v6, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    new-array v11, v8, [F

    invoke-static {v11, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/16 v16, 0x0

    neg-float v12, v0

    neg-float v13, v6

    const/high16 v21, 0x41200000    # 10.0f

    const/high16 v22, 0x41a00000    # 20.0f

    move-object v15, v11

    move/from16 v17, v12

    move/from16 v18, v0

    move/from16 v19, v13

    move/from16 v20, v6

    invoke-static/range {v15 .. v22}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v11, 0x0

    :goto_7
    if-nez v11, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x4

    if-eqz v2, :cond_10

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;->mMcfMetadata:Lcom/motorola/camera/mcf/McfMetadata;

    if-eqz v2, :cond_10

    sget-object v6, Lcom/motorola/camera/mcf/McfMetadata;->QCAMERA3_JPEG_ENCODE_CROP_RECT:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    const/4 v12, 0x1

    invoke-static {v6, v12}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v13

    if-eqz v2, :cond_10

    if-eqz v6, :cond_10

    new-array v14, v0, [F

    aget v15, v2, v9

    int-to-float v15, v15

    aput v15, v14, v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v15

    aget v16, v2, v12

    sub-int v15, v15, v16

    int-to-float v15, v15

    aput v15, v14, v12

    aget v15, v2, v9

    const/16 v16, 0x2

    aget v17, v2, v16

    add-int v15, v15, v17

    int-to-float v15, v15

    aput v15, v14, v16

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v15

    aget v17, v2, v12

    const/16 v18, 0x3

    aget v2, v2, v18

    add-int v17, v17, v2

    sub-int v15, v15, v17

    int-to-float v2, v15

    aput v2, v14, v18

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v17, -0x41000000    # -0.5f

    mul-float v0, v0, v17

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v17

    invoke-virtual {v2, v0, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    if-eqz v5, :cond_e

    if-ne v5, v7, :cond_f

    :cond_e
    iget v0, v13, Landroid/graphics/Point;->y:I

    iget v12, v13, Landroid/graphics/Point;->x:I

    invoke-virtual {v13, v0, v12}, Landroid/graphics/Point;->set(II)V

    :cond_f
    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, v10

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v0, v12

    iget v12, v13, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    mul-float/2addr v12, v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v12, v6

    invoke-virtual {v15, v0, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, v4

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v13, 0x0

    aget v0, v14, v9

    aget v2, v14, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v2, v14, v9

    aget v6, v14, v16

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/4 v2, 0x1

    aget v6, v14, v2

    aget v8, v14, v18

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v16

    aget v2, v14, v2

    aget v6, v14, v18

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v17

    const/high16 v18, 0x41200000    # 10.0f

    const/high16 v19, 0x41a00000    # 20.0f

    move-object v12, v11

    move v14, v0

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez v2, :cond_11

    move-object v2, v4

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    invoke-virtual {v3, v0, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    :cond_12
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    rem-int/lit16 v6, v5, 0xb4

    const/high16 v8, 0x43340000    # 180.0f

    if-nez v6, :cond_13

    invoke-virtual {v3, v8, v10, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    invoke-virtual {v3, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_8

    :cond_13
    invoke-virtual {v3, v8, v0, v10, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-direct {v6, v8, v1, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v3, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_8
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const/16 v2, 0x10

    new-array v6, v2, [F

    invoke-static {v1, v9, v6, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-float v1, v5

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v6, v1, v0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->rotate([FFFFF)V

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_17

    :cond_14
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    if-eqz v5, :cond_16

    if-ne v5, v7, :cond_15

    goto :goto_9

    :cond_15
    invoke-static {v6, v9, v10, v2, v10}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_a

    :cond_16
    :goto_9
    invoke-static {v6, v9, v2, v10, v10}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_17
    :goto_a
    invoke-virtual {v3, v6, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final declared-synchronized setCaptureType$enumunboxing$(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x7

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    :goto_0
    const-string v0, "SHOT_ONGOING"

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/CameraKpi;->contains(Lcom/motorola/camera/CameraKpi$KPI;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "PRELOCK_FOCUS_EXIT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/CameraKpi;->removeKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mCaptureType:I

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    :cond_3
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    :goto_1
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    :goto_2
    const-string v0, "SHOT_ONGOING"

    goto/16 :goto_6

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHwQcfa()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isQcfaCaptureOngoing()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$enumunboxing$(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SEQ_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    :goto_4
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_a

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_MCF_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$enumunboxing$(I)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "SEQ_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$enumunboxing$(I)V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    goto/16 :goto_0

    :goto_5
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_a
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_13

    goto/16 :goto_2

    :goto_6
    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v3, 0x4

    goto/16 :goto_a

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_d

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RECORDING_ERROR"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;I)V

    :goto_7
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    goto :goto_8

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v4, "PANO_CAPTURE_SUCCESS"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mTimestamp:J

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;I)V

    goto :goto_7

    :goto_8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_b

    :cond_11
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mMcfAdapter:Lcom/motorola/camera/ui/widgets/gl/PostCapture$1;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    goto :goto_b

    :cond_12
    :goto_9
    const/4 v3, 0x5

    :goto_a
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->setCaptureType$enumunboxing$(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_13
    :goto_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostViewTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPreviewDumpTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
