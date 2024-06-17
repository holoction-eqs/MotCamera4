.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

.field public final mCallback:Lcom/google/common/base/Splitter$1;

.field public mCurrentValue:I

.field public final mDensity:F

.field public final mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

.field public final mLevelCount:I

.field public final mRange:Landroid/util/Range;

.field public mTouchAcc:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/google/common/base/Splitter$1;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/google/common/base/Splitter$1;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    const v1, 0x7f0801cf

    invoke-direct {p2, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mFixedSize:Z

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    iput p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    iget-object v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget p1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleWidth:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    iget v2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->mScaleHeight:F

    mul-float/2addr v2, v1

    invoke-virtual {p2, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mLevelCount:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    return-void
.end method


# virtual methods
.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x42400000    # 48.0f

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    mul-float/2addr v2, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getRect()Lcom/google/common/base/Splitter$1;
    .locals 4

    new-instance v0, Lcom/google/common/base/Splitter$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41c00000    # 24.0f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter$1;->inset(FF)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget-object v2, v0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/RectF;

    invoke-virtual {v2, v1, p0}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method

.method public final loadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->loadTexture()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    return-void
.end method

.method public final onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 2

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p1, p3, Landroid/graphics/PointF;->y:F

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mLevelCount:I

    int-to-float p3, p3

    mul-float/2addr p1, p3

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    iget-object p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    int-to-float p1, p1

    iget p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    add-float/2addr p1, p3

    float-to-double v0, p1

    cmpl-float p1, p3, p2

    if-lez p1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_0
    double-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    const/high16 p2, 0x3f800000    # 1.0f

    rem-float/2addr p1, p2

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/google/common/base/Splitter$1;

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    iget-object p1, p1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "VALUE"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "ENABLE"

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 p4, 0x0

    invoke-direct {p0, p3, p2, p4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDraw([F[F)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    return-void
.end method

.method public final onTouchDown(JLandroid/graphics/PointF;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mTouchAcc:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/google/common/base/Splitter$1;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyActiveBarAnimation(Z)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    iput-boolean p2, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    iget-boolean p0, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mSensorSupported:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->resetSensorValues()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTouchUp$1()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setProgress(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCallback:Lcom/google/common/base/Splitter$1;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    iget-object v1, v0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$RoiCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->applyActiveBarAnimation(Z)V

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "VALUE"

    invoke-virtual {v0, v3, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "ENABLE"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v3, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v3, v4, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->startRoiTiming(Z)V

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchingBar:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

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

.method public final setProgress(I)V
    .locals 9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-virtual {v1, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    if-ltz p1, :cond_0

    const p1, 0x7f0801cf

    goto :goto_0

    :cond_0
    const p1, 0x7f0801d0

    :goto_0
    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->setResource(I)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->mTextureLoaded:Z

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mWidth:F

    add-float v4, v2, v0

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mHeight:F

    add-float/2addr v5, v0

    float-to-int v6, v4

    float-to-int v7, v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mHeight:F

    invoke-direct {v4, v3, v3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    div-float/2addr v0, v1

    invoke-virtual {v4, v0, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mDensity:F

    mul-float/2addr v0, v1

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v1

    iget-object v3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mRange:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mCurrentValue:I

    int-to-float p1, p1

    sub-float/2addr v5, p1

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v5, p1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, v5

    div-float/2addr p1, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v3, v4, Landroid/graphics/RectF;->top:F

    sub-float v5, p1, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v2

    add-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f0603bd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v7, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v7, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v3, 0x7f060409

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v7, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;->createRectPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v7, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, v6, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final unloadTexture()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mIconTex:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;->unloadTexture()V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->mBarTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture$ProgressBarTexture;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->unloadTexture()V

    :cond_1
    return-void
.end method
