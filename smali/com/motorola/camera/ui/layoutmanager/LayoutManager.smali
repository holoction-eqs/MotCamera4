.class public abstract Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;


# instance fields
.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field public mDisplayDensity:F

.field public mHeightDp:F

.field public mInsets:Landroid/graphics/Insets;

.field public mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

.field public mSurfaceDensity:F

.field public mWidthDp:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public static getDefaultPreviewAspect()F
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const v1, 0x3faaaaab

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->NON_STANDARD_PREVIEW_ASPECT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method


# virtual methods
.method public getCaptureBarHeight()F
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->uiBottomAlign:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v3, 0x1

    const/high16 v4, 0x42600000    # 56.0f

    if-eq v0, v3, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float p0, v0, p0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result p0

    sub-float/2addr v0, p0

    sub-float p0, v0, v4

    :goto_1
    return p0
.end method

.method public getControlBarGuideline()F
    .locals 0

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    return p0
.end method

.method public final getDisplaySize()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const v1, 0x44834000    # 1050.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    const-string p0, "small"

    return-object p0

    :cond_1
    const/high16 v2, 0x44610000    # 900.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    const-string p0, "default"

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLargerDisplay()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "larger"

    return-object p0

    :cond_4
    const-string p0, "large"

    return-object p0
.end method

.method public getDualCapturePIPVerticalGuideline()F
    .locals 3

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const v2, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p0, v2

    add-float/2addr p0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070143

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final getDualCaptureSplitVerticalGuideline()F
    .locals 2

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070144

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07019c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getFilterToggleBarOffset()F
    .locals 1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070438

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x42880000    # 68.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method public final getIndicatorBarAndTopMargin()F
    .locals 1

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public final getIndicatorBarBottomPosition(Lcom/motorola/camera/PreviewSize;)F
    .locals 3

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr v2, v1

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v2, v1

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    div-float/2addr v1, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, p0

    sub-float/2addr p1, v1

    return p1
.end method

.method public getIndicatorBarHeight()F
    .locals 0

    const/high16 p0, 0x42a00000    # 80.0f

    return p0
.end method

.method public getModeCarouselY()F
    .locals 4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->carouselBottom:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    iget v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    sub-float/2addr v3, p0

    const/high16 p0, 0x41c00000    # 24.0f

    sub-float/2addr v3, p0

    cmpg-float p0, v2, v3

    const/high16 v2, 0x41e00000    # 28.0f

    if-gez p0, :cond_0

    add-float/2addr v1, v2

    return v1

    :cond_0
    add-float/2addr v0, v2

    return v0
.end method

.method public getModeSliderY()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getNonStandardPreviewOffset()F
    .locals 2

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v0

    const v1, 0x3faaaaab

    sub-float/2addr v0, v1

    mul-float/2addr v0, p0

    const p0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, p0

    return v0
.end method

.method public getPreviewFitTransform(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/CameraKpi;
    .locals 5

    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    if-eqz p0, :cond_2

    iget v1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_2

    :cond_2
    iget v1, p2, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_2
    if-eqz p0, :cond_3

    iget p0, p2, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_3

    :cond_3
    iget p0, p2, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_3
    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget p0, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p2, p0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, p1

    div-float/2addr p2, v1

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3cf5c28f    # 0.03f

    sub-float v2, p2, v0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_4

    div-float v2, v1, p2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sub-float v0, v1, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_5

    div-float/2addr p2, v1

    goto :goto_5

    :cond_5
    move p2, v3

    :goto_5
    new-instance v0, Lcom/motorola/camera/CameraKpi;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iput-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    int-to-float p1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    mul-float/2addr p1, p2

    int-to-float p0, p0

    div-float/2addr p0, v4

    mul-float/2addr p0, v2

    invoke-direct {v1, p1, p0, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object v1, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPreviewTopMarginSize$enumunboxing$(I)F
    .locals 1

    if-eqz p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result p0

    add-float/2addr p0, p1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result p0

    :goto_0
    return p0

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getToggleBarGuideLine()F
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v1

    const v2, 0x3faaaaab

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout20_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout205_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const v2, 0x443b8000    # 750.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    const/high16 v0, 0x42600000    # 56.0f

    sub-float/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result p0

    add-float/2addr p0, v1

    return p0
.end method

.method public getTrait$enumunboxing$()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTsbMarginHeight()F
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v0, p0

    return v0
.end method

.method public getVideoRecordingTopMargin()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getYOffsetIfNotWideScreen()F
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 1
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 2
    check-cast v1, Landroid/util/Size;

    invoke-direct {v0, v1}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F

    move-result p0

    return p0
.end method

.method public getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget v2, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    .line 4
    new-instance v3, Lcom/motorola/camera/PreviewSize;

    iget v4, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/PreviewSize;->getAspectRatio()F

    move-result v5

    const v6, 0x3cf5c28f    # 0.03f

    sub-float v7, v4, v6

    cmpg-float v7, v5, v7

    if-gez v7, :cond_0

    div-float v4, v5, v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    iget v7, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    new-instance v9, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v9}, Lcom/motorola/camera/PreviewSize;-><init>()V

    .line 5
    iget v10, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iput v10, v9, Lcom/motorola/camera/PreviewSize;->width:I

    iget v10, v1, Lcom/motorola/camera/PreviewSize;->height:I

    iput v10, v9, Lcom/motorola/camera/PreviewSize;->height:I

    .line 6
    sget-object v10, Lcom/motorola/camera/PreviewSize$AspectRatio;->HD_WIDESCREEN:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v10}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v11, :cond_7

    .line 7
    iget-object v11, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v11, v11, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->previewCropSize:F

    cmpl-float v15, v11, v13

    if-lez v15, :cond_1

    move v15, v12

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_7

    .line 8
    iget v7, v9, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    div-float/2addr v11, v14

    mul-float/2addr v11, v2

    add-float/2addr v11, v7

    float-to-int v7, v11

    iput v7, v9, Lcom/motorola/camera/PreviewSize;->height:I

    .line 9
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v11, Lcom/motorola/camera/PreviewSize;

    const/16 v15, 0x10e

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_3

    if-ne v7, v15, :cond_2

    goto :goto_2

    :cond_2
    iget v13, v9, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_3

    :cond_3
    :goto_2
    iget v13, v9, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_3
    if-eq v7, v8, :cond_5

    if-ne v7, v15, :cond_4

    goto :goto_4

    :cond_4
    iget v7, v9, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_5

    :cond_5
    :goto_4
    iget v7, v9, Lcom/motorola/camera/PreviewSize;->width:I

    :goto_5
    invoke-direct {v11, v13, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    iget v7, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v7, v7

    iget v8, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v8, v8

    div-float v8, v7, v8

    iget v9, v11, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v9, v9

    iget v11, v11, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v11, v11

    div-float/2addr v9, v11

    sub-float v6, v8, v6

    cmpg-float v6, v9, v6

    if-gez v6, :cond_6

    div-float v8, v9, v8

    goto :goto_6

    :cond_6
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_6
    mul-float/2addr v7, v8

    .line 10
    :cond_7
    iget v6, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v6, v6

    sub-float/2addr v6, v7

    div-float/2addr v6, v14

    invoke-interface/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v9

    add-float/2addr v9, v8

    mul-float/2addr v9, v2

    sub-float/2addr v6, v9

    .line 11
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 12
    iget-boolean v8, v8, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v8, :cond_8

    const/4 v13, 0x0

    goto/16 :goto_e

    .line 13
    :cond_8
    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v8}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 14
    iget-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 15
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    if-ne v1, v12, :cond_9

    goto/16 :goto_c

    :cond_9
    const/4 v4, 0x4

    if-ne v1, v4, :cond_14

    iget v1, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    sub-float v3, v1, v7

    neg-float v3, v3

    div-float/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v0

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x42880000    # 68.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    add-float v13, v2, v3

    goto/16 :goto_e

    :cond_a
    invoke-static {v1, v10}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_d

    .line 16
    iget-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    .line 17
    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    if-ne v1, v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    :goto_7
    move v13, v1

    goto :goto_8

    :cond_b
    if-ne v1, v12, :cond_c

    iget v1, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    div-float/2addr v1, v14

    goto :goto_7

    :cond_c
    move v13, v6

    :goto_8
    iget v1, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    div-float/2addr v1, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_15

    iget v1, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v7

    div-float/2addr v1, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    move v6, v13

    goto :goto_b

    :cond_d
    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v8}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v8, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE19P5V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v3, v8}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isEnableDebugPreviewSize()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_e

    iget v0, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr v0, v1

    goto :goto_9

    :cond_e
    iget v0, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    :goto_9
    neg-float v13, v0

    goto/16 :goto_e

    :cond_f
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->RECTANGLE21V9:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v4}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 18
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 19
    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    goto :goto_a

    :cond_10
    iget-object v1, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    div-int/2addr v1, v9

    :goto_a
    invoke-interface/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarHeight()F

    move-result v4

    add-float/2addr v4, v3

    mul-float/2addr v4, v2

    iget-object v0, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v14

    add-float/2addr v0, v4

    int-to-float v1, v1

    div-float/2addr v1, v14

    :goto_b
    sub-float/2addr v0, v1

    add-float v13, v0, v6

    goto :goto_e

    :cond_11
    invoke-static {v5}, Lkotlin/collections/ArraysUtilJVM;->isFullSizeAspectRatio(F)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_c
    iget v0, v3, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    div-float v13, v0, v14

    goto :goto_e

    :cond_12
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {v1, v4}, Lcom/motorola/camera/PreviewSize;->isAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDefaultPreviewAspect()F

    move-result v4

    mul-float/2addr v4, v1

    iget v1, v3, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    sub-float/2addr v4, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->isLayout22_9()Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, 0x42400000    # 48.0f

    mul-float v13, v2, v0

    goto :goto_d

    :cond_13
    const/4 v13, 0x0

    :goto_d
    add-float/2addr v4, v13

    sub-float v13, v6, v4

    goto :goto_e

    :cond_14
    move v13, v6

    :cond_15
    :goto_e
    float-to-double v0, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final hasTrait$enumunboxing$(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTrait$enumunboxing$()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLargerDisplay()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v0, 0x44480000    # 800.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLayout21_9()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout21_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLayout22_9()Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    sget-object v0, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout22_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldTranslateForCutout(Landroid/graphics/Rect;)Z
    .locals 1

    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p1, p1, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "w:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " heightDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " widthDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getDisplaySize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " indicatorBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getIndicatorBarMarginHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " insets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " previewTop43:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview43Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " previewTop169:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v1, v1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->preview169Align:I

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getPreviewTopMarginSize$enumunboxing$(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " captureBar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " tsbMargin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " surfaceDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " displayDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisplayCutout(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public updateInsets(Landroid/app/Activity;Landroid/view/WindowInsets;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateSurface(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;F)V
    .locals 8

    sget-object p1, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->Layout16_9:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    invoke-static {}, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->values()[Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    move-result-object v0

    array-length v1, v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p2}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v5

    iget v6, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v7, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_0

    move-object p1, v4

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget p1, p2, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float p1, p1

    div-float/2addr p1, p3

    iput p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iput p3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    return-void
.end method
