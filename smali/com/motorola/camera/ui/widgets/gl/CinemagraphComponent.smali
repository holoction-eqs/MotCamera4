.class public final Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;

.field public final mAdapters:Ljava/util/Set;

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public volatile mCapturing:Z

.field public mCinemaFrameHandler:Landroid/os/Handler;

.field public mCinemaFrameHandlerThread:Landroid/os/HandlerThread;

.field public mDeferredRotation:Z

.field public final mDensity:F

.field public volatile mEditorStarted:Z

.field public mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

.field public volatile mFrameProcessing:Z

.field public mLastCaptureTime:J

.field public mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapters:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDeferredRotation:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDensity:F

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CinemagraphComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 13

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f1200ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v9, "0"

    const/high16 v10, 0x41c00000    # 24.0f

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDensity:F

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextAlign(Landroid/text/Layout$Alignment;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setOutline(FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mVerticalCenter:Z

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float p0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    return v1
.end method

.method public final onChange()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/limitfunctionality/BatterySaverHandler;->FEATURES:Ljava/util/EnumSet;

    const-string v0, "BatterySaverHandler"

    invoke-static {v0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->isHandlerLimited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f1200a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FORCE_CLOSE_CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
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

.method public final onDraw([F[F[F)V
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final onRotate(I)V
    .locals 3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDeferredRotation:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->updateTipTranslations()V

    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDeferredRotation:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDeferredRotation:Z

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->onRotate(I)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDensity:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result v0

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->updateTipTranslations()V

    return-void
.end method

.method public final declared-synchronized processFrame(Landroid/media/Image;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mLastCaptureTime:J

    sub-long v2, v0, v2

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCapturing:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x42

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mFrameProcessing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mFrameProcessing:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/4 v4, 0x7

    invoke-direct {v3, v4, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mFrameProcessing:Z

    :cond_0
    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mLastCaptureTime:J

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V
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

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 12

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->registerListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInstance()Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->initializeEngine(Landroid/util/Size;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    new-instance v1, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    const/16 v4, 0x17

    invoke-direct {v1, p0, v4}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setInputCallback(Lcom/motorola/camera/cinemagraph/CinemagraphEngine$InputCallback;)V
    :try_end_0
    .catch Lcom/motorola/camera/cinemagraph/CinemagraphException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mFrameProcessing:Z

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEditorStarted:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CinemagraphComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initialize failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f1200a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FATAL_ERROR_CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCapturing:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setRotation(I)V

    monitor-enter p0

    :try_start_1
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CinemagraphComponent"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;

    invoke-direct {v4, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;I)V

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCapturing:Z

    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCinemaFrameHandlerThread:Landroid/os/HandlerThread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapter:Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapters:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;

    invoke-direct {v5, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;I)V

    const-wide/16 v6, 0x12c

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_DRAW_MASK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInstance()Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getCount()I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_4

    invoke-static {}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInstance()Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->buildMaskIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "CAPTURE_TRIGGER"

    const-string v5, "CAPTURE_TRIGGER"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "KEY_CODE"

    const-string v5, "KEY_CODE"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "ORIENTATION"

    const-string v5, "ORIENTATION"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v4, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v5, 0x9

    invoke-direct {v4, v0, v5, v3, v1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEditorStarted:Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v4, 0x7f12009d

    invoke-direct {v3, v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    const/4 v4, 0x4

    iput v4, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    iput-boolean v2, v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v3, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR_CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEditorStarted:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    :cond_6
    invoke-static {p0}, Lcom/motorola/camera/limitfunctionality/FeatureLimiter;->unregisterListener(Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureLimiterListener;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final unloadTextures()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method

.method public final updateTipTranslations()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mDensity:F

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43180000    # 152.0f

    mul-float/2addr v1, v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v6, v6, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v6, v5

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v4, v1

    invoke-direct {v5, v3, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    move-object v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    rem-int/lit16 p0, p0, 0xb4

    const/16 v1, 0x5a

    if-ne p0, v1, :cond_1

    const/16 p0, 0x8c

    goto :goto_1

    :cond_1
    const/16 p0, 0x168

    :goto_1
    add-int/lit8 p0, p0, -0x10

    int-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    :cond_2
    return-void
.end method
