.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;
.source "SourceFile"


# static fields
.field public static final VERTICES_DATA_PIP:[F

.field public static final VERTICES_DATA_SS:[F


# instance fields
.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mFirstFrameCallbackCount:I

.field public mHandleUIEvent:Z

.field public final mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public final mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

.field public final mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

.field public final mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public final mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

.field public final zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_PIP:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40d56042    # -0.6665f
        0x0
        0x0
        0x3e2e147b    # 0.17f
        0x3f800000    # 1.0f
        -0x40d56042    # -0.6665f
        0x0
        0x3f800000    # 1.0f
        0x3e2e147b    # 0.17f
        -0x40800000    # -1.0f
        0x3f2a9fbe    # 0.6665f
        0x0
        0x0
        0x3f547ae1    # 0.83f
        0x3f800000    # 1.0f
        0x3f2a9fbe    # 0.6665f
        0x0
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;-><init>(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x0

    .line 1
    invoke-direct {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 2
    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 3
    invoke-direct {v3, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 4
    filled-new-array {v1, v3}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 5
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mDualMode:Z

    .line 6
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mMasterRender:Z

    .line 7
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$1;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 8
    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mDualMode:Z

    .line 9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    .line 10
    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object v2

    .line 12
    iget v2, v2, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v2, 0x41500000    # 13.0f

    mul-float/2addr v1, v2

    .line 14
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 15
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;->TRANSPARENT_65_BLACK:Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/GlToolBox$Color;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v2, 0x41300000    # 11.0f

    mul-float/2addr v1, v2

    .line 16
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    .line 17
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->resetAudioLensSwitchTextures()V

    :cond_1
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;)V
    .locals 3

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 19
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 20
    invoke-direct {v2, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 21
    filled-new-array {v0, v2}, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;I)V

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ZOOM_SLIDER_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->zoomTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    return-void
.end method


# virtual methods
.method public final applyPreviewChange(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {v3, v1, v4}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setSizes(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v3, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v1

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v1, v5

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iget-object v5, v5, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v6, v4

    mul-float/2addr v6, v3

    add-float/2addr v6, v1

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_1

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iget-object v5, v5, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v6, v4

    mul-float/2addr v6, v3

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v5, v4

    mul-float/2addr v5, v3

    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v6, v5, v5, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v9

    :goto_0
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v10}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v4

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iget-object v11, v11, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v11, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float/2addr v10, v11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v11

    const/4 v12, 0x4

    if-eqz v11, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v3

    int-to-float v3, v3

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v11

    invoke-static {v11}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iget-object v4, v4, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v10, v2, v4

    :cond_3
    if-eqz v7, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    neg-float v2, v3

    :goto_1
    invoke-virtual {v1, v5, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    if-eqz v7, :cond_5

    neg-float v3, v3

    :cond_5
    invoke-virtual {v6, v5, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_6
    move v2, v10

    goto/16 :goto_5

    :cond_7
    mul-float v2, v10, v3

    if-eqz v7, :cond_8

    move v11, v2

    goto :goto_2

    :cond_8
    move v11, v10

    :goto_2
    if-eqz v7, :cond_9

    move v2, v10

    :cond_9
    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v13}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3cf5c28f    # 0.03f

    mul-float/2addr v13, v14

    iget-object v14, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v14}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v15}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v3

    sub-float/2addr v14, v15

    div-float/2addr v14, v4

    sub-float/2addr v14, v13

    sget-object v15, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v15}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v15

    if-eqz v15, :cond_a

    const/high16 v15, -0x40800000    # -1.0f

    mul-float/2addr v14, v15

    :cond_a
    iget-object v15, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v15}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v15

    int-to-float v15, v15

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v5}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v15, v5

    div-float/2addr v15, v4

    sub-float/2addr v15, v13

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_c

    if-eqz v7, :cond_b

    invoke-virtual {v1, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_3

    :cond_b
    invoke-virtual {v6, v14, v15, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    goto :goto_3

    :cond_c
    if-eqz v7, :cond_d

    move-object v1, v3

    goto :goto_3

    :cond_d
    move-object v6, v3

    :goto_3
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v3, :cond_f

    div-float v5, v4, v10

    invoke-virtual {v3, v5, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v3, v5, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v3, v3, v9

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v7, :cond_e

    move-object v3, v1

    goto :goto_4

    :cond_e
    move-object v3, v6

    :goto_4
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v4, v4, v8

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v4, v12, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource(I)V

    :cond_f
    move v10, v11

    :goto_5
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v10, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v12, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_11

    if-eqz v7, :cond_10

    goto :goto_6

    :cond_10
    move-object v1, v6

    :goto_6
    invoke-virtual {v2, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    :cond_12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v12, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iput-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mHandleUIEvent:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v1

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    return-void
.end method

.method public final getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 10

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_1
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    div-float/2addr v3, v6

    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/common/base/Splitter$1;->scale(F)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    new-instance v7, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v7, v8, v3}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-static {v2}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->centerX()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->centerY()F

    move-result v3

    invoke-direct {p1, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    goto :goto_3

    :cond_3
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move-object p1, v2

    :goto_3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    const/16 v3, 0xb4

    if-eqz v2, :cond_5

    if-ne v2, v3, :cond_4

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    :goto_5
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v2, v6

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    if-eqz v6, :cond_7

    if-ne v6, v3, :cond_6

    goto :goto_6

    :cond_6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    goto :goto_7

    :cond_7
    :goto_6
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    :goto_7
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v3, v6

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v8, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v8

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v8

    cmpg-float v6, v6, v8

    const v8, 0x3ea8f5c3    # 0.33f

    if-gtz v6, :cond_9

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v9, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v9

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_8

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v5

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v5

    div-float/2addr v2, v5

    add-float/2addr v2, v1

    int-to-float v1, v0

    add-float/2addr v1, v2

    :goto_8
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v5

    div-float/2addr v3, v5

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {v2, p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    add-float/2addr p0, v3

    int-to-float v0, v0

    add-float/2addr p0, v0

    goto :goto_a

    :cond_9
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget-object v9, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v9

    invoke-virtual {v1}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_a

    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v5

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    goto :goto_9

    :cond_a
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    div-float/2addr v1, v5

    div-float/2addr v2, v5

    add-float/2addr v2, v1

    int-to-float v1, v0

    add-float/2addr v2, v1

    move v1, v2

    :goto_9
    invoke-virtual {v7}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    div-float/2addr v2, v5

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {v3, p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    add-float/2addr p0, v2

    int-to-float v0, v0

    sub-float/2addr p0, v0

    :goto_a
    invoke-virtual {p1, v1, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    return-object p1
.end method

.method public final loadTexture()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v3

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->setSize(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->mRadius:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    int-to-float v3, v3

    invoke-virtual {v0, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->loadTexture()V

    :cond_3
    return-void
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->onDraw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V
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

.method public final onDrawFbo()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v5

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    const/16 v5, 0x4100

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mIdentityMatrix:[F

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboProjection:[F

    iget v8, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    const/4 v9, 0x0

    if-ne v8, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_3
    invoke-virtual {v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_5
    invoke-static {v9}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    if-eqz v0, :cond_7

    invoke-static {v3, v3, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    invoke-static {v5}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setViewPort$1()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mIdentityMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboProjection:[F

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    :cond_6
    invoke-static {v9}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(I)V

    :cond_7
    return-void
.end method

.method public final onPreDraw([F[F)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->onPreDraw([F[F)V

    :cond_0
    return-void
.end method

.method public final onScrollEnd(ZZ)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v2

    sget-object v3, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->PIP_PREVIEW:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const/4 v4, 0x0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDualCaptureSplitVerticalGuideline()F

    move-result v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3}, Lcom/motorola/camera/utility/TouchKeepOutHelper;->getTouchKeepOut(Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, v2, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    iput-boolean v4, v2, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;->mVisible:Z

    goto/16 :goto_d

    :cond_3
    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v2

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPreviewFitTransform:Lcom/motorola/camera/CameraKpi;

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v7, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    iget-object v7, v7, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v9}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    div-float/2addr v7, v9

    :goto_1
    sget-object v9, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v9}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v9

    if-eqz v2, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v10

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v1

    mul-float/2addr v1, v10

    :goto_2
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070143

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    move v4, v12

    :cond_6
    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_3
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v4

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    new-instance v11, Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v11, v13, v2}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-virtual {v4, v7}, Lcom/google/common/base/Splitter$1;->scale(F)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v2}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v2

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v2, v8

    goto :goto_4

    :cond_8
    iget-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    move v2, v6

    :goto_4
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    iget-object v14, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v14

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_c

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    iget-object v14, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v14

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_a

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    if-eqz v9, :cond_9

    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v9

    int-to-float v9, v10

    sub-float v9, v5, v9

    goto :goto_5

    :cond_9
    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v9

    int-to-float v9, v10

    add-float/2addr v9, v5

    :goto_5
    add-float/2addr v9, v2

    float-to-int v2, v5

    iput v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move v5, v6

    goto :goto_7

    :cond_a
    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    if-eqz v9, :cond_b

    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v9

    int-to-float v9, v10

    add-float/2addr v9, v6

    goto :goto_6

    :cond_b
    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    int-to-float v9, v10

    sub-float v9, v6, v9

    :goto_6
    add-float/2addr v9, v2

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v2

    sub-float v2, v6, v2

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->left:I

    float-to-int v2, v6

    iput v2, v7, Landroid/graphics/Rect;->right:I

    :goto_7
    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v1

    iget-object v1, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v1

    add-float/2addr v1, v2

    int-to-float v2, v10

    sub-float v2, v1, v2

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v4

    sub-float v4, v1, v4

    float-to-int v4, v4

    iput v4, v7, Landroid/graphics/Rect;->top:I

    float-to-int v1, v1

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    move v1, v2

    goto/16 :goto_b

    :cond_c
    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    iget-object v14, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v13, v14

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v14

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_e

    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    if-eqz v9, :cond_d

    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v9

    int-to-float v9, v10

    sub-float v9, v6, v9

    goto :goto_8

    :cond_d
    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v9

    int-to-float v9, v10

    add-float/2addr v9, v6

    :goto_8
    add-float/2addr v9, v2

    float-to-int v2, v6

    iput v2, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->right:I

    goto :goto_a

    :cond_e
    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    if-eqz v9, :cond_f

    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v9

    int-to-float v9, v10

    add-float/2addr v9, v5

    goto :goto_9

    :cond_f
    iget-object v9, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v9

    int-to-float v9, v10

    sub-float v9, v5, v9

    :goto_9
    add-float/2addr v9, v2

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v2

    sub-float v2, v5, v2

    float-to-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->left:I

    float-to-int v2, v5

    iput v2, v7, Landroid/graphics/Rect;->right:I

    move v5, v6

    :goto_a
    invoke-virtual {v11}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    add-float/2addr v2, v1

    iget-object v1, v4, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    int-to-float v1, v10

    add-float/2addr v1, v2

    float-to-int v6, v2

    iput v6, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v4

    add-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :goto_b
    new-instance v2, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;

    invoke-direct {v2, v7}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Lcom/motorola/camera/utility/TouchKeepOutHelper;->sTouchKeepOuts:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_c

    :cond_10
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_c
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v4, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v4, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_11
    const/high16 v6, 0x42340000    # 45.0f

    move v0, v9

    :cond_12
    :goto_d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v0, "DUAL_PREVIEW_DRAG_POSITION"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "DUAL_PREV_SWAP_BTN_ROTATION"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "DUAL_PREV_SWAP_BTN_ROTATION_X"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "DUAL_PREV_DRAG_ACTION_UP"

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "DUAL_PREV_APPLY_PREVIEW_DONE"

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG_END:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final resetAudioLensSwitchTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final setAlpha(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x3ecccccd    # 0.4f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    if-eqz v1, :cond_1

    move p1, v2

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final setDisplayOrientation(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->setDisplayOrientation(I)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v4, :cond_3

    iput v1, v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    iput v1, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v8, 0x2

    mul-int/2addr v6, v8

    invoke-virtual {v7, v6}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    invoke-virtual {v5, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v6

    iget v13, v6, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    int-to-float v6, v1

    sub-float/2addr v6, v13

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    const/high16 v10, 0x43b40000    # 360.0f

    if-gez v9, :cond_0

    add-float/2addr v6, v10

    :cond_0
    const/high16 v9, 0x43340000    # 180.0f

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    sub-float/2addr v6, v10

    :cond_1
    add-float v14, v13, v6

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;

    const/4 v15, 0x1

    invoke-direct {v10, v0, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$3;-><init>(Ljava/lang/Object;FI)V

    const-wide/16 v11, 0x12c

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v9, v6

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    const/4 v9, 0x3

    new-array v10, v9, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    aput-object v4, v10, v18

    aput-object v5, v10, v8

    invoke-virtual {v6, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureMSPreview()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v2, v10}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->getToggleTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;

    invoke-direct {v13, v9, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/PanoUIComponent$4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v14, 0x12c

    move-object v12, v3

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lkotlin/ULong$Companion;JLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    new-array v2, v9, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v5, v2, v11

    aput-object v4, v2, v18

    aput-object v5, v2, v8

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v3, v2, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v7, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v2, v8

    invoke-virtual {v7, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v2, :cond_4

    iput v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    :cond_4
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_5

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    :cond_5
    return-void
.end method

.method public final setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setFirstFrameCallback(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;)V

    return-void
.end method

.method public final setToggleResource(I)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setToggleType$enumunboxing$(I)V

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureFrontCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, p1, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz p1, :cond_3

    const p0, 0x7f0802c4

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/motorola/camera/settings/CameraType;->FRONT_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne p0, p1, :cond_4

    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    const p0, 0x7f0802c3

    goto :goto_3

    :cond_5
    const-string p1, "Can\'t find xml resource for cameraType:%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualCapturePreviewTexture"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_3
    invoke-virtual {v4, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setXmlResource(I)V

    goto/16 :goto_a

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    if-ne p1, v3, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    if-eqz v0, :cond_8

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_MASTER:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->ZOOM_INDICATOR_REAR_SLAVE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    :goto_5
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DualCaptureZoomComponent;

    if-nez p0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const-string v0, ""

    if-nez p0, :cond_a

    move-object p0, v0

    goto :goto_6

    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mValueX:Ljava/lang/String;

    :goto_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne p1, v3, :cond_b

    move v2, v3

    :cond_b
    if-eqz v2, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearMasterCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCaptureRearSlaveCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    :goto_7
    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->getZoomSettingRatio(Lcom/motorola/camera/settings/CameraType;)I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    rem-int/lit8 p1, p0, 0xa

    if-nez p1, :cond_d

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_INT_PATTERN:Ljava/lang/String;

    div-int/lit8 p0, p0, 0xa

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_d
    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomHelper;->getZoomDecimalString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->RATIO_DEC_PATTERN:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_8
    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-enter v4

    :try_start_0
    iget-object p1, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_e
    monitor-enter v4

    :try_start_1
    iget-object p1, v4, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->mValueTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_9
    monitor-exit v4

    :goto_a
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v4

    throw p0
.end method

.method public final setVerticesData(I)V
    .locals 6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_SS:[F

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p0

    const p1, 0x4211745d

    mul-float/2addr p0, p1

    sget-object p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->VERTICES_DATA_PIP:[F

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    move v4, p0

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    monitor-enter v2

    :try_start_0
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setRadius(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    if-eqz v0, :cond_3

    move p0, v3

    :cond_3
    monitor-enter v1

    :try_start_1
    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;->setRadius(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final setVisibility(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_2
    return-void
.end method

.method public final shouldProcessUiEventStream(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboSize:Lcom/motorola/camera/PreviewSize;

    invoke-interface {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_1
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/common/base/Splitter$1;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->unloadTexture()V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;->unloadTexture()V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    return-void
.end method

.method public final declared-synchronized updatePreviewType(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCapturePIPLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewFinderType:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewFinderType:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setViewfinder(I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setVerticesData(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v3, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-virtual {v2, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final updateToggleResource()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setToggleResource(I)V

    :cond_0
    return-void
.end method
