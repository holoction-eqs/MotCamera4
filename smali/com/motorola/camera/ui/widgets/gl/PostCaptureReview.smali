.class public final Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;
.implements Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;


# instance fields
.field public mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mButtonsLoaded:Z

.field public mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

.field public mDensity:F

.field public volatile mDirty:Z

.field public final mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

.field public mFrameReceived:I

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

.field public mLastFrameReceived:I

.field public mMimeType:Ljava/lang/String;

.field public mOffScreenProj:[F

.field public mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

.field public mReviewState:Z

.field public mShowPlay:Z

.field public mUri:Landroid/net/Uri;

.field public mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

.field public volatile mWmDrawRequired:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mLastFrameReceived:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    return-void
.end method


# virtual methods
.method public final checkState()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->doDelayedDismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dismissReview(Z)V
    .locals 10

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v9, 0x0

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v0, 0xb4

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    const/16 v3, 0x10e

    if-eq p1, v3, :cond_3

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v9

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    if-eqz v2, :cond_4

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_3

    :cond_4
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :goto_3
    move v4, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v2, :cond_5

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_4

    :cond_5
    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_4
    int-to-float p1, p1

    if-eqz v1, :cond_6

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    :cond_6
    move v5, p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Z)V

    const-wide/16 v2, 0xc8

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, p1, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v9, v9}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;)V

    const-wide/16 v2, 0xc8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, p1, v9}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :goto_5
    return-void
.end method

.method public final doDelayedDismiss()V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->POST_CAPTURE_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PostCaptureReview"

    return-object p0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, -0x1

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/high16 v3, -0x1000000

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;[I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, p0, v2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(II)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(II)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setButtonResources(II)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setOffScreenProj()V

    invoke-virtual {p0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final loadWatermarkBitmap(ILjava/nio/ByteBuffer;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v10, p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x1

    const/4 v12, 0x4

    :try_start_0
    new-instance v13, Lokio/Buffer$2;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v14, p2

    :try_start_1
    invoke-direct {v13, v14}, Lokio/Buffer$2;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    invoke-direct {v0, v13}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    const-string v2, "ImageWidth"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v2

    const-string v4, "ImageLength"

    invoke-virtual {v0, v3, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v4}, Landroid/util/Size;-><init>(II)V

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v6, Landroid/util/SizeF;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v7, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v6, v2, v7}, Landroid/util/SizeF;-><init>(FF)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v8

    const-string v2, "DateTime"

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy:MM:dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v2, v9, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/text/ParsePosition;

    invoke-direct {v9, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v2, v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/16 v16, -0x1

    :goto_1
    move-object v2, v5

    move-object v3, v4

    move-object v4, v6

    move/from16 v5, p1

    move v6, v7

    move v7, v8

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v9}, Lcom/motorola/camera/service/WatermarkEditorService;->loadWatermarkBitmap(Landroid/util/Size;Lcom/motorola/camera/PreviewSize;Landroid/util/SizeF;IZZJ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v2, v2, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    neg-int v2, v10

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v2, v0, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iput-boolean v11, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :try_start_3
    invoke-virtual {v13}, Lokio/Buffer$2;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v13}, Lokio/Buffer$2;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_3
    move-exception v0

    move-object/from16 v14, p2

    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw v0

    :catch_0
    move-object/from16 v14, p2

    :catch_1
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v0, -0x1

    if-eq v10, v0, :cond_b

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    if-eqz v10, :cond_9

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/16 v0, 0x5a

    if-ne v0, v10, :cond_7

    const/4 v0, 0x2

    goto :goto_7

    :cond_7
    const/16 v0, 0xb4

    if-ne v0, v10, :cond_8

    const/4 v0, 0x3

    goto :goto_7

    :cond_8
    const/16 v0, 0x10e

    if-ne v0, v10, :cond_9

    move v0, v12

    goto :goto_7

    :cond_9
    :goto_6
    move v0, v11

    :goto_7
    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-static {v12}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v0, v4

    invoke-static {v12}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v4

    aget v0, v4, v0

    :cond_a
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getXSign(I)F

    move-result v5

    mul-float/2addr v5, v3

    iget v3, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v5, v3

    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getYSign(I)F

    move-result v0

    mul-float/2addr v0, v2

    iget v2, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_b
    return-void
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onDrawFbo([F[F[F)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mLastFrameReceived:I

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object p2

    iget v2, p2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v4, v3, Lcom/motorola/camera/PreviewSize;->width:I

    if-eq v2, v4, :cond_0

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v2, v3, Lcom/motorola/camera/PreviewSize;->height:I

    if-eq p2, v2, :cond_0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->resizeTexture()V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewScale()V

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2, p2, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v2, 0x4100

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    invoke-virtual {v2, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    invoke-virtual {v2, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->getPostCaptureTexture(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    if-ne v3, v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x43340000    # 180.0f

    if-eqz v3, :cond_4

    const/16 v6, 0xb4

    if-ne v3, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5, v4, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v2, v5, p2, v4, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    invoke-virtual {v2, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWmDrawRequired:Z

    :cond_6
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    :cond_7
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    if-eqz p1, :cond_8

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/core/view/ContentInfoCompat$CompatImpl;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostCaptureReview()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x1

    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->onPreDraw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

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
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->setDisplayOrientation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->setDisplayOrientation(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->setDisplayOrientation(I)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    :cond_1
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_3

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_2

    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mLastFrameReceived:I

    if-eqz p1, :cond_1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setOffScreenProj()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setButtonPositions(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onUiEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final processKeyEvent(I)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_INTENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/settings/CaptureIntent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/motorola/camera/settings/CaptureIntent;->isCTSMode(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "KEY_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final setButtonPositions(Z)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float/2addr v1, v4

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v5

    add-float/2addr v3, v0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    add-float/2addr v3, v0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v3, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p1, v4, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    neg-float v0, v3

    invoke-virtual {p1, v0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x0

    aput v1, v0, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    float-to-int v1, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v3, v1

    float-to-int v1, v3

    aput v1, v0, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p0, p0

    div-float/2addr p0, v5

    add-float/2addr p0, v1

    float-to-int p0, p0

    const/4 v1, 0x5

    aput p0, v0, v1

    const-string p0, "LAYOUT_X"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->REVIEW_LAYOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setFrameSizes(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 11

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/VideoFormat;

    iget-object v1, v1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    :goto_0
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getTsbOffsetBasedOnOrientation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    iget v4, v4, Lcom/motorola/camera/PreviewSize;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    :cond_2
    iget-object v4, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget v6, v4, Landroid/graphics/Point;->x:I

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v6, v6

    div-float/2addr v4, v6

    const v6, 0x40066666    # 2.1f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x0

    :goto_2
    const/4 v6, 0x0

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/motorola/camera/CameraApp;->mNotchScreenUnuseHeight:I

    int-to-float v4, v4

    goto :goto_3

    :cond_6
    move v4, v6

    :goto_3
    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDensity:F

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v8, v7

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v10, v9, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v10, v10

    sub-float/2addr v10, v3

    sub-float/2addr v10, v4

    sub-float/2addr v10, v8

    iget v4, v9, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v4, v4

    const/high16 v9, 0x41f00000    # 30.0f

    mul-float/2addr v7, v9

    sub-float/2addr v4, v7

    sub-float/2addr v4, v8

    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v9, v9, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v9, :cond_7

    sub-float/2addr v10, v7

    :cond_7
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    new-instance v7, Lcom/motorola/camera/PreviewSize;

    float-to-int v4, v4

    float-to-int v9, v10

    invoke-direct {v7, v4, v9}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v4, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-interface {v2, v7, v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v4, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v7, 0x42b40000    # 90.0f

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_8

    const/high16 v7, 0x43870000    # 270.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_a

    :cond_8
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-direct {v4, v7, v9, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    if-ne v2, v5, :cond_9

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontFacing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v5, 0x43340000    # 180.0f

    add-float/2addr v2, v5

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v2, v5

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    :cond_9
    move-object v2, v4

    :cond_a
    iget v0, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v8, v4

    add-float/2addr v0, v8

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v5, v8

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v0, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v5, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    div-float/2addr v3, v4

    invoke-direct {v0, v6, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, v1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-virtual {p1, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object p0, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {p1, v0, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final setOffScreenProj()V
    .locals 10

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenProj:[F

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v1, v0

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    int-to-float v0, v0

    div-float v5, v0, v4

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v0, p0

    int-to-float v0, v0

    div-float v6, v0, v4

    int-to-float p0, p0

    div-float v7, p0, v4

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x41a00000    # 20.0f

    move v4, v1

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public final declared-synchronized setVisibility(ZZ)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setButtonPositions(Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isTimestampEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
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
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_CODE"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->processKeyEvent(I)V

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/FsmContext;->mVideoSessionData:Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    invoke-virtual {p1}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/CapturedVideoData;->mMediaRecorderData:Lcom/motorola/camera/capturedmediadata/MediaRecorderData;

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {p1}, Lcom/motorola/camera/storage/MediaFile;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mUri:Landroid/net/Uri;

    iget p1, v0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    sget-object v0, Lcom/motorola/camera/ProfileSelector;->QUALITIES_NORMAL:Landroid/util/Range;

    if-ne p1, v5, :cond_1

    const-string p1, "video/mp4"

    goto :goto_0

    :cond_1
    const-string p1, "video/3gpp"

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mMimeType:Ljava/lang/String;

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameReceived:I

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mReviewState:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->checkState()V

    goto/16 :goto_5

    :cond_2
    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "REVIEW_PLAY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mUri:Landroid/net/Uri;

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    if-eqz v0, :cond_3

    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/motorola/camera/Util;->getUriForFile(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_4

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_RESULT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "REVIEW_ACCEPT"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v4}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "REVIEW_ACCEPT"

    goto :goto_1

    :goto_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->dismissReview(Z)V

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppInit(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_8
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;I)V

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDismissRunnable:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    :goto_5
    monitor-exit p0

    return-void

    :catchall_1
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
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mWatermarkTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBlackTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->unloadTexture()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

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
