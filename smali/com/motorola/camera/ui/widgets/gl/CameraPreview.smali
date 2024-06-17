.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;
.implements Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine$ZoomListener;


# static fields
.field public static final VIEW_MATRIX:[F

.field public static mDebugId:I

.field public static mDrawCount:I

.field public static mDrawId:I

.field public static mDump:Z

.field public static mDumpCount:I

.field public static mDumpFolder:Ljava/io/File;

.field public static mFrameCount:I

.field public static mMaxDumpCount:I


# instance fields
.field public mAlpha:F

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBlurTexSize:Landroid/graphics/PointF;

.field public mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

.field public mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

.field public mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

.field public mCaptureType:I

.field public mCliGestureRecording:Z

.field public mContinuousBlur:Z

.field public final mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mDelayUpdateTexture:Z

.field public final mDensity:F

.field public mDrawIsDualCapture:Z

.field public mDrawIsSuperMode:Z

.field public mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

.field public mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

.field public mEnableUiEvent:Z

.field public mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

.field public mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

.field public mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

.field public mFromMode:I

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public mIsControlPanelOpened:Z

.field public mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

.field public mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

.field public mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

.field public mModeSwitchTargetRatio:F

.field public mOrientation:I

.field public final mPreviewChangeList:Ljava/util/ArrayList;

.field public final mPreviewDiffList:Ljava/util/ArrayList;

.field public mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mProcessUiEvent:Z

.field public final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field public mSkipGestureDetector:Z

.field public mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

.field public mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

.field public mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

.field public mTeleMinZoom:I

.field public mToMode:I

.field public final mUiEventScale:F

.field public mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

.field public mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;


# direct methods
.method public static $r8$lambda$XgMR5Eb-IX4fozPFCcfdQKWL2g8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    iput-boolean v1, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>(I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x7

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    new-instance p2, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-direct {p2, v1, v0}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 p2, -0x1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    new-instance p2, Landroid/view/GestureDetector;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/editor/ui/ScaleImageView$1;

    invoke-direct {v1, p0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    invoke-direct {p2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$MyScaleGestureListener;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    invoke-direct {p2, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    return-void
.end method

.method public static clearOldDumpedPreviewFrames()V
    .locals 6

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "^(In|Out)put[0-9]+(_ts-[0-9]+)?\\.yuv$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;[F[F)V
    .locals 8

    const/16 v0, 0xb90

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    const/16 v0, 0x1e00

    const/16 v1, 0x1e01

    invoke-static {v0, v0, v1}, Landroid/opengl/GLES20;->glStencilOp(III)V

    const-string v1, "glStencilOp"

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const-string v3, "glColorMask"

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const-string v4, "glDepthMask"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 v5, 0x207

    const/4 v6, 0x1

    const/16 v7, 0xff

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    const-string v5, "glStencilFunc"

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v0, v0, v0}, Landroid/opengl/GLES20;->glStencilOp(III)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    const/16 p0, 0x202

    invoke-static {p0, v6, v7}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    return-void
.end method

.method public static getViewMatrixOrigin()V
    .locals 11

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public static isSuperZoomMode()Z
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized animateCapture()V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DOC_POINTS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    const-wide/16 v3, 0xc8

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    const/4 v5, 0x3

    if-ne v5, v1, :cond_2

    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    :goto_1
    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V
    .locals 9

    monitor-enter p0

    :try_start_0
    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;

    invoke-direct {v1, p0, p1, p5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$7;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;F)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p2, v8, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v8, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v8, p6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final animateHidePreview()V
    .locals 15

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const-wide/16 v3, 0x32

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const-wide/16 v10, 0x32

    invoke-virtual {v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v12

    const/4 v13, 0x0

    const/16 v14, 0x9

    move-object v8, p0

    invoke-virtual/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    :goto_0
    return-void
.end method

.method public final applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/BatchDraw;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/BatchDraw;Z)V

    return-void
.end method

.method public final applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/BatchDraw;Z)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize;

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v2, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v2, v12

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float v14, v1, v12

    const/4 v15, 0x0

    cmpl-float v1, v13, v15

    if-eqz v1, :cond_12

    cmpl-float v1, v14, v15

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v1, Landroidx/appcompat/widget/Toolbar$1;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/Toolbar$1;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    const/4 v2, 0x0

    neg-float v10, v13

    neg-float v9, v14

    const v16, 0x419feb85    # 19.99f

    const/high16 v17, 0x42100000    # 36.0f

    const/4 v4, 0x0

    const/high16 v18, 0x42100000    # 36.0f

    move v5, v10

    move v6, v13

    move v7, v9

    move v8, v14

    move/from16 v19, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v18

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->CAMERA_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    const/high16 v9, 0x41200000    # 10.0f

    move v4, v2

    move/from16 v5, v16

    move/from16 v7, v19

    move-object v2, v10

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 2
    sget-object v3, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    .line 3
    sget-object v4, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_1
    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_PERSPECTIVE:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    const/4 v2, 0x0

    const v9, 0x419feb85    # 19.99f

    const/high16 v17, 0x42100000    # 36.0f

    const/4 v4, 0x0

    const/high16 v10, 0x42100000    # 36.0f

    move/from16 v5, v16

    move v6, v13

    move/from16 v7, v19

    move v8, v14

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;->HUD_ORTHO:Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/Toolbar$1;->get(Lcom/motorola/camera/ui/widgets/gl/Matrices$Type;)[F

    move-result-object v3

    const/high16 v9, 0x41200000    # 10.0f

    move v4, v2

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    .line 4
    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mMatrices:Landroidx/appcompat/widget/Toolbar$1;

    .line 5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    .line 8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v16

    const/4 v9, 0x2

    if-eqz v16, :cond_3

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    :cond_2
    :goto_0
    move-object v6, v1

    goto/16 :goto_4

    .line 9
    :cond_3
    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/PreviewSize;

    .line 10
    iget v3, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iput v3, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    iput v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    .line 11
    sget-object v2, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v2}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eqz v2, :cond_5

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 12
    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 13
    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    cmpl-float v3, v2, v15

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 14
    iget v3, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v12

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    goto :goto_3

    :cond_5
    iget-object v2, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/PreviewSize;

    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v2, v4}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 16
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v3

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 17
    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    .line 18
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_2

    .line 19
    :cond_6
    move-object v2, v3

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 20
    iget-object v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    .line 21
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 22
    div-int/2addr v2, v9

    :goto_2
    iget v4, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v4, v4

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 23
    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    .line 24
    iget v3, v3, Landroid/graphics/Insets;->top:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v2, v12

    add-float/2addr v2, v4

    :goto_3
    float-to-int v2, v2

    .line 25
    iput v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    goto/16 :goto_0

    :goto_4
    if-eqz v16, :cond_7

    .line 26
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_5

    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_5
    move-object v5, v1

    const/4 v4, 0x4

    if-eqz p2, :cond_9

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 27
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    .line 28
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    if-eqz v16, :cond_8

    .line 29
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v8, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->applyPreviewChange(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    goto :goto_6

    :cond_8
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v8, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v8, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 30
    :goto_6
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v20

    .line 31
    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v21

    .line 32
    invoke-virtual {v0, v5, v7, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0b0024

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v8, v3

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v23, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;

    move-object/from16 v22, v1

    move-object/from16 v1, v23

    move/from16 v24, v2

    move-object/from16 v2, p0

    move-object/from16 v30, v3

    const/16 v15, 0x8

    move-object/from16 v3, v20

    move v12, v4

    move-object v4, v7

    move-object v7, v5

    move/from16 v5, v24

    move-object/from16 v31, v6

    move v6, v10

    move-object/from16 p2, v7

    const/4 v15, 0x0

    move-object/from16 v7, v22

    move-wide/from16 v24, v8

    const/4 v9, 0x1

    move-object/from16 v8, v21

    move-object/from16 v9, p2

    move/from16 v32, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V

    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v28, 0x2

    const/16 v29, 0x0

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v29}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-array v1, v12, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-object/from16 v2, p2

    aput-object v2, v1, v15

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    aput-object v5, v1, v2

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    move-object/from16 v5, v30

    invoke-virtual {v5, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/16 v2, 0x8

    invoke-virtual {v1, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v6, v31

    move/from16 v7, v32

    goto :goto_8

    :cond_9
    move v12, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move v4, v9

    move/from16 v32, v10

    const/4 v3, 0x1

    const/4 v15, 0x0

    if-eqz v16, :cond_a

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v5, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/PreviewSize;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->applyPreviewChange(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    move-object/from16 v6, v31

    goto :goto_7

    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v5, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/PreviewSize;

    move-object/from16 v6, v31

    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    .line 33
    :goto_7
    invoke-virtual {v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v20

    .line 34
    invoke-virtual {v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v21

    .line 35
    invoke-virtual {v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 36
    invoke-virtual {v2, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v5

    move/from16 v7, v32

    .line 37
    invoke-virtual {v0, v2, v1, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    :goto_8
    const/high16 v8, 0x42b40000    # 90.0f

    if-nez v16, :cond_d

    .line 38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 39
    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v9

    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v10, v8

    float-to-int v10, v10

    invoke-virtual {v9}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v17

    int-to-float v3, v10

    mul-float v15, v17, v3

    float-to-int v15, v15

    const/high16 v17, 0x41800000    # 16.0f

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float v8, v8, v17

    float-to-int v8, v8

    new-instance v4, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v4, v10, v15}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v10, v4, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v17, 0x40000000    # 2.0f

    div-float v20, v3, v17

    sub-float v10, v10, v20

    int-to-float v8, v8

    sub-float/2addr v10, v8

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v5, v7

    int-to-float v15, v15

    div-float v21, v15, v17

    sub-float v5, v5, v21

    sub-float/2addr v5, v8

    const/4 v8, 0x0

    invoke-direct {v4, v10, v5, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    .line 40
    invoke-virtual {v5, v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 41
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 42
    invoke-virtual {v5, v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 43
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    .line 44
    invoke-virtual {v5, v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 45
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    .line 46
    invoke-virtual {v5, v12, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 47
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v4, v3, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v5, v6

    add-float v6, v5, v3

    add-float/2addr v5, v15

    invoke-virtual {v4, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 48
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 49
    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_b

    const/4 v8, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_c

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v9}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v4

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float v4, v4

    invoke-virtual {v5, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :cond_c
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v4, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/PreviewSize;

    iget-object v5, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v3, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 50
    invoke-virtual {v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 51
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v13, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarHeight()F

    move-result v4

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v4, v6

    sub-float/2addr v14, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v4

    div-float/2addr v4, v5

    sub-float/2addr v14, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v13, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 52
    :cond_d
    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    .line 53
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_e

    const/high16 v4, 0x43870000    # 270.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_f

    :cond_e
    move/from16 v33, v3

    move v3, v1

    move/from16 v1, v33

    :cond_f
    new-instance v2, Landroid/graphics/Rect;

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v3, v11, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/PreviewSize;

    iget v3, v3, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 54
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 55
    iput-object v2, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    .line 56
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 57
    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-static {}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    iget-object v3, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v3

    :try_start_1
    iget-object v4, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v6, v5

    .line 60
    invoke-static {v6}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v4, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    .line 61
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v6, v5

    .line 62
    invoke-static {v6}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    iput-object v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->previewRect:Landroid/graphics/Rect;

    goto :goto_a

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_11
    :goto_a
    if-eqz v16, :cond_12

    .line 63
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onScrollEnd(ZZ)V

    goto :goto_b

    :catchall_1
    move-exception v0

    .line 64
    monitor-exit v1

    throw v0

    :cond_12
    :goto_b
    return-void
.end method

.method public final applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/Rotation;)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p3, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget p2, p4, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/high16 p4, 0x42b40000    # 90.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_1

    const/high16 p4, 0x43870000    # 270.0f

    cmpl-float p2, p2, p4

    if-nez p2, :cond_2

    :cond_1
    iget p2, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v2, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {p3, p2, p4, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_2
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p2, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p4

    invoke-virtual {p2, v1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p4, 0x6

    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p4, v1

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p3, v1

    invoke-virtual {p2, p4, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_3
    return-void
.end method

.method public final declared-synchronized checkPreviewSizeForAnim()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final copyFrameToOffscreen(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;F[F[F)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v0, 0x4100

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    const/16 p1, 0x10

    new-array v0, p1, [F

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p2, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p2

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, v0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    return-void
.end method

.method public final declared-synchronized copyPreviewFrame(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    iget-object v1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x2

    aput-object v6, v2, v7

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x3

    aput-object v6, v2, v7

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x4

    aput-object v6, v2, v7

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x5

    aput-object v6, v2, v7

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x6

    aput-object v6, v2, v7

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v7, 0x7

    aput-object v6, v2, v7

    invoke-static {v0, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v5, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final darkenPreview(Z)V
    .locals 11

    if-eqz p1, :cond_0

    const p1, 0x3ebd70a4    # 0.37f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v10, 0x0

    invoke-direct {v1, p0, v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0xc8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mIsControlPanelOpened:Z

    :cond_3
    new-array v1, v10, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v9, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAlpha:F

    return-void
.end method

.method public final declared-synchronized deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 14

    const-string v0, "deferInitSurface dur:"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->checkPreviewSizeForAnim()V

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v6

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSlavePreviewImageReader()Landroid/media/ImageReader;

    move-result-object v7

    invoke-virtual {v5}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getSubPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_3

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iput v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRR()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    :goto_0
    iget-object v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-boolean v1, v8, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-virtual {v8, v6, v9, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-boolean v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-virtual {v5, v7, v9, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCameraPreviewProcessingNeeded()Z

    move-result v12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {v11}, Lcom/motorola/camera/settings/SettingsHelper;->isMonoCamera(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v10

    goto :goto_1

    :cond_4
    move v11, v1

    :goto_1
    iget-object v13, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iput-boolean v12, v13, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v8, v13, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_2

    :cond_5
    iget-object v13, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v13, v8, v9, v11, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iput-boolean v12, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCamera()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iput-boolean v12, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v11

    invoke-virtual {v6, v11, v9, v10, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    :cond_7
    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v6, :cond_9

    iput-boolean v10, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mProcessingEnable:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMcxSupported()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getBackTeleCamera()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v6

    :goto_4
    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v7, v8, v6, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->initSurface(Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;ZLandroid/media/ImageReader;)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p1, v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/fsm/camera/FsmContext;I)V

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_b

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    const/4 v5, 0x3

    invoke-direct {v1, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateViewfinder()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p1, :cond_c

    const-string p1, "CameraPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v1, p2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    return-void
.end method

.method public final declared-synchronized enableFpsReporting()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->APP_INFO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameTimeEnable:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :cond_3
    :goto_1
    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iput-boolean v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mFrameTimeEnable:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v3

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-direct {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_3
    :try_start_3
    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v1, 0x3

    invoke-direct {p2, p0, v0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-object p0
.end method

.method public final getPosition()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    return-object p0
.end method

.method public final getPreviewSize()Lcom/motorola/camera/PreviewSize;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/motorola/camera/PreviewSize;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    invoke-direct {p0, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    return-object p0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 33

    new-instance v0, Lcom/google/common/base/Joiner;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v16, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v17, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v18, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v19, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v20, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v21, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v22, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v23, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v24, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v25, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v26, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v27, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v28, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v29, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v30, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v31, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v32, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v2 .. v32}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object v0, v0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraPreview"

    return-object p0
.end method

.method public final handleHDR10ModeState(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v5, 0x0

    if-eqz v3, :cond_10

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    iget-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getHDR10SwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v2

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3, v6}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v6, "SETTING"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_HDR10:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    :cond_0
    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v6, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const-string v6, "FROM_FACING"

    const/4 v10, -0x1

    invoke-virtual {v1, v6, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v6

    :cond_2
    if-eqz v0, :cond_4

    if-ne v6, v8, :cond_3

    move v11, v5

    goto :goto_1

    :cond_3
    move v11, v8

    goto :goto_1

    :cond_4
    move v11, v6

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v12

    const-string v13, "MODE"

    invoke-virtual {v1, v13, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v10, :cond_5

    move v13, v12

    :cond_5
    if-nez v0, :cond_7

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "SRC_MODE"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_7
    :goto_2
    move v0, v12

    :goto_3
    if-ne v0, v10, :cond_8

    goto :goto_4

    :cond_8
    move v12, v0

    :goto_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_ENTER_HDR10:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v2, v0, :cond_a

    if-nez v2, :cond_9

    invoke-static {v13, v11}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v0, v5

    goto :goto_6

    :cond_a
    :goto_5
    move v0, v8

    :goto_6
    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_EXIT_HDR10:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq v2, v1, :cond_c

    if-nez v2, :cond_b

    invoke-static {v12, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move v1, v5

    goto :goto_8

    :cond_c
    :goto_7
    move v1, v8

    :goto_8
    invoke-virtual {v9, v1, v7}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    invoke-virtual {v9, v0, v4}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    invoke-virtual {v9, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v3, :cond_f

    :cond_d
    invoke-virtual {v9, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move v8, v5

    :cond_f
    :goto_9
    return v8

    :cond_10
    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v9, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_11
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto/16 :goto_c

    :cond_12
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v10}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    iput-boolean v5, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    invoke-virtual {v9, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v13, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v14, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v15, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v16, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v17, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array/range {v11 .. v17}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v9, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    if-eqz v1, :cond_13

    const v1, 0x3ebd70a4    # 0.37f

    move v5, v1

    goto :goto_a

    :cond_13
    move v5, v2

    :goto_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_b

    :cond_14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_b
    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    const/4 v6, 0x7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateFade(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;JFFI)V

    invoke-virtual {v9, v10}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v9, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {v9, v7}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    return v8

    :cond_16
    sget-object v3, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_17

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_17
    return v5

    :cond_18
    :goto_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v6

    invoke-static {v3, v6}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10Mode(II)Z

    move-result v3

    invoke-virtual {v9, v3, v4}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    invoke-virtual {v9, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    invoke-virtual {v0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    return v8

    :cond_19
    invoke-virtual {v9, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_1c

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {v0, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/BatchDraw;Z)V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->HDR10:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->applyPreviewChange(Z)V

    goto :goto_d

    :cond_1a
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v1, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->init()V

    :cond_1b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {v0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    :cond_1c
    :goto_d
    return v8

    :cond_1d
    return v5
.end method

.method public final isDualCaptureTextureEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    const/4 v1, 0x1

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    if-eqz v2, :cond_0

    move p0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_1
    return v0
.end method

.method public final declared-synchronized loadTextures()Z
    .locals 19

    move-object/from16 v9, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroidx/core/view/MenuHostHelper;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v1, v2}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    invoke-virtual {v1, v2}, Landroidx/core/view/MenuHostHelper;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x1

    sget-object v11, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v5, v11

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x0

    iget-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/4 v8, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v5, v11

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM_ASSISTANT_WINDOW:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v4, 0x0

    sget-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    iget-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    const/4 v8, 0x2

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-direct {v1, v9, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    const/4 v7, 0x1

    invoke-direct {v1, v9, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    const/4 v8, 0x2

    invoke-direct {v1, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_75_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;I)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v3, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v1, v9, v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Z)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->loadTexture()V

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliMirrorSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v3

    iget-object v4, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    move-object v1, v11

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iput-object v11, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->loadTexture()V

    :cond_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    :cond_4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v3, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    float-to-int v3, v3

    div-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x5

    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v5, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mRadius:F

    float-to-int v5, v5

    div-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x5

    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->mVerticesSize:I

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v12, 0x7f0603fb

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-direct {v1, v5, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v5, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v5, v2

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v5, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v5, v3

    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    monitor-enter v1

    monitor-exit v1

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-direct {v1, v5, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v5, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v5, v2

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setLineWidth(F)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget v5, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v5, v6

    iput v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    monitor-enter v1

    monitor-exit v1

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    iget-object v5, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mVMatrix:[F

    const/16 v6, 0x10

    invoke-static {v1, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v1, v8, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    :cond_6
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    div-float v14, v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    new-array v11, v6, [F

    invoke-static {v11, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v12, 0x0

    neg-float v13, v14

    neg-float v15, v1

    const/high16 v17, 0x41200000    # 10.0f

    const/high16 v18, 0x41a00000    # 20.0f

    move/from16 v16, v1

    invoke-static/range {v11 .. v18}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->loadTexture()V

    :cond_7
    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->loadTexture()V

    const/4 v1, 0x7

    iput v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Flags;->clear()V

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEndPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v9, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener(Z)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    new-instance v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-direct {v1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;-><init>()V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v1, :cond_8

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawId:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sput v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDebugId:I

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v12, v9, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v13, "0"

    const/high16 v14, 0x42600000    # 56.0f

    const v15, -0xff0100

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    const/high16 v3, 0x43660000    # 230.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v10, v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_8
    invoke-virtual {v9, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F[F)V
    .locals 5

    const-string p3, "DEBUG_FRAME_IDX draw "

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-static {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;[F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3cf5c28f    # 0.03f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v3, 0x303

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    const/16 v1, 0xb90

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string v4, "glDisable"

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-static {v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableStencil(Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;[F[F)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->stencilMask(I)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string v0, "glDisable"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->blendFunc(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isFrameDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->savePreviewPixelsIntoBuffer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_7
    :goto_2
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v0, :cond_8

    sget v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    const-string p1, "CameraPreview"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " display:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onDrawFbo([F[F[F)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_0
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_1
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_3
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_5
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_6
    :goto_1
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v3, v7}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v9, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :goto_2
    invoke-virtual {v3, v7}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_3

    :cond_9
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_3
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    :cond_a
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-nez v3, :cond_b

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_b
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v3, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    :cond_c
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mRect:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mMaxSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/16 v5, 0x10

    new-array v7, v5, [F

    const/4 v10, 0x0

    iget v9, v2, Landroid/graphics/Point;->x:I

    neg-int v11, v9

    int-to-float v11, v11

    const/high16 v17, 0x40000000    # 2.0f

    div-float v11, v11, v17

    int-to-float v9, v9

    div-float v12, v9, v17

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v9, v2

    int-to-float v9, v9

    div-float v13, v9, v17

    int-to-float v2, v2

    div-float v14, v2, v17

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x42100000    # 36.0f

    move-object v9, v7

    invoke-static/range {v9 .. v16}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    new-array v2, v5, [F

    invoke-static {v0, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget-object v5, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v5, v5, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float v5, v5, v17

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v2, v0, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    invoke-static {v2, v4, v4, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mOffscreenTexture:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mScale:F

    invoke-virtual {v1, v3, v0, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyFrameToOffscreen(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;F[F[F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;->mFrameCopyCallback:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->onCopyDone()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPreDraw([F[F[F)Z
    .locals 5

    const-string p3, "DEBUG_FRAME_IDX onPreDraw "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onPreDraw([F[F)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsSuperMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->onPreDraw([F[F)V

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawIsDualCapture:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onPreDraw([F[F)V

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    sget-boolean p1, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    sget p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    const/16 v1, 0xf

    if-ge p1, v1, :cond_3

    if-gtz p1, :cond_2

    sget p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    add-int/2addr p1, v0

    sput p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    :cond_2
    sget p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawId:I

    add-int/2addr p1, v0

    sput p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawId:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const-string v1, "%s-%s-%s-%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDebugId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDrawId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    const-string p1, "CameraPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    move p1, p2

    :goto_0
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    :cond_5
    move p2, v0

    :cond_6
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onRotate(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iput-object v1, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setDisplayOrientation(I)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_5

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v0, :cond_6

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    iput p1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->orientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v0, :cond_e

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDelayUpdateTexture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_SURFACE_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :cond_4
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/BatchDraw;Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mProjection:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->viewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v0, :cond_6

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    :cond_6
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz p1, :cond_7

    iput-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mDrawList:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iput v1, v0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iput p1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStoredPreviewHolder:Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;->mFilteredBatch:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    iput v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->height:I

    iput p2, p1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_b
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCaptureFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->shouldHandleUIEvent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->shouldProcessUIEvent(FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    :cond_1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    :cond_3
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSkipGestureDetector:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_5

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mProcessUiEvent:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p1, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->onScrollEnd(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v2, 0x2f

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v4, 0x0

    const-string v5, "SWITCH_CASE"

    const-string v6, "USE_CASE"

    const-string v7, "MODE_DIRECTION"

    const-string v8, "MODE"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "DUAL_CAPTURE_PREVIEW_TYPE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updatePreviewType(I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0, v8, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v0, v6, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_LAYOUT:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "DUAL_CAPTURE_LAYOUT_TYPE"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v8, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-virtual {v0, v6, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->DUAL_CAPTURE_CAMERA_GROUP:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "DUAL_CAPTURE_CAMERA_GROUP_TYPE"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1, v0, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    :goto_0
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.motorola.camera3.EXTRA_ACTION"

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.motorola.camera3.EXTRA_CONTENT"

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onZoomCompleted()V
    .locals 0

    return-void
.end method

.method public final onZoomStateChange(FLcom/motorola/camera/settings/CameraType;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomMode()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewFirstFrameCallback:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda4;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object p2

    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDensity:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result p2

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final declared-synchronized previewModeChange(FIIIZ)V
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iput p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iput-boolean p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized previewModeChange(IIIZZZ)V
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/motorola/camera/ui/PreviewChange;

    invoke-direct {v0}, Lcom/motorola/camera/ui/PreviewChange;-><init>()V

    iput p1, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iput p2, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iput p3, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iput-boolean p4, v0, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    iput-boolean p5, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iput-boolean p6, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 29

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v14, 0x1

    const/4 v8, 0x3

    iget-object v15, v13, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-nez v2, :cond_a

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/PreviewChange;

    iget-boolean v9, v2, Lcom/motorola/camera/ui/PreviewChange;->mIdle:Z

    if-eqz v9, :cond_3

    iget-boolean v2, v2, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v14

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/PreviewDiff;

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    iget v9, v9, Lcom/motorola/camera/PreviewDiff;->action:I

    if-ne v9, v8, :cond_1

    move v9, v14

    goto :goto_2

    :cond_1
    move v9, v7

    :goto_2
    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    new-instance v9, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v9}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    iput v8, v9, Lcom/motorola/camera/PreviewDiff;->action:I

    iput-boolean v2, v9, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object v2, v15

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v14, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto :goto_4

    :cond_3
    iget-boolean v9, v2, Lcom/motorola/camera/ui/PreviewChange;->mZoom:Z

    if-eqz v9, :cond_4

    iget v9, v2, Lcom/motorola/camera/ui/PreviewChange;->mTargetZoom:F

    iget-boolean v2, v2, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    new-instance v10, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v10}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    iput v5, v10, Lcom/motorola/camera/PreviewDiff;->action:I

    iput-boolean v2, v10, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    iput v9, v10, Lcom/motorola/camera/PreviewDiff;->mZoomScale:F

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v15

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v14, v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :goto_4
    move v2, v7

    goto/16 :goto_7

    :cond_4
    iget v9, v2, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iget v10, v2, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v11, v2, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    iget-boolean v12, v2, Lcom/motorola/camera/ui/PreviewChange;->mSameRatio:Z

    iget-boolean v8, v2, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    iget-boolean v2, v2, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v8

    goto :goto_5

    :cond_5
    move-object v12, v15

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v14, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v14, v7

    div-float v7, v6, v14

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v12

    invoke-static {v10, v11, v7, v8, v12}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v8

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    iget v7, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    new-instance v11, Lcom/motorola/camera/PreviewDiff;

    invoke-direct {v11}, Lcom/motorola/camera/PreviewDiff;-><init>()V

    move-object v12, v15

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v14

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v6, v6, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v6, :cond_8

    iput v4, v11, Lcom/motorola/camera/PreviewDiff;->action:I

    iget-object v6, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v9, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_6
    new-instance v7, Landroid/graphics/RectF;

    iget v9, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v10, v9

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v5, v6

    invoke-direct {v7, v10, v5, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, v11, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    iget-object v5, v13, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    iget-object v7, v13, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v9, v7

    div-float/2addr v9, v8

    float-to-int v9, v9

    invoke-direct {v6, v7, v9}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-interface {v14, v5, v6}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object v5

    iget-object v5, v5, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v7, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_7
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v9, v7

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v10, v5

    invoke-direct {v6, v9, v10, v7, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, v11, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, v13, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v7, v9, v5, v14}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Landroid/graphics/RectF;

    move-result-object v5

    iput-object v5, v11, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    iget-object v5, v13, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v8, v10, v5, v14}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Landroid/graphics/RectF;

    move-result-object v5

    iput-object v5, v11, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    iget-object v6, v11, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v5}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    iput v5, v11, Lcom/motorola/camera/PreviewDiff;->action:I

    goto :goto_6

    :cond_9
    const/4 v5, 0x1

    iput v4, v11, Lcom/motorola/camera/PreviewDiff;->action:I

    :goto_6
    iput v8, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    iput-boolean v2, v11, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v7, v2

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_a
    move v2, v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v14, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-nez v1, :cond_b

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/PreviewDiff;

    iget v1, v1, Lcom/motorola/camera/PreviewDiff;->action:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_b

    invoke-virtual {v14, v5}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_b
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v2

    if-eqz v2, :cond_c

    return-void

    :cond_c
    const/4 v12, 0x6

    invoke-virtual {v14, v12}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->hasAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/PreviewDiff;

    iget v1, v2, Lcom/motorola/camera/PreviewDiff;->action:I

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    if-eq v1, v3, :cond_10

    const/16 v27, 0x2

    if-eq v1, v4, :cond_f

    const/4 v4, 0x3

    if-eq v1, v4, :cond_e

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v14, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/high16 v25, 0x3f800000    # 1.0f

    iget v6, v2, Lcom/motorola/camera/PreviewDiff;->mZoomScale:F

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;

    invoke-direct {v5, v13, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;I)V

    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v22, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move v2, v6

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;)V

    const-wide/16 v23, 0x64

    const/16 v28, 0x0

    move-object/from16 v21, v7

    move/from16 v26, v6

    invoke-direct/range {v21 .. v28}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v7, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v0, 0x1

    invoke-virtual {v14, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_8

    :cond_f
    const-wide/16 v21, 0xc6

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;

    invoke-direct {v2, v13, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$9;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/16 v26, 0x0

    const v23, 0x3f4ccccd    # 0.8f

    const/16 v24, 0x0

    const/16 v25, 0x2

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v3, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v3, 0x3

    invoke-virtual {v14, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    move-object v1, v15

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v27, v15

    goto/16 :goto_d

    :cond_10
    const/4 v3, 0x3

    invoke-virtual {v14, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v2, Lcom/motorola/camera/PreviewDiff;->mBeginRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v0, v2, Lcom/motorola/camera/PreviewDiff;->mEndRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v10}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;

    const/4 v0, 0x0

    invoke-direct {v11, v13, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/PreviewDiff;I)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    :cond_11
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_13

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    goto :goto_9

    :cond_12
    const/16 v18, 0x0

    goto :goto_a

    :cond_13
    :goto_9
    const/16 v18, 0x1

    :goto_a
    if-eqz v18, :cond_14

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    iget v8, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v0

    invoke-virtual {v1, v2, v8}, Landroid/graphics/PointF;->set(FF)V

    move v8, v0

    goto :goto_b

    :cond_14
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_b
    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v20, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;

    const/16 v16, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move/from16 v7, v18

    move-object/from16 v27, v15

    move v15, v12

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;I)V

    const-wide/16 v21, 0x64

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v19, p1

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v14, v2, v15}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_d

    :cond_15
    move-object/from16 v27, v15

    const/4 v1, 0x3

    invoke-virtual {v14, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-boolean v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    const/4 v3, 0x0

    if-nez v1, :cond_16

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    :goto_c
    iget-boolean v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-eqz v0, :cond_17

    iget-boolean v0, v2, Lcom/motorola/camera/PreviewDiff;->mAutoClear:Z

    if-eqz v0, :cond_17

    iput-boolean v1, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_17
    :goto_d
    move-object/from16 v15, v27

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    iput-boolean v0, v15, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_18
    iget-boolean v0, v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    invoke-virtual {v13, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    return-void
.end method

.method public final declared-synchronized registerListener(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_PREVIEW_SWAP:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_LAYOUT_SWITCH:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_CAPTURE_CAMERA_GROUP_SELECT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
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

.method public final registerZoomChangeListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/ZoomStateMachine;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final resetBlurTex()V
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_1
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/Util;->isDeviceOnLandscapeOnDesktopMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->PORTRAIT_LANDSCAPE_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    iget v2, v1, Lcom/motorola/camera/PreviewSize;->height:I

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchTargetRatio:F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBlurRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mBlurTexSize:Landroid/graphics/PointF;

    return-void
.end method

.method public final declared-synchronized setActive(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_1

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_2

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iput-boolean p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    monitor-exit v1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mIsActive:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_4
    move-exception p1

    monitor-exit v1

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setCameraClosing(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_1

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_2

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iput-boolean p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    monitor-exit v1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mClosing:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit v0

    throw p1

    :catchall_4
    move-exception p1

    monitor-exit v1

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setCameraView()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 1
    :goto_3
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setCameraView(ZZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualShowSlave()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v1, :cond_7

    if-nez p1, :cond_5

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p2, :cond_6

    if-nez v0, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    move p1, v2

    goto :goto_5

    :cond_8
    move p1, v3

    :goto_5
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVisibility(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p2, :cond_9

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    .line 3
    :goto_6
    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 4
    invoke-virtual {p2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    :goto_7
    :try_start_1
    const-string p1, "CameraPreview"

    const-string p2, "calling setCameraView but textures are not initialized"

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setSubPreviewVisibility(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V
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

.method public final shouldHandleUIEvent()Z
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_5

    goto :goto_3

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz p0, :cond_5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandleUIEvent:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p0, v2

    :goto_2
    if-eqz p0, :cond_5

    :goto_3
    move v1, v2

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :goto_4
    return v1
.end method

.method public final shouldProcessUIEvent(FF)Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->shouldProcessUiEventStream(FF)Z

    move-result p0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->VOIDE_PORTRAIT_SHOW_SLIDER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandleUIEvent:Z

    if-eqz p2, :cond_1

    const-string p0, "IS_SELECTED"

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_VIDEO_PORTRAIT_SLIDER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    move p0, p2

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoHDR10OrHDR10PlusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->handleHDR10ModeState(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->init()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v5, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updateToggleResource()V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabIhcVideoMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v7

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    invoke-virtual {v1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM_ASSISTANT_WINDOW:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerZoomChangeListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/JsonConfig;->getZoomBlendingSegments()[F

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mTeleMinZoom:I

    goto/16 :goto_4

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingAppClosing(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeSmileCaptureCallback()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->removeGestureCaptureCallback()V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_9
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isExitingIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto/16 :goto_4

    :cond_c
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldSkipFrameForSingleSessionQcfaShot()Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v0, :cond_17

    const-string v1, "QCFA_SHOT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSkipNextFrame()V

    goto/16 :goto_4

    :cond_d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->CONTROL_PANEL_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    goto/16 :goto_4

    :cond_e
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    if-nez v0, :cond_f

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->resetBlurTex()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    :cond_f
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_17

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_4

    :cond_10
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_3

    :cond_11
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v1, v7}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    new-array v1, v4, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v7, v1, v3

    sget-object v7, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v7, v1, v5

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_12
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->enableFpsReporting()V

    goto :goto_4

    :cond_13
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto :goto_4

    :cond_14
    :goto_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LAST_LUX"

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v7}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->getLastLux()F

    move-result v7

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4

    :cond_15
    :goto_2
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    monitor-exit p0

    invoke-virtual {p0, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraView(ZZ)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->onCaptureFinished()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    :cond_16
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isSuperZoomMode()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableSuperZoomSurface()Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_3
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_17
    :goto_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0, v1}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    goto/16 :goto_1e

    :cond_18
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->storePreviewSize()V

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz p1, :cond_5f

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mInitFinished:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_19

    :goto_5
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    goto/16 :goto_1e

    :cond_19
    :try_start_6
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit p1

    throw v0

    :cond_1a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    goto/16 :goto_1e

    :cond_1b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_1c

    :cond_1c
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-nez v7, :cond_1d

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v7}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v7

    if-eqz v7, :cond_21

    :cond_1d
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v10, v9, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v11, v10, v3

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v12, v10, v5

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v12, v10, v4

    sget-object v12, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v12, v10, v8

    invoke-static {v7, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isInitialPreviewDebugOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    filled-new-array {v11}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sput-boolean v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    sput v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getInitialPreviewMaxCount()I

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    const-string v0, "Preview"

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->getDumpDirectoryForFeature(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpFolder:Ljava/io/File;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->clearOldDumpedPreviewFrames()V

    goto :goto_6

    :cond_1e
    sput-boolean v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDump:Z

    sput v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDumpCount:I

    sput v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMaxDumpCount:I

    :cond_1f
    :goto_6
    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v0, :cond_20

    sput v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCount:I

    :cond_20
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    goto/16 :goto_a

    :cond_21
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v7, v4, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v10, v7, v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v10, v7, v5

    invoke-static {v1, v7}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    :goto_7
    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_CAMERA_TOTAL:Lcom/motorola/camera/CameraKpi$KPI;

    goto/16 :goto_1b

    :cond_22
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-nez v1, :cond_57

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-nez v1, :cond_57

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-nez v1, :cond_57

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-nez v1, :cond_57

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_1a

    :cond_23
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ON_UP"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->getVisibleTimestampAt(J)J

    move-result-wide v0

    const-string v2, "CAPTURE_TIMESTAMP"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    iput v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit p0

    const-string v0, "CAPTURE_TRIGGER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p1, v0, :cond_5f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    :goto_8
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    goto/16 :goto_19

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_24
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->MULTI_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_25

    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    iput v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    monitor-exit p0

    goto/16 :goto_18

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_25
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_26

    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    iput v9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCaptureType:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    monitor-exit p0

    goto/16 :goto_1e

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_26
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    goto :goto_9

    :cond_27
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_28

    :goto_9
    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->darkenPreview(Z)V

    goto/16 :goto_1e

    :cond_28
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    goto/16 :goto_1e

    :cond_29
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_SNAP_COPY_PREVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateCapture()V

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v2

    sget-object v6, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    invoke-direct {v1, v2, v3, v0, v6}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/settings/CameraType;Z)V

    const-string v2, "ORIENTATION"

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mOrientation:I

    invoke-virtual {v0, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    monitor-exit v2

    float-to-int v2, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v6, v6, Lcom/motorola/camera/PreviewSize;->height:I

    div-int/2addr v6, v4

    sub-int/2addr v6, v2

    new-instance v2, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v7, v7, Lcom/motorola/camera/PreviewSize;->height:I

    div-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->width:I

    div-int/2addr v7, v4

    sub-int/2addr v6, v7

    invoke-direct {v2, v3, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getVideoSessionData()Lcom/motorola/camera/capturedmediadata/VideoSessionData;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Lcom/motorola/camera/capturedmediadata/VideoSessionData;->getCurrentCaptureVideoData()Lcom/motorola/camera/capturedmediadata/CapturedVideoData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->getCaptureRecord()Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "SNAPSHOT_COUNT"

    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "SNAPSHOT_COUNT"

    add-int/2addr v3, v5

    invoke-virtual {v4, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2a
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameCopyRequest:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$FrameCopyRequest;

    goto/16 :goto_1e

    :catchall_4
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_2b
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopDetectionAllowSupport()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVstabStopOptimizationSupported()Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2c
    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->VIDEO_COMPLETION:Lcom/motorola/camera/CameraKpi$KPI;

    goto/16 :goto_1b

    :cond_2d
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    :goto_a
    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    goto/16 :goto_1e

    :cond_2e
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    :cond_2f
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    :cond_30
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    goto/16 :goto_1e

    :cond_31
    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringAppClosing(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0, v5}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setCameraClosing(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->clearEffects()V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    monitor-exit v1

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_b

    :catchall_5
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_32
    :goto_b
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->deinit()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->unregisterListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    goto/16 :goto_1e

    :cond_33
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v7

    const/4 v9, 0x6

    if-eqz v7, :cond_3f

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v1, v8, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v2, v1, v5

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraKpi$KPI;->TOGGLE_MODE_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_34
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    :cond_35
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->copyPreviewFrame(Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v1, v4, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v4, v1, v3

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    :cond_36
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-ne v2, v6, :cond_37

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    goto :goto_c

    :cond_37
    const-string v2, "SRC_MODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    :goto_c
    const-string v2, "MODE"

    const/4 v6, -0x1

    invoke-virtual {v0, v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne v0, v6, :cond_38

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SRC_MODE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    :cond_38
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object p1

    if-eq p1, v4, :cond_39

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne p1, v0, :cond_3b

    :cond_39
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    if-ne p1, v4, :cond_3b

    const/16 p1, 0x12

    if-ne v0, v9, :cond_3a

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    goto :goto_d

    :cond_3a
    if-ne v0, p1, :cond_3b

    iput v9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    :cond_3b
    :goto_d
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_3c

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    :cond_3c
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz p1, :cond_5f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_1e

    :cond_3d
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    if-nez v0, :cond_3e

    goto/16 :goto_1e

    :cond_3e
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;I)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1e

    :cond_3f
    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-ne v0, v1, :cond_40

    monitor-exit p0

    return-void

    :cond_40
    :try_start_12
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->updatePreviewType(I)V

    :cond_41
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v2, :cond_43

    if-ne v1, v5, :cond_42

    move v1, v3

    goto :goto_e

    :cond_42
    move v1, v5

    :cond_43
    :goto_e
    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v2, :cond_44

    move v11, v5

    goto :goto_f

    :cond_44
    move v11, v3

    :goto_f
    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v0, v2, :cond_45

    move v12, v5

    goto :goto_10

    :cond_45
    move v12, v3

    :goto_10
    if-eqz v11, :cond_4f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ORIGIN_CAMERA_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/CameraType;

    const-string v2, "CAMERA_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/settings/CameraType;

    const-string v4, "ZOOM_SEGMENT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/ZoomSegment;

    const-string v7, "IS_MANUAL_JUMP"

    invoke-virtual {p1, v7, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCase()Z

    move-result v7

    if-nez v7, :cond_48

    invoke-static {v0}, Lcom/motorola/camera/utility/ZoomHelper;->isProModeNumberZoom(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v7

    if-eqz v7, :cond_46

    goto :goto_13

    :cond_46
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, p1, :cond_47

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p1, :cond_47

    const p1, 0x3fb9999a    # 1.45f

    :goto_11
    move v6, p1

    goto/16 :goto_15

    :cond_47
    move v12, v3

    :goto_12
    move v8, v6

    goto :goto_16

    :cond_48
    :goto_13
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingMaxRealZoomX()F

    move-result v3

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getManualBlendingWideMaxRealZoomX()F

    move-result v7

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/camera/settings/Setting;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float v8, v6, v8

    sget-object v9, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const v10, 0x3f8ccccd    # 1.1f

    if-ne v2, v9, :cond_4a

    sget-object v11, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v11, :cond_4a

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p1, :cond_49

    div-float v10, v3, v0

    :cond_49
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne v4, p1, :cond_4c

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v10, p1

    goto :goto_14

    :cond_4a
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v4, :cond_4b

    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, v4, :cond_4b

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getMacroToUwZoomX()F

    move-result p1

    div-float/2addr p1, v8

    goto :goto_11

    :cond_4b
    sget-object v4, Lcom/motorola/camera/settings/CameraType;->BACK_TELE:Lcom/motorola/camera/settings/CameraType;

    if-ne v2, v4, :cond_4d

    if-ne v0, v9, :cond_4d

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    if-eqz p1, :cond_4c

    div-float v10, v7, v0

    :cond_4c
    :goto_14
    move v6, v10

    goto :goto_15

    :cond_4d
    if-ne v2, v4, :cond_4e

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v0, p1, :cond_4e

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v3, p1

    mul-float/2addr v3, v7

    move v6, v3

    :cond_4e
    :goto_15
    move v12, v5

    goto :goto_12

    :goto_16
    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    move-object v7, p0

    move v11, v1

    invoke-virtual/range {v7 .. v12}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(FIIIZ)V

    goto :goto_17

    :cond_4f
    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFromMode:I

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mToMode:I

    const/4 v13, 0x0

    move-object v7, p0

    move v10, v1

    invoke-virtual/range {v7 .. v13}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    :goto_17
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_50
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_5f

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/BatchDraw;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChange(Lcom/motorola/camera/ui/widgets/gl/BatchDraw;)V

    goto/16 :goto_1e

    :cond_51
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    :goto_18
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->setSubPreviewVisibility(Z)V

    goto/16 :goto_1e

    :cond_52
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->resetResult()V

    goto/16 :goto_1e

    :cond_53
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CAPTURE_TRIGGER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p1, v0, :cond_54

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    :cond_54
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCliGestureVideoModes()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result p1

    if-nez p1, :cond_5f

    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    goto/16 :goto_1e

    :cond_55
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->GALLERY_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "OPEN_GALLERY_CANCEL"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    goto/16 :goto_8

    :goto_19
    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1e

    :cond_56
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->GALLERY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5f

    const-string v0, "SETUP_GALLERY_WITH_CUSTOM_ANIMATION"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->animateHidePreview()V

    goto/16 :goto_1e

    :cond_57
    :goto_1a
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v0, :cond_58

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v4, 0x14

    invoke-direct {v2, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_58
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    if-ne v1, v2, :cond_59

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ACTIVITY_LAUNCHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>()V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_59
    iput-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mEnableUiEvent:Z

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->isEnteringIdle(Lcom/motorola/camera/fsm/ChangeEvent;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCliGestureRecording:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->registerListeners(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_5a
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object p1

    if-eqz v1, :cond_5b

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    if-eq v1, v2, :cond_5b

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    if-eq p1, v1, :cond_5b

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v9}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    :cond_5b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderSurface()V

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/motorola/camera/CameraApp;->getInstance()Lcom/motorola/camera/CameraApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    goto/16 :goto_7

    :goto_1b
    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    goto :goto_1e

    :cond_5c
    :goto_1c
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->deferInitSurface(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    new-array v1, v4, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFilterMeisheViewModel:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;

    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->clearEffects()V

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :try_start_13
    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    monitor-exit v1

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_6
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_5d
    :goto_1d
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/ChangeEvent;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->initHumanEffect()V

    :cond_5e
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->initMirrorMode()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :cond_5f
    :goto_1e
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    :try_start_15
    monitor-exit p0

    throw p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized storePreviewSize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getPreviewSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mStartPreviewSize:Lcom/motorola/camera/PreviewSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unloadTextures()V
    .locals 6

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
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->registerListener(Z)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mIsControlPanelOpened:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mControlPanelVisibilityListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mKpiPreviewSnapshot:Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->isDisposed:Z

    sget-object v3, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v4, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER_CLICKED:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v5, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->shutterClickListener:Lcom/motorola/camera/Camera$$ExternalSyntheticLambda7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    iget-object v1, v1, Lcom/motorola/camera/CameraKpiPreviewSnapshotHandler;->cameraFrames:[Ljava/nio/Buffer;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayInnerFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mSubDisplayFullFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewBackgroundTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->unloadTexture()V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVideoPortraitPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->unloadTexture()V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mMirrorPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->unloadTexture()V

    :cond_4
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mVstabIhcSnapshotTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->unloadTexture()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v1}, Lcom/motorola/camera/utility/Flags;->clear()V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mFrameIdTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final updateDualCapturePosition(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->switchCameraInPIPLayout(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateViewfinder()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    move v1, v2

    :cond_3
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    monitor-enter v0

    const/4 v3, 0x0

    :try_start_2
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter v0

    :try_start_3
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mYuvTex:Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;

    monitor-enter v0

    :try_start_4
    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mVerticesData:[F

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/YuvTexture;->mUpdateVbo:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewSubDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    :goto_3
    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_5
    move-exception p0

    monitor-exit v0

    throw p0
.end method
