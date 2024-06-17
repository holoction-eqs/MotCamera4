.class public Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;
.super Lcom/motorola/camera/ui/layoutmanager/LayoutManager;
.source "SourceFile"


# static fields
.field public static final sDefaultDensityValue:I


# instance fields
.field public mCameraCutoutRect:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "config_default_cli_display_density"

    const-string v3, "integer"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->sDefaultDensityValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget v0, v0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    invoke-static {v0}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->updateDisplayCutout(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getCaptureBarGuideLine()F
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    iget-object v1, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v1, p0

    sub-float p0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float p0, v0, p0

    :goto_0
    const/high16 v0, 0x41c00000    # 24.0f

    :goto_1
    add-float/2addr p0, v0

    return p0

    :cond_2
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result p0

    add-float/2addr p0, v0

    div-float/2addr p0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getTsbMarginHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarHeight()F

    move-result p0

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    :goto_2
    const/high16 v0, 0x42400000    # 48.0f

    goto :goto_1
.end method

.method public final getFilterToggleBarOffset()F
    .locals 0

    const/high16 p0, 0x41400000    # 12.0f

    return p0
.end method

.method public final getIndicatorBarHeight()F
    .locals 0

    const/high16 p0, 0x42400000    # 48.0f

    return p0
.end method

.method public final getIndicatorBarMarginHeight()F
    .locals 0

    const/high16 p0, 0x41c00000    # 24.0f

    return p0
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

    int-to-float p0, p0

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    div-float/2addr p0, v1

    iget v1, v0, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3cf5c28f    # 0.03f

    sub-float v2, p0, v0

    cmpg-float v2, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_4

    div-float v2, v1, p0

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    sub-float v0, v1, v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_5

    div-float v0, p0, v1

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    sget-object v4, Lcom/motorola/camera/PreviewSize$AspectRatio;->SQUARE:Lcom/motorola/camera/PreviewSize$AspectRatio;

    invoke-static {p2, v4}, Lcom/motorola/camera/PreviewSize;->isTrueAspectRatio(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize$AspectRatio;)Z

    move-result p2

    if-eqz p2, :cond_6

    div-float v0, p0, v1

    move v2, v3

    :cond_6
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget p0, p0, Lcom/motorola/camera/CameraApp;->mDisplayRotation:I

    invoke-static {p0}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result p0

    new-instance p2, Lcom/motorola/camera/CameraKpi;

    const/16 v1, 0x10

    invoke-direct {p2, v1}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    int-to-float p0, p0

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iput-object v1, p2, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, p1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float p1, p1

    div-float/2addr p1, v4

    mul-float/2addr p1, v2

    invoke-direct {p0, v1, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iput-object p0, p2, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    return-object p2
.end method

.method public final getRestrictedViewSize()Lcom/motorola/camera/PreviewSize;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    iget v1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mWidthDp:F

    iget v2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    mul-float/2addr v3, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v3, p0

    float-to-int p0, v3

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoRecordingTopMargin()F
    .locals 0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/CameraApp;->mPreviewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    return p0
.end method

.method public final getYOffsetIfNotWideScreen(Lcom/motorola/camera/PreviewSize;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isLargerDisplay()Z
    .locals 1

    iget p0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    sget v0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->sDefaultDensityValue:I

    if-eqz v0, :cond_0

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldTranslateForCutout(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final updateDisplayCutout(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v0, 0x21

    invoke-static {v0}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {p1}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object p1

    invoke-virtual {p1}, Lmotorola/core_services/cli/CLIManager;->getCliDisplayCutout()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m()V

    invoke-static {}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m()Landroid/view/DisplayCutout$Builder;

    move-result-object p1

    const/16 v0, 0xb4

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p2, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout$Builder;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v1, v1, p2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/layoutmanager/CliLayoutManager;->mCameraCutoutRect:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/DisplayCutout$Builder;Landroid/graphics/Rect;)V

    :goto_0
    invoke-static {p1, p2}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout$Builder;Landroid/graphics/Insets;)V

    invoke-static {p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout$Builder;)Landroid/view/DisplayCutout;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayCutout:Landroid/view/DisplayCutout;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error trying to get CLI display cutout: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateInsets(Landroid/app/Activity;Landroid/view/WindowInsets;)Z
    .locals 0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    const/4 p0, 0x1

    return p0
.end method
