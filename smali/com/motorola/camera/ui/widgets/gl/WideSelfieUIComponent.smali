.class public final Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/lenovo/core/WideSelfieRotationDetector$RotationDetectorListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

.field public mAccumulateX:F

.field public mAccumulateX_whenFirstShoot:F

.field public mAccumulateY:F

.field public mAccumulateY_whenOKtoShoot:F

.field public mAccumulateZ:F

.field public mAccumulateZ_whenFirstShoot:F

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

.field public mBeingCovered:Z

.field public mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

.field public mDeferredRotation:Z

.field public mDensity:F

.field public mDisplayWidth:F

.field public mFirstShoot:Z

.field public mGuideBackgroundResources:[I

.field public mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public mGuideForegroundResources:[I

.field public mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public final mGuideRectColor:I

.field public mHandlerIsProcessing:Z

.field public mImageIdNeedtoShoot:I

.field public mIsCapturing:Z

.field public mLeftImageAlreadyShotFlag:I

.field public final mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

.field public mPreImageIdNeedtoShoot:I

.field public mPreviewOffset:F

.field public mResourceIndex:I

.field public mRightImageAlreadyShotFlag:I

.field public mRotationChange:I

.field public mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

.field public mSetGuideResourceTimer:Ljava/util/Timer;

.field public mSmallPreviewHeight:F

.field public mSmallPreviewWidth:F

.field public mSplitMode:Z

.field public mStartPoint:Landroid/graphics/Point;

.field public mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

.field public mTimerIsRunning:Z

.field public final mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

.field public mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

.field public mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-direct {p2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 p2, 0x0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getColors()Lcom/motorola/camera/ui/widgets/ColorToolbox;

    move-result-object p1

    iget p1, p1, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    return-void
.end method


# virtual methods
.method public final animateFlickerGuide()V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;

    const/4 v11, 0x1

    invoke-direct {v3, p0, v11}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    const-wide/16 v4, 0x258

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/16 v9, 0x3e8

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    aput-object v3, v2, v11

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v10, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p0, v10, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final animateShowLivePreview()V
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;

    const/4 v11, 0x2

    invoke-direct {v3, p0, v11}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-array v2, v11, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    aput-object v3, v2, v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v10, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p0, v10, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public final getGuideCenterX()F
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    const/16 v1, 0x5a

    const/16 v2, 0x10e

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x42180000    # 38.0f

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    if-ne p0, v2, :cond_2

    neg-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public final getGuideCenterY(F)F
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result p1

    const/high16 v0, 0x42c40000    # 98.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v0

    add-float/2addr p0, p1

    return p0

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v0, 0x42180000    # 38.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    sub-float/2addr p1, p0

    :cond_2
    return p1
.end method

.method public final getProgressMessage(Landroid/os/Bundle;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "preview"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    goto :goto_1

    :cond_2
    :goto_0
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "maxWidth"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "maxHeight"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v2, v2

    mul-float v6, v2, v4

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    div-float v7, v4, v7

    float-to-int v6, v6

    float-to-int v8, v4

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    new-instance v10, Landroid/graphics/Rect;

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    div-float/2addr v12, v7

    sub-float v7, v2, v12

    float-to-int v7, v7

    const/4 v13, 0x2

    div-int/2addr v7, v13

    add-float/2addr v12, v2

    float-to-int v2, v12

    div-int/2addr v2, v13

    invoke-direct {v10, v7, v11, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    float-to-int v2, v2

    invoke-direct {v1, v11, v11, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v3, v10, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v5, v3, v2

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-double v5, v3

    const/high16 v3, 0x40800000    # 4.0f

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    div-double/2addr v5, v9

    const/16 v3, 0x3f2

    new-array v9, v3, [F

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v14

    int-to-float v10, v11

    const v12, 0x3d23d70a    # 0.04f

    mul-float v14, v10, v12

    float-to-double v14, v14

    sub-double v14, v7, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v12, v16, v5

    double-to-float v12, v12

    aput v12, v9, v11

    neg-float v12, v4

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    aput v12, v9, v2

    neg-double v2, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v5

    move/from16 v20, v12

    add-double v11, v18, v2

    double-to-float v11, v11

    const/4 v12, 0x2

    aput v11, v9, v12

    const v11, 0x3c23d70a    # 0.01f

    mul-float/2addr v10, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v10, v12, v10

    const/16 v18, 0x3

    aput v10, v9, v18

    const/16 v18, 0x4

    aput v12, v9, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v11, v18, v5

    double-to-float v11, v11

    const/4 v12, 0x5

    aput v11, v9, v12

    div-float/2addr v4, v13

    const/4 v11, 0x6

    aput v4, v9, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v5

    add-double/2addr v11, v2

    double-to-float v11, v11

    const/4 v12, 0x7

    aput v11, v9, v12

    const/16 v11, 0x8

    aput v10, v9, v11

    const/16 v10, 0x9

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x0

    :goto_2
    const/16 v12, 0x64

    if-ge v10, v12, :cond_3

    mul-int/lit8 v12, v10, 0xa

    add-int/lit8 v13, v12, 0xa

    add-int/lit8 v10, v10, 0x1

    int-to-float v14, v10

    const v15, 0x3d23d70a    # 0.04f

    mul-float v11, v14, v15

    move/from16 v18, v10

    float-to-double v10, v11

    sub-double v10, v7, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v24, v7

    mul-double v7, v22, v5

    double-to-float v7, v7

    aput v7, v9, v13

    add-int/lit8 v7, v12, 0xb

    aput v20, v9, v7

    add-int/lit8 v7, v12, 0xc

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v22, v22, v5

    move-object v8, v1

    add-double v0, v22, v2

    double-to-float v0, v0

    aput v0, v9, v7

    add-int/lit8 v0, v12, 0xd

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v14, v1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v13, v7, v14

    aput v13, v9, v0

    add-int/lit8 v0, v12, 0xe

    aput v7, v9, v0

    add-int/lit8 v0, v12, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    move-object/from16 p1, v8

    mul-double v7, v21, v5

    double-to-float v7, v7

    aput v7, v9, v0

    add-int/lit8 v0, v12, 0x10

    aput v4, v9, v0

    add-int/lit8 v0, v12, 0x11

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v7, v2

    double-to-float v7, v7

    aput v7, v9, v0

    add-int/lit8 v0, v12, 0x12

    aput v13, v9, v0

    add-int/lit8 v12, v12, 0x13

    const/4 v0, 0x0

    aput v0, v9, v12

    move-object/from16 v1, p1

    move v11, v0

    move/from16 v10, v18

    move-wide/from16 v7, v24

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_3
    move-object/from16 p1, v1

    monitor-enter p1

    const/16 v0, 0x3f2

    :try_start_0
    new-array v1, v0, [F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p1

    :try_start_1
    iput-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesData:[F

    const/16 v3, 0xca

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mVerticesCount:I

    const/4 v3, 0x0

    invoke-static {v9, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mUpdateVertices:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    :goto_3
    monitor-exit v2

    throw v0
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 12

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PANO_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/PanoShotStates;->PS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;->LENOVO_SELFIE_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v11}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WideSelfieUIComponent"

    return-object p0
.end method

.method public final getThumbnailCenterY()F
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSplitMode:Z

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v2

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDisplaySize()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "large"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p0, v0

    :cond_3
    add-float/2addr v1, p0

    return v1

    :cond_4
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public final ifAllowtoTakePicture()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

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

.method public final loadTextures()Z
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08029b

    const v1, 0x7f08029c

    const v2, 0x7f080299

    const v3, 0x7f08029a

    const v4, 0x7f08029d

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    const v0, 0x7f08029f

    const v1, 0x7f0802a0

    const v3, 0x7f08029e

    const v4, 0x7f0802a1

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    goto :goto_0

    :cond_0
    const v0, 0x7f080296

    const v1, 0x7f080297

    const v2, 0x7f080294

    const v3, 0x7f080295

    const v4, 0x7f080298

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    const v0, 0x7f0802a3

    const v1, 0x7f0802a4

    const v3, 0x7f0802a2

    const v4, 0x7f0802a5

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v1, 0x42a60000    # 83.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sSelfiePreviewHeight:I

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    monitor-enter v0

    :try_start_0
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mLineWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    new-instance v0, Lcom/lenovo/core/WideSelfieRotationDetector;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/lenovo/core/WideSelfieRotationDetector;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f120112

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const v1, 0x3e3851ec    # 0.18f

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    monitor-enter v0

    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreTranslation(FFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreRotation(FF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setDisplayOrientation(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x42740000    # 61.0f

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    :goto_1
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr p0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p0, v2

    sub-float/2addr v1, p0

    float-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setWordWrapWidth(I)V

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final onDraw([F[F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->VIEW_MATRIX:[F

    invoke-virtual {v0, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p2, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getViewMatrixOrigin()V

    invoke-virtual {p2, v1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p2, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->animationUpdate([F)Z

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

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
    .locals 12

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    return-void

    :cond_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v0, 0xb4

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/16 v4, 0x10e

    if-eq p1, v4, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p1, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v2, p1, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearRotation()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_4

    if-ne v2, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    int-to-float v2, v2

    invoke-virtual {v0, v2, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation(FFFF)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz v0, :cond_7

    const/4 p0, 0x3

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :cond_7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;

    const/4 v11, 0x0

    invoke-direct {v4, p0, v11}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;I)V

    const-wide/16 v5, 0xc8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-array v3, p1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    aput-object v4, v3, v11

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    aput-object v4, v3, v1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v3, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_9
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 8

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->isSplitMode(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSplitMode:Z

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget-object v2, v1, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_1

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v5, "context"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    const-string v5, "sensorManager"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/motorola/camera/shared/Util;->getCamAlignedSensor(Landroid/hardware/SensorManager;I)Landroid/hardware/Sensor;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    :goto_1
    iput-object v3, v1, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSplitMode:Z

    :cond_3
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDeferredRotation:Z

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->onRotate(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result v0

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v3, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x42100000    # 36.0f

    add-float/2addr v3, v5

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v3, v2

    mul-float/2addr v2, v5

    neg-float v5, v2

    add-float v6, v3, v2

    sub-float/2addr v3, v2

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v3, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v5, v3

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getNavBarSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    add-float/2addr v3, v5

    add-float/2addr v3, v2

    div-float v1, v3, v4

    :cond_7
    add-float/2addr v1, v0

    :goto_3
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr p1, v0

    iget p2, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/16 v0, 0xe

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setGuideResource$enumunboxing$(II)V
    .locals 5

    if-eqz p1, :cond_8

    const/4 v0, -0x1

    add-int/2addr p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    if-ne p2, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    if-ne p2, v4, :cond_4

    :goto_0
    const/4 v1, 0x4

    goto :goto_2

    :cond_4
    if-ne p2, v3, :cond_5

    :goto_1
    const/4 v1, 0x5

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p1

    goto :goto_3

    :cond_6
    move p1, v0

    :goto_3
    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundResources:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundResources:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setColor(I)V

    return-void

    :cond_8
    const/4 p0, 0x0

    throw p0
.end method

.method public final setSavingProgressVisible(Z)V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-eqz p1, :cond_0

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;

    const/4 v1, 0x4

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$12;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V

    const-wide/16 v3, 0x7d0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, -0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v9, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations$1()V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final setVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method

.method public final setupUIPosition()V
    .locals 13

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;->mProjectMatrix:[F

    const/4 v4, 0x0

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->width:I

    neg-int v5, v1

    int-to-float v5, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    const/4 v12, 0x0

    sub-float/2addr v5, v12

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v6, v1, v12

    iget v1, v2, Lcom/motorola/camera/PreviewSize;->height:I

    neg-int v2, v1

    int-to-float v2, v2

    div-float/2addr v2, v11

    sub-float v7, v2, v0

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v8, v1, v0

    const v9, 0x419feb85    # 19.99f

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v12, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iput-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, v12, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v2, v4, v5

    iput-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v3

    invoke-virtual {v1, v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v3

    invoke-virtual {v1, v2, v3, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v11

    const/high16 v3, 0x41a00000    # 20.0f

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    mul-float/2addr v4, v3

    sub-float/2addr v0, v4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->getScaledHeight()F

    move-result p0

    div-float/2addr p0, v11

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDensity:F

    const/high16 v3, 0x42880000    # 68.0f

    mul-float/2addr v3, p0

    const/high16 v4, 0x42200000    # 40.0f

    mul-float/2addr p0, v4

    add-float/2addr p0, v3

    :goto_0
    sub-float/2addr v0, p0

    invoke-virtual {v1, v2, v0, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void
.end method

.method public final declared-synchronized stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/WideSelfieStates;->LENOVO_SELFIE_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_1

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    sput v0, Lcom/motorola/camera/panorama/PanoHelper;->sPaddingBottom:F

    sget v0, Lcom/motorola/camera/panorama/PanoHelper;->sSelfiePreviewHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Landroid/util/Size;

    invoke-direct {v0, v6}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iget v6, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    mul-float/2addr v6, v7

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v6, v0

    iput v6, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0, v4, v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationX(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setColor(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v0, v4, v1, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationX(FFFF)D

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v6, v1, v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v6, v1, v3

    sget-object v6, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    const-wide/16 v5, 0x96

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setupUIPosition()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateShowLivePreview()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mDeleteTex:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreviewOffset:F

    invoke-virtual {v0, v4, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setSavingProgressVisible(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mVisibleSelfieSmallPreviewTexRunnable:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    goto/16 :goto_7

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRotationChange:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideRectColor:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->setColor(I)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    goto :goto_1

    :goto_3
    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto/16 :goto_7

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iput v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mCurOrientaion:I

    iput-object p0, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mRotationDetectorListener:Lcom/lenovo/core/WideSelfieRotationDetector$RotationDetectorListener;

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_6
    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mLineraAccelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_e

    iget-object v2, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_7

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumlateXDetector:Lcom/lenovo/core/WideSelfieRotationDetector;

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mTimestamp:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateX:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateY:F

    iput v4, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mAccumulateZ:F

    iget-object v1, v0, Lcom/lenovo/core/WideSelfieRotationDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_7

    :cond_9
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v4, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v1, v5, v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v4, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v1, v4, v3

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setSavingProgressVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setVisibility(Z)V

    goto :goto_7

    :cond_b
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_5

    :cond_c
    move v3, v2

    :goto_5
    if-nez v3, :cond_e

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPanelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_7

    :cond_d
    :goto_6
    iget-object v0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getProgressMessage(Landroid/os/Bundle;)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    :cond_e
    :goto_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimations$1()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_f
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSavingProgressTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTextTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->unloadTexture()V

    return-void
.end method

.method public final updateAngle(FFF)V
    .locals 41

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    if-eqz v4, :cond_3c

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    sget-object v6, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v5, v6}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v5

    const/16 v6, 0xb4

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const/high16 v8, 0x41700000    # 15.0f

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_0

    :cond_1
    iput v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    goto :goto_3

    :cond_2
    :goto_0
    move-object v5, v7

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    :goto_1
    const/high16 v5, 0x41a00000    # 20.0f

    :goto_2
    iput v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/4 v15, 0x5

    const/16 v10, 0x5a

    const/4 v11, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/16 v12, 0x10e

    const/high16 v18, 0x41c80000    # 25.0f

    if-eqz v4, :cond_d

    if-eq v4, v10, :cond_a

    if-eq v4, v6, :cond_7

    if-eq v4, v12, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    mul-float v19, v4, v5

    cmpl-float v20, v2, v19

    if-ltz v20, :cond_5

    add-float v19, v19, v9

    cmpg-float v19, v2, v19

    if-gtz v19, :cond_5

    const/16 v4, 0xa

    goto/16 :goto_6

    :cond_5
    neg-float v6, v4

    cmpg-float v20, v2, v6

    if-gtz v20, :cond_6

    sub-float v20, v6, v9

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_6

    const/16 v4, 0xb

    goto/16 :goto_6

    :cond_6
    sub-float v6, v6, v18

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_11

    add-float v4, v4, v18

    cmpl-float v4, v2, v4

    if-lez v4, :cond_10

    goto/16 :goto_5

    :cond_7
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v6, v2, v4

    if-ltz v6, :cond_8

    add-float v6, v4, v9

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_8

    const/4 v4, 0x7

    goto/16 :goto_6

    :cond_8
    neg-float v6, v4

    cmpg-float v20, v2, v6

    if-gtz v20, :cond_9

    sub-float v20, v6, v9

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_9

    const/16 v4, 0x8

    goto/16 :goto_6

    :cond_9
    sub-float v6, v6, v18

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_11

    add-float v4, v4, v18

    cmpl-float v4, v2, v4

    if-lez v4, :cond_10

    goto :goto_5

    :cond_a
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v6, v2, v4

    if-ltz v6, :cond_b

    add-float v6, v4, v9

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_b

    const/4 v4, 0x4

    goto :goto_6

    :cond_b
    neg-float v6, v4

    mul-float/2addr v6, v5

    cmpg-float v20, v2, v6

    if-gtz v20, :cond_c

    sub-float v20, v6, v9

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_c

    move v4, v15

    goto :goto_6

    :cond_c
    sub-float v6, v6, v18

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_11

    mul-float/2addr v4, v5

    add-float v4, v4, v18

    cmpl-float v4, v2, v4

    if-lez v4, :cond_10

    goto :goto_5

    :cond_d
    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    cmpl-float v6, v2, v4

    if-ltz v6, :cond_e

    add-float v6, v4, v9

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_e

    move v4, v14

    goto :goto_6

    :cond_e
    neg-float v6, v4

    cmpg-float v20, v2, v6

    if-gtz v20, :cond_f

    sub-float v20, v6, v9

    cmpl-float v20, v2, v20

    if-ltz v20, :cond_f

    move v4, v11

    goto :goto_6

    :cond_f
    sub-float v6, v6, v18

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_11

    add-float v4, v4, v18

    cmpl-float v4, v2, v4

    if-lez v4, :cond_10

    goto :goto_5

    :cond_10
    :goto_4
    move v4, v13

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v4, 0x6

    :goto_6
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    add-float v18, v6, v8

    cmpl-float v18, v1, v18

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    if-gtz v18, :cond_12

    neg-float v6, v6

    sub-float/2addr v6, v8

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_12

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    add-float v18, v6, v8

    cmpl-float v18, v3, v18

    if-gtz v18, :cond_12

    neg-float v6, v6

    sub-float/2addr v6, v8

    cmpg-float v3, v3, v6

    if-gez v3, :cond_13

    :cond_12
    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object v4, v7

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-virtual {v9, v13}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const/4 v4, 0x6

    :cond_13
    const/4 v3, 0x0

    const/4 v6, -0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_14

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v4, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v4, v14, :cond_1a

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    goto :goto_9

    :pswitch_2
    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto/16 :goto_c

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_15

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v4, :cond_15

    :goto_7
    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    goto :goto_a

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v4, v14, :cond_1a

    goto :goto_9

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_16

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v4, :cond_16

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    goto :goto_8

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v4, v14, :cond_1a

    goto :goto_b

    :pswitch_5
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    if-eqz v4, :cond_17

    goto :goto_c

    :cond_17
    iput v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_c

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_18

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v4, :cond_18

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    :goto_8
    iput v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_c

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v4, v14, :cond_1a

    :goto_9
    iput v13, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_c

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v4, :cond_19

    iput v14, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    :goto_a
    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    goto :goto_c

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->ifAllowtoTakePicture()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-ne v4, v14, :cond_1a

    :goto_b
    const/4 v4, 0x4

    iput v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    :cond_1a
    :goto_c
    float-to-int v2, v2

    float-to-int v1, v1

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    const/4 v6, 0x0

    if-nez v4, :cond_1b

    :goto_d
    move-object/from16 v26, v7

    move-object v2, v9

    move v4, v14

    goto/16 :goto_1b

    :cond_1b
    iget-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mIsCapturing:Z

    if-nez v4, :cond_1c

    goto :goto_d

    :cond_1c
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    if-nez v4, :cond_1d

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    :cond_1d
    move-object v4, v7

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v18

    if-eqz v18, :cond_1e

    invoke-static {v14, v6}, Lcom/motorola/camera/panorama/PanoHelper;->getSelfiePreviewSize(Z[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v18

    move-object/from16 v6, v18

    goto :goto_e

    :cond_1e
    sget-object v18, Lcom/motorola/camera/panorama/PanoHelper;->sSurfaceSize:Landroid/util/Size;

    new-instance v6, Landroid/util/Size;

    const/16 v8, 0x140

    const/16 v15, 0xf0

    invoke-direct {v6, v8, v15}, Landroid/util/Size;-><init>(II)V

    :goto_e
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v15

    invoke-static {v8, v15}, Lcom/motorola/camera/panorama/PanoHelper;->getWideSelfieStitchingRatio(IZ)F

    move-result v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v8, v8, v21

    add-float/2addr v8, v5

    mul-float/2addr v15, v8

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v13, v10, :cond_1f

    if-ne v13, v12, :cond_20

    :cond_1f
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v15, v5, v8

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    :cond_20
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eq v6, v10, :cond_22

    if-ne v6, v12, :cond_21

    goto :goto_f

    :cond_21
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    goto :goto_10

    :cond_22
    :goto_f
    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    :goto_10
    mul-float/2addr v15, v8

    div-float/2addr v15, v5

    iput v15, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    sub-float v5, v15, v13

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY_whenOKtoShoot:F

    mul-float v8, v8, v21

    div-float/2addr v5, v8

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mStartPoint:Landroid/graphics/Point;

    iget v8, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v2, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    mul-float/2addr v1, v8

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    if-ne v6, v10, :cond_23

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliCamera()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_11

    :cond_23
    if-ne v6, v12, :cond_25

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliCamera()Z

    move-result v4

    if-nez v4, :cond_24

    :goto_11
    neg-float v4, v2

    goto :goto_12

    :cond_24
    move v4, v2

    :goto_12
    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v12, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v13, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v15, 0x14

    new-array v15, v15, [F

    const/4 v10, 0x4

    int-to-float v8, v10

    mul-float/2addr v8, v4

    div-float/2addr v8, v6

    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    neg-double v3, v3

    move-object/from16 v24, v15

    float-to-double v14, v6

    move-object v6, v9

    int-to-double v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v25

    div-double v14, v14, v25

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v25, v25, v14

    move/from16 v27, v12

    float-to-double v11, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v28, v28, v11

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v32, v11

    sub-double v10, v25, v28

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v25, v25, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v32

    div-double v28, v28, v30

    add-double v28, v28, v25

    sub-double v12, v28, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v28, v28, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v32

    div-double v34, v34, v30

    move-object/from16 v36, v6

    move-object/from16 v26, v7

    add-double v6, v34, v28

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v28, v28, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, v32

    div-double v3, v3, v30

    sub-double v28, v28, v3

    sub-double v3, v28, v14

    move/from16 v28, v1

    move/from16 v1, v27

    move/from16 v27, v2

    neg-float v2, v1

    div-float v2, v2, v21

    const/16 v23, 0x0

    aput v2, v24, v23

    double-to-float v11, v10

    const/4 v10, 0x1

    aput v11, v24, v10

    double-to-float v12, v12

    const/4 v10, 0x2

    aput v12, v24, v10

    const/4 v13, 0x0

    const/16 v22, 0x3

    aput v13, v24, v22

    const/16 v17, 0x4

    aput v13, v24, v17

    const/16 v18, 0x5

    aput v2, v24, v18

    double-to-float v2, v6

    const/4 v6, 0x6

    aput v2, v24, v6

    double-to-float v3, v3

    const/4 v4, 0x7

    aput v3, v24, v4

    const/16 v4, 0x8

    aput v13, v24, v4

    const/16 v4, 0x9

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v24, v4

    div-float v1, v1, v21

    const/16 v7, 0xa

    aput v1, v24, v7

    const/16 v7, 0xb

    aput v11, v24, v7

    const/16 v7, 0xc

    aput v12, v24, v7

    const/16 v7, 0xd

    aput v6, v24, v7

    const/16 v7, 0xe

    aput v13, v24, v7

    const/16 v7, 0xf

    aput v1, v24, v7

    const/16 v1, 0x10

    aput v2, v24, v1

    const/16 v1, 0x11

    aput v3, v24, v1

    const/16 v1, 0x12

    aput v6, v24, v1

    const/16 v1, 0x13

    aput v6, v24, v1

    move-object/from16 v1, v24

    invoke-virtual {v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setVerticesData([F)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->setEnabled(Z)V

    mul-double v2, v14, v30

    div-double v11, v32, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v32

    div-double v2, v2, v30

    add-double/2addr v2, v5

    sub-double/2addr v2, v14

    double-to-float v2, v2

    float-to-double v2, v2

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v8, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v9, 0x40800000    # 4.0f

    mul-float v11, v27, v9

    div-float/2addr v11, v6

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    neg-double v11, v11

    float-to-double v13, v6

    move-wide/from16 v32, v2

    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    div-double/2addr v13, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v13

    float-to-double v8, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v8

    div-double v34, v34, v30

    sub-double v1, v1, v34

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    mul-double v37, v37, v8

    div-double v37, v37, v30

    add-double v37, v37, v34

    move-object v6, v5

    sub-double v4, v37, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v34, v34, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v37

    mul-double v37, v37, v8

    div-double v37, v37, v30

    move-wide/from16 v39, v4

    add-double v3, v37, v34

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v34, v34, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v8

    div-double v11, v11, v30

    sub-double v34, v34, v11

    sub-double v11, v34, v13

    neg-float v5, v7

    div-float v5, v5, v21

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mVertices:[F

    const/4 v8, 0x0

    aput v5, v6, v8

    double-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v6, v2

    move-wide/from16 v13, v39

    double-to-float v2, v13

    const/4 v9, 0x2

    aput v2, v6, v9

    const/4 v9, 0x3

    aput v5, v6, v9

    double-to-float v3, v3

    const/4 v4, 0x4

    aput v3, v6, v4

    double-to-float v4, v11

    const/4 v5, 0x5

    aput v4, v6, v5

    div-float v7, v7, v21

    const/4 v5, 0x6

    aput v7, v6, v5

    const/4 v5, 0x7

    aput v3, v6, v5

    const/16 v3, 0x8

    aput v4, v6, v3

    const/16 v3, 0x9

    aput v7, v6, v3

    const/16 v3, 0xa

    aput v1, v6, v3

    const/16 v1, 0xb

    aput v2, v6, v1

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move/from16 v3, v28

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    iput-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v2, v3, v5

    iput-boolean v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    move/from16 v4, v27

    move-wide/from16 v2, v32

    const/4 v8, 0x1

    goto :goto_13

    :cond_25
    move v3, v1

    move/from16 v27, v2

    move-object/from16 v26, v7

    move-object/from16 v36, v9

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    move/from16 v4, v27

    invoke-virtual {v5, v4, v15, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->set3dTranslationX(FFFF)D

    move-result-wide v1

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mDisplayWidth:F

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewWidth:F

    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSmallPreviewHeight:F

    invoke-virtual {v5, v4, v6, v7, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->set3dTranslationX(FFFF)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v7, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v8, 0x1

    aput-object v6, v7, v8

    iput-boolean v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;->mUpdateProjectMatrix:Z

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v3, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mTranslation:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aput-object v6, v3, v8

    iput-boolean v8, v5, Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;->mUpdateProjectMatrix:Z

    move-wide v2, v1

    :goto_13
    const-wide/16 v5, 0x0

    cmpl-double v1, v2, v5

    if-lez v1, :cond_26

    double-to-int v1, v2

    add-int/2addr v1, v8

    int-to-double v1, v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    neg-double v5, v1

    double-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v3, v6, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v3, v6, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    add-double/2addr v1, v5

    div-double/2addr v1, v5

    double-to-float v1, v1

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v2, v1, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v2, v1, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    goto :goto_14

    :cond_26
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mCurvedBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CurvedBitmapTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    :cond_27
    :goto_14
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v1, :cond_2e

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v2, :cond_2e

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v4, v2

    if-lez v1, :cond_2a

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateFlickerGuide()V

    :cond_28
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_29

    goto :goto_16

    :cond_29
    :goto_15
    move-object/from16 v2, v36

    goto :goto_17

    :cond_2a
    const/high16 v1, -0x3ee00000    # -10.0f

    cmpg-float v1, v4, v1

    if-gez v1, :cond_2d

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->animateFlickerGuide()V

    :cond_2b
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2c

    goto :goto_15

    :cond_2c
    :goto_16
    move-object/from16 v2, v36

    goto :goto_18

    :cond_2d
    move-object/from16 v2, v36

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    if-nez v3, :cond_32

    new-instance v11, Ljava/util/Timer;

    invoke-direct {v11}, Ljava/util/Timer;-><init>()V

    iput-object v11, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mSetGuideResourceTimer:Ljava/util/Timer;

    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;

    invoke-direct {v12, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x1f4

    invoke-virtual/range {v11 .. v16}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mTimerIsRunning:Z

    goto :goto_1a

    :cond_2e
    move-object/from16 v2, v36

    const/4 v3, 0x1

    if-nez v1, :cond_2f

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-ne v4, v3, :cond_2f

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_30

    goto :goto_18

    :cond_2f
    const/16 v4, 0x5a

    if-ne v1, v3, :cond_32

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-nez v1, :cond_32

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-ne v1, v4, :cond_31

    :cond_30
    :goto_17
    const/4 v13, 0x3

    goto :goto_19

    :cond_31
    :goto_18
    const/4 v13, 0x2

    :goto_19
    invoke-virtual {v0, v13, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    :cond_32
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getThumbnailCenterY()F

    move-result v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v4

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideBackgroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterX()F

    move-result v5

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->getGuideCenterY(F)F

    move-result v1

    invoke-virtual {v3, v5, v1, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mGuideForegroundTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_1b
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    if-eq v1, v5, :cond_37

    if-eqz v1, :cond_37

    if-ne v1, v4, :cond_33

    goto :goto_1c

    :cond_33
    const/4 v4, -0x1

    if-ne v1, v4, :cond_36

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    if-nez v1, :cond_34

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    if-eqz v1, :cond_3b

    :cond_34
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mRightImageAlreadyShotFlag:I

    goto/16 :goto_1f

    :cond_35
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mLeftImageAlreadyShotFlag:I

    goto :goto_1f

    :cond_36
    const/4 v3, 0x3

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3b

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v7, v26

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1f

    :cond_37
    :goto_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "WIDE_SELFIE_ROTATION_X"

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "WIDE_SELFIE_ROTATION_Y"

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateY:F

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "PANO_SELFIE_IMAGE_ID"

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    if-eqz v2, :cond_38

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateX_whenFirstShoot:F

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ:F

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mAccumulateZ_whenFirstShoot:F

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    move-object/from16 v7, v26

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iput-boolean v4, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mFirstShoot:Z

    goto :goto_1f

    :cond_38
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    if-eqz v2, :cond_3a

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_39

    goto :goto_1d

    :cond_39
    const/16 v2, 0x64

    goto :goto_1e

    :cond_3a
    :goto_1d
    const/16 v2, 0xc8

    :goto_1e
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    int-to-long v1, v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3b
    :goto_1f
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mPreImageIdNeedtoShoot:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mImageIdNeedtoShoot:I

    :cond_3c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
